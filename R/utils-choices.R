unselected_choices <- function(choice) {
  grep(choice, weight_modes(), invert = TRUE, value = TRUE)
}
