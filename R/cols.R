#' Columns in the latest tiltOutput
#'
#' @return Character.
#' @export
#'
#' @examples
#' cols_all()
#'
cols_all <- function() {
  c(
    "companies_id",
    "company_name",
    "country"
  )
}

#' @rdname cols_all
#' @export
#' @examples
#' cols_product_all()
#'
cols_product_all <- function() {
  c(
    cols_all(),
    "matched_activity_name",
    "matched_reference_product",
    "matching_certainty",
    "product",
    "unit",
    "tilt_sector",
    "tilt_subsector",
    "isic_4digit",
    "main_activity"
  )
}

#' @rdname cols_all
#' @export
#' @examples
#' cols_product_emission()
#'
cols_product_emission <- function() {
  c(
    cols_product_all(),
    "emission_category",
    "emission_rank",
    "grouping_emission",
    "co2_footprint"
  )
}

#' @rdname cols_all
#' @export
#' @examples
#' cols_product_sector()
#'
cols_product_sector <- function() {
  c(
    cols_product_all(),
    "sector_category",
    "sector_target",
    "scenario",
    "year"
  )
}

#' @rdname cols_all
#' @export
#' @examples
#' cols_product_transition_risk()
#'
cols_product_transition_risk <- function() {
  c(
    cols_product_all(),
    "transition_risk_category",
    "transition_risk_score",
    "grouping_transition_risk"
  )
}

#' @rdname cols_all
#' @export
#' @examples
#' cols_company_all()
#'
cols_company_all <- function() {
  c(
    cols_all(),
    "postcode",
    "address",
    "main_activity",
    "min_headcount",
    "max_headcount"
  )
}

#' @rdname cols_all
#' @export
#' @examples
#' cols_company_sector()
#'
cols_company_sector <- function() {
  c(
    cols_company_all(),
    "sector_target_avg_equal_weight",
    "sector_target_avg_best_case",
    "sector_target_avg_worst_case",
    "sector_target_NA_share",
    "scenario",
    "year"
  )
}

#' @rdname cols_all
#' @export
#' @examples
#' cols_company_emission()
#'
cols_company_emission <- function() {
  c(
    cols_company_all(),
    "emission_rank_avg_equal_weight",
    "emission_rank_avg_best_case",
    "emission_rank_avg_worst_case",
    "emission_rank_NA_share",
    "grouping_emission",
    "co2e_avg"
  )
}

#' @rdname cols_all
#' @export
#' @examples
#' cols_company_transition_risk()
#'
cols_company_transition_risk <- function() {
  c(
    cols_company_all(),
    "grouping_transition_risk",
    "avg_transition_risk_equal_weight",
    "avg_transition_risk_best_case",
    "avg_transition_risk_worst_case",
    "transition_risk_NA_share"
  )
}
