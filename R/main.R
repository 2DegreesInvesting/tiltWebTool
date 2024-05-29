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
      column(12, DT::DTOutput("dataset"))
    ),
    fluidRow(
      tags$h1("Dictionary"),
    # https://shiny.posit.co/r/articles/build/tag-glossary/
      shiny::tags$iframe(
        # seamless = NA,
        # width=600,
        # height=500,
        "https://docs.google.com/spreadsheets/d/e/2PACX-1vSpeL37_DinYYKaQNKWdjL0oKU_VrEKMDBN1dBfBpO6AgSyHLTt8WiiXFojcbPclsPTE0VliDWvRKxh/pubhtml?widget=true&amp;headers=false"
      )
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
  }

  shinyApp(ui, server)
}
