main <- function() {
  ui <- page_navbar(
    title = "tilt",
    theme = theme(),
    selected = fmt_title(disclaimer_id()),
    nav_panel(title = fmt_title(welcome_id()), card(welcome_text())),
    nav_panel(title = fmt_title(dataset_id()), card(
      layout_sidebar(sidebar = side_bar(), card(DT::DTOutput(dataset_id())))
    )),
    nav_panel(title = fmt_title(dictionary_id()), card(DT::DTOutput(dictionary_id()))),
    nav_spacer(),
    nav_panel(title = fmt_title(disclaimer_id()), card(disclaimer_text())),
  )

  server <- function(input, output, session) {
    dataset <- reactive({
      req(input$indicator)
      req(input$level)
      req(input$weight)

      tilt_profile <- get(input$indicator, "package:tiltWebTool")
      unnest_level <- get(paste0("unnest_", input$level))

      out <- tilt_profile |>
        unnest_level() |>
        select(-matches(unselected_choices(input$weight)))
    })

    output$dataset <- DT::renderDT(dataset())

    output$download <- downloadHandler(
      filename = function() {
        time_stamp(paste0(input$indicator, "_", input$level, ".tsv"))
      },
      content = function(file) {
        readr::write_tsv(dataset(), file)
      }
    )

    output$dictionary <- DT::renderDT(dictionary())
  }

  shinyApp(ui, server)
}
