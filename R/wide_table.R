wide_table <- function(data) {
  print(
    xtable::xtable(data),
    include.rownames = FALSE,
    tabular.environment = "tabular",
    floating = FALSE,
    sanitize.text.function = identity,
    add.to.row = list(
      pos = list(-1, nrow(data)),
      command = c(
        "\\setlength{\\tabcolsep}{3pt}\\resizebox{\\textwidth}{!}{\\begin{tabular}",
        "\\end{tabular}}"
      )
    )
  )
}
