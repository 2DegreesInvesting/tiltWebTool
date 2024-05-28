main <- function() {
  # TODO: Move elsewhere
  unselected_choices <- function(choice) {
    grep(choice, weight_choices(), invert = TRUE, value = TRUE)
  }

  weight_choices <- function() {
    c("equal_weight", "best_case", "worst_case")
  }


  ui <- fluidPage(
    fluidRow(
      tags$h1("Select inputs"),
      # TODO: Move details elsewhere
      column(4, selectInput("indicator", "Indicator", choices = c("emissions", "sector"))),
      column(4, selectInput("level", "Level", choices = c("product", "company"))),
      column(4, selectInput("weight", "Weight", choices = weight_choices()))
    ),
    fluidRow(
      tags$h1("Filtered data"),
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

    output$dictionary <- renderDataTable(dictionary())
  }

  shinyApp(ui, server)
}
