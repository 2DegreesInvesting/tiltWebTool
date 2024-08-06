#' Run the app
#'
#' @param db Path to a parquet dataset. To understand the default, consider this:
#' * Called from /public/, `here::here("db")` yields /public/db/.
#' * Called from /private/, `here::here("db")` yields /private/db/.
#'
#' @return Called for its side effect.
#' @export
#'
#' @examplesIf interactive()
#' run_app()
run_app <- function(db = here::here("db")) {
  login_tab <- nav_panel(
    title = icon("lock"),
    value = "login",
    card(shinyauthr::loginUI("login")),
    card(tags$sub(app_version()))
  )

  disclaimer_tab <- nav_panel(fmt_title(disclaimer_id()), text_card(disclaimer_id()))
  welcome_tab <- nav_panel(fmt_title(welcome_id()), text_card(welcome_id()))
  dataset_tab <- nav_panel(fmt_title(dataset_id()), card(layout_sidebar(
    sidebar = side_bar(), card(tableOutput(dataset_id()))
  )))
  dictionary_tab <- nav_panel(fmt_title(dictionary_id()), card(tableOutput(dictionary_id())))
  spacer_tab <- nav_spacer()
  menu_tab <- nav_menu(
    title = "More",
    align = "right",
    nav_panel(fmt_title(methodology_id()), text_card(methodology_id())),
    nav_panel(fmt_title(video_id()), video_card())
  )

  ui <- page_navbar(
    id = "tabs",
    window_title = "tilt",
    title = logo(),
    theme = theme(),
    collapsible = TRUE,
    login_tab
  )

  server <- function(input, output, session) {
    insertUI(
      selector = ".navbar .container-fluid .navbar-collapse",
      ui = tags$ul(
        class = "nav navbar-nav navbar-right",
        tags$li(
          div(
            style = "padding: 10px; padding-top: 8px; padding-bottom: 0;",
            shinyauthr::logoutUI("logout")
          )
        )
      )
    )

    credentials <- shinyauthr::loginServer(
      id = "login",
      data = user_base(),
      user_col = "user",
      pwd_col = "pass",
      sodium_hashed = TRUE,
      reload_on_logout = TRUE,
      log_out = reactive(logout_init())
    )

    logout_init <- shinyauthr::logoutServer(
      id = "logout",
      active = reactive(credentials()$user_auth)
    )

    observeEvent(credentials()$user_auth, {
      if (credentials()$user_auth) {
        nav_remove("tabs", "login")
        nav_insert("tabs", disclaimer_tab, select = TRUE)
        nav_insert("tabs", welcome_tab)
        nav_insert("tabs", dataset_tab)
        nav_insert("tabs", dictionary_tab)
        nav_insert("tabs", spacer_tab)
        nav_insert("tabs", menu_tab)

        dataset <- reactive({
          req(input$level, input$name, input$n)

          id <- showNotification(
            "Big data, hold on ...",
            duration = NULL,
            closeButton = FALSE,
            type = "message"
          )
          on.exit(removeNotification(id), add = TRUE)

          path <- fs::path(db, input$level)
          out <- arrow::open_dataset(path) |>
            filter(grepl(input$name, .data$company_name)) |>
            filter(.data$country == input$country) |>
            head(input$n) |>
            dplyr::collect() |>
            tibble::rowid_to_column(".")

          out
        }) |>
          bindCache(input$level, input$name, input$n) |>
          bindEvent(input$go)

        output$dataset <- renderTable(dataset())

        output$dictionary <- renderTable(dictionary())
      }
    })
  }

  shinyApp(ui, server)
}
