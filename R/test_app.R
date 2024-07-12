test_app <- function() {
  from <- function(parent) {
    sprintf("read_parquet('%s/**/*.parquet', hive_partitioning = true)", parent)
  }
  company_data <- function(parent) {
    con <- DBI::dbConnect(duckdb::duckdb(), dbdir = ":memory:")
    dplyr::tbl(con, from = from(parent))
  }

  company_data <- company_data("/pushymatador/fake/company")

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
