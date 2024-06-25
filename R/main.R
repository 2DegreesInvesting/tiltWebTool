main <- function() {
  ui <- page_navbar(
    title = "tilt",
    nav_panel("Disclaimer", card(lorem::ipsum_words(150))),
    nav_panel("Welcome", card(lorem::ipsum_words(80))),
    nav_panel("Dataset", card(layout_sidebar(
      sidebar = dataset_sidebar(),
      card(DT::DTOutput("dataset"))
    ))),
    nav_spacer(),
    nav_panel(title = "Dictionary", card(DT::DTOutput("dictionary")))
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
