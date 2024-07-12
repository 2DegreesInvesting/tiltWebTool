test_app <- function() {
  from <- function(parent) {
    sprintf("read_parquet('%s/**/*.parquet', hive_partitioning = true)", parent)
  }
  parent <- "/pushymatador/fake/company"
  con <- DBI::dbConnect(duckdb::duckdb(), dbdir = ":memory:")
  company_data <- dplyr::tbl(con, from = from(parent))

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
