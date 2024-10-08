#' Run the app
#'
#' @param user_name String. A `user_name` in inst/config/credentials.yml.
#' @param db Path to a parquet dataset. To understand the default, consider this:
#' * Called from /public/, `here::here("db")` yields /public/db/.
#' * Called from /private/, `here::here("db")` yields /private/db/.
#'
#' @return Called for its side effect.
#' @export
#'
#' @examplesIf interactive()
#' run_app("toy")
run_app <- function(user_name = "tilt", db = here::here("db")) {
  login_tab <- nav_panel(
    title = icon("lock"),
    value = "login",
    card(shinyauthr::loginUI("login")),
    card(tags$sub(app_version()))
  )

  welcome_tab <- nav_panel(
    fmt_title(welcome_id()),
    card(
      welcome_text("card1"),
      iframe(welcome_id())
    ),
    card(
      welcome_text("card2")
    ),
    card(
      welcome_text("card3")
    )
  )

  methodology_tab <- nav_panel(
    fmt_title(methodology_id()),
    card(
      text_card(methodology_id()),
      card(iframe(paste0(methodology_id(), 1))),
      card(iframe(paste0(methodology_id(), 2)))
    )
  )

  dataset_tab <- nav_panel(fmt_title(dataset_id()), card(layout_sidebar(
    sidebar = side_bar(), card(tableOutput(dataset_id()))
  )))

  dictionary_tab <- nav_panel(
    fmt_title(dictionary_id()),
    text_card(dictionary_id()),
    card(tableOutput(dictionary_id()))
  )

  guide_tab <- nav_panel(
    fmt_title(guide_id()),
    card(
      text_card(guide_id()),
      card(get_link(guide_id()))
    )
  )

  spacer_tab <- nav_spacer()

  ui <- page_navbar(
    id = "tabs",
    window_title = "tilt",
    title = get_logo(),
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
      data = user_base(user_name),
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
        nav_insert("tabs", welcome_tab, select = TRUE)
        nav_insert("tabs", dataset_tab)
        nav_insert("tabs", dictionary_tab)
        nav_insert("tabs", methodology_tab)
        nav_insert("tabs", guide_tab)
        nav_insert("tabs", spacer_tab)

        dataset <- reactive({
          # TODO: Remember to update these inputs in bindCache() below
          req(
            input$level,
            input$indicator,
            input$country,
            input$year,
            input$scenario,
            input$grouping_emission,
            input$name,
            input$n
          )

          id <- showNotification(
            "Big data, hold on ...",
            duration = NULL,
            closeButton = FALSE,
            type = "message"
          )
          on.exit(removeNotification(id), add = TRUE)

          path <- fs::path(db, input$level)

          out <- arrow::open_dataset(path) |>
            filter(grepl(input$name, .data$company_name))

          out <- switch(input$indicator,
            "emission" = pick_emission(out, input$level),
            "sector" = pick_sector(out, input$level),
            "transition_risk" = pick_transition_risk(out, input$level),
            stop("Unknown indicator: ", input$indicator)
          )

          out <- pick_choice(out, input, "country")
          out <- pick_choice(out, input, "year", .f = as.integer)
          out <- pick_choice(out, input, "scenario")
          out <- pick_choice(out, input, "grouping_emission")

          out <- out |>
            head(input$n) |>
            dplyr::collect() |>
            tibble::rowid_to_column(".")

          out
        }) |>
          bindCache(
            input$level,
            input$indicator,
            input$country,
            input$year,
            input$scenario,
            input$grouping_emission,
            input$name,
            input$n
          ) |>
          bindEvent(input$go)

        output$dataset <- renderTable(dataset())

        output$dictionary <- renderTable(dictionary())
      }
    })
  }

  shinyApp(ui, server)
}

# For conveniently launch the app on interactive user during development
toy <- function() {
  run_app("toy")
}
