main <- function() {
  ui <- fluidPage(
    fluidRow(
      column(4, selectInput("indicator", "Indicator", choices = c("emissions", "sector"))),
      column(4, selectInput("level", "Level", choices = c("product", "company"))),
      column(4, selectInput("weight", "Weight", choices = c("equal", "best_case", "worst_case")))
    )
  )

  server <- function(input, output, session) {

  }

  shinyApp(ui, server)
}
