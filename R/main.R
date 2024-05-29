main <- function() {
  ui <- fluidPage(
    fluidRow(
      tags$h1("Select inputs"),
      column(4, selectChoices("indicator")),
      column(4, selectChoices("level")),
      column(4, selectChoices("weight"))
    ),
    fluidRow(
      tags$h1("Filtered data"),
      column(4, downloadButton("download", "Download .tsv")),
      column(12, DT::DTOutput("dataset")),
    ),
    fluidRow(
      tags$h1("Data dictionary"),
      column(12, DT::DTOutput("dictionary")),
    )
  )

  server <- function(input, output, session) {
    # TODO extract as function
    dataset <- reactive({
      req(input$indicator, input$level, input$weight)

      # TODO Extract function
      tilt_profile <- get(input$indicator, "package:tiltWebTool")
      unnest_level <- get(paste0("unnest_", input$level))

      tilt_profile |>
        unnest_level() |>
        select(-matches(unselected_choices(input$weight)))
    })

    output$dataset <- renderDataTable(dataset())

    output$download <- downloadHandler(
      filename = function() {
        time_stamp(paste0(input$indicator, "_", input$level, ".tsv"))
      },
      content = function(file) {
        vroom::vroom_write(dataset(), file)
      }
    )

    output$dictionary <- renderDataTable(dictionary())
  }

  shinyApp(ui, server)
}
