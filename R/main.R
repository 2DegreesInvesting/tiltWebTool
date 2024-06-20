dictionary <- utils::read.csv(dictionary_url("csv"), colClasses = "character")

main <- function() {
  ui <- fluidPage(
    theme = theme_app(),
    fluidRow(
      tags$h1("Select inputs"),
      column(4, selectChoices("indicator")),
      column(4, selectChoices("level")),
      column(4, selectChoices("weight", "(only at product level)")),
    ),
    fluidRow(
      tags$h1("Filtered data"),
      downloadButton("download", "Download .tsv"),
      DT::DTOutput("dataset")
    ),
    fluidRow(
      tags$h1("Data dictionary"),
      DT::DTOutput("dictionary")
    ),
    fluidRow(
      tags$h1("Plot"),
      plotOutput("plot")
    ),
    fluidRow(
      tags$sub(paste0("tiltWebTool-v", packageVersion("tiltWebTool")))
    )
  )

  server <- function(input, output, session) {
    bslib::bs_themer()

    # TODO extract as function
    dataset <- reactive({
      req(input$indicator)
      req(input$level)
      req(input$weight)

      # TODO Extract function
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

    output$dictionary <- DT::renderDT(dictionary)

    # TODO: Refactor
    # TODO: Add react to input$benchmark
    output$plot <- renderPlot({
      req(input$indicator == "emissions", input$level == "product")

      # TODO: input$benchmarks
      proportion <- reactive({
        summary_of_by(dataset(), "emission_profile", by = "benchmark")
      })
      barplot_of_by(proportion(), "emission_profile", by = "benchmark")
    })
  }

  shinyApp(ui, server)
}
