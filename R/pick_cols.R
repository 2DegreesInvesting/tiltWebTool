# TODO: DRY

pick_emission <- function(data, level = level_choices()) {
  level <- match.arg(level)

  switch(level,
    "product" = select(data, cols_product_emission()),
    "company" = select(data, cols_company_emission()),
    stop("Unknown level: ", level)
  )
}

pick_sector <- function(data, level = level_choices()) {
  level <- match.arg(level)

  switch(level,
    "product" = select(data, cols_product_sector()),
    "company" = select(data, cols_company_sector()),
    stop("Unknown level: ", level)
  )
}

pick_transition_risk <- function(data, level = level_choices()) {
  level <- match.arg(level)

  switch(level,
    "product" = select(data, cols_product_transition_risk()),
    "company" = select(data, cols_company_transition_risk()),
    stop("Unknown level: ", level)
  )
}
