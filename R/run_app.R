dictionary <- function() utils::read.csv(dictionary_url("csv"), colClasses = "character")

run_app <- function() {
  library(shiny)
  library(bslib)


  ui <- page_navbar(
    title = "tilt",
    nav_panel("Disclaimer", card(lipsum(5, 3))),
    nav_panel("Welcome to the tilt webtool", card(lipsum(2, 3))),
    nav_panel(
      "Data",
      card(layout_sidebar(
        sidebar = tilt_sidebar(),
        "table"
      ))
    ),
    nav_spacer(),
    nav_panel(
      "Dictionary",
      card(DT::DTOutput("dictionary"))
    )
  )

  shinyApp(ui, function(input, output) {
    output$dictionary <- DT::renderDT(dictionary)
  })

}

lipsum <- function(p, s) lorem::ipsum(paragraphs = p, sentences = s)

tilt_sidebar <- function() {
  bslib::sidebar(
    title = "Controls",
    selectChoices("indicator"),
    selectChoices("level"),
    selectChoices("weight", "(product level)"),
    downloadButton("download", "Download .tsv"),
    tags$sub(paste0("tiltWebTool-v", packageVersion("tiltWebTool")))
  )
}

