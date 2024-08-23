pick_emission <- function(data, level) {
  pick_level_indicator(data, level, indicator = "emission")
}

pick_sector <- function(data, level) {
  pick_level_indicator(data, level, indicator = "sector")
}

pick_transition_risk <- function(data, level) {
  pick_level_indicator(data, level, indicator = "transition_risk")
}

pick_level_indicator <- function(data,
                                 level = level_choices(),
                                 indicator = indicator_choices()) {
  level <- match.arg(level)
  indicator <- match.arg(indicator)

  cols_product <- get(paste0("cols_product_", indicator))
  cols_company <- get(paste0("cols_company_", indicator))

  switch(level,
    "product" = select(data, cols_product()),
    "company" = select(data, cols_company())
  )
}
