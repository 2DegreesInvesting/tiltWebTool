test_app <- function() {
  company_data <- arrow::open_dataset("/pushymatador/fake/company")

  ui <- fluidPage(
    numericInput(".n", "Rows to show", min = 1, max = 10, value = 5),
    tableOutput("table")
  )
  server <- function(input, output, session) {
    output$table <- renderTable({
      utils::head(company_data, input$.n)
    })
  }

  shinyApp(ui, server)
}
