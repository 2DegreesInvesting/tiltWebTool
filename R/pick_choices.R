pick_choice <- function(data, input, id, .f = as.character) {
  value <- input[[id]]

  switch(as.character(value),
    "." = data,
    "NA" = filter(data, is.na(.data[[id]])),
    filter(data, .data[[id]] == .f(value))
  )
}
