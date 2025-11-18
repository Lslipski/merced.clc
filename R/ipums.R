#' ipums_clean_spmpov
#'
#' Cleans IPUMS `spmpov` variable. This is the Supplemental Poverty Measure (SPM) Poverty Status
#'
#' @param df tibble containing the IPUMS variable `spmpov` (lowercase).
#'
#' @importFrom dplyr mutate
#' @importFrom dplyr case_when
#'
#' @returns tibble identical to input with 1 additional variable `spm_poverty_status`
#' @export
ipums_clean_spmpov <- function(df) {
  df %>%
    dplyr::mutate(spm_povery_status = dplyr::case_when(spmpov == 0 ~ "Not in Poverty",
                                                       spmpov == 1 ~ "In Poverty",
                                                       TRUE ~ NA))
}


#' ipums_clean_offpov
#'
#' Cleans IPUMS `offpov` variable. A family is classified as poor by this measure
#' if their total cash income falls below the official poverty threshold
#'
#' @param df tibble containing the IPUMS variable `offpov` (lowercase).
#'
#' @importFrom dplyr mutate
#' @importFrom dplyr case_when
#'
#' @returns tibble identical to input with 1 additional variable `off_poverty_status`
#' @export
ipums_clean_offpov <- function(df) {
  df %>%
    dplyr::mutate(off_poverty_status = dplyr::case_when(offpov == 0 ~ "Not in Poverty",
                                                        offpov == 1 ~ "In Poverty",
                                                        TRUE ~ NA))
}


#' ipums_clean_foodstmp
#'
#' Cleans IPUMS `foodstmp` variable.This indicates whether anyone in the household
#' received Food Stamps (now called the Supplemental Nutrition Assistance Program, or S
#' NAP) at any time in the past 12 months
#'
#' @param df tibble containing the IPUMS variable `foodstmp` (lowercase).
#'
#' @importFrom dplyr mutate
#' @importFrom dplyr case_when
#'
#' @returns tibble identical to input with 1 additional variable `food_stamp_recipient`
#' @export
ipums_clean_foodstmp <- function(df) {
  df %>%
    dplyr::mutate(food_stamp_recipient = dplyr::case_when(foodstmp == 0 ~ NA,
                                                          foodstmp == 1 ~ "No",
                                                          foodstmp == 2 ~ "Yes",
                                                          TRUE ~ "ERROR"))
}


#' ipums_clean_hispan
#'
#' Cleans IPUMS `hispan` variable. This indicates Hispanic Origin.
#'
#' @param df tibble containing the IPUMS variable `hispan` (lowercase).
#'
#' @importFrom dplyr mutate
#' @importFrom dplyr case_when
#'
#' @returns tibble identical to input with 2 addtional variables: `hispanic` provides a
#' category of hispanic heritage and `hispanic_indicator` provides a simple Hispanic vs.
#' Not Hispanic indicator variable
#' @export
ipums_clean_hispan <- function(df) {
  df %>%
    dplyr::mutate(hispanic = dplyr::case_when(hispan == 0 ~ "Not Hispanic",
                                              hispan == 9 ~ "Not Reported",
                                              hispan == 1 ~ "Mexican",
                                              hispan == 2 ~ "Puerto Rican",
                                              hispan == 3 ~ "Cuban",
                                              hispan == 4 ~ "Other",
                                              TRUE ~ "ERROR"),
           hispanic_indicator = dplyr::case_when(hispan %in% seq(1,4,1) ~ "Hispanic",
                                                 TRUE ~"Not Hispanic"))
}


#' ipums_clean_hcovany
#'
#' Cleans IPUMS `hcovany` variable. This indicates whether persons had any health
#' insurance coverage at the time of interview
#'
#' @param df tibble containing the IPUMS variable `hcovany` (lowercase)
#'
#' @importFrom dplyr mutate
#' @importFrom dplyr case_when
#'
#' @returns tibble identical to input with 1 additional variable `health_insurance_any`
#' @export
ipums_clean_hcovany <- function(df) {
  df %>%
    dplyr::mutate(health_insurance_any = dplyr::case_when(hcovany == 1 ~ "No Health Insurance Coverage",
                                                          hcovany == 2 ~ "With Health Insurance Coverage",
                                                          TRUE ~ "ERROR"))
}


#' ipums_get_ca_regions
#'
#' Provides county names by linking the IPUMS `countyfip` variable to the reference
#' table provided in the function `merced.clc::load_ca_regions()`.
#'
#' @param df tibble containing the IPUMS variable `countyfip` (lowercase)
#'
#' @importFrom dplyr mutate
#' @importFrom dplyr left_join
#'
#' @returns tibble identical to input with replacing countyfip with 4 additional variables:
#' `region` is the region numbed; `region_name` is the region name a county resides in; `county_name`
#' is the county name; and `county_cdph` is the county code used by the California Department of
#' Public Health
#' @export
ipums_get_ca_regions <- function(df) {

  df %>%
    dplyr::mutate(countyfip = as.integer(countyfip)) %>%
    dplyr::left_join(load_ca_regions(),
                     by = c("countyfip" = "county_fips"))
}


#' ipums_ca_only
#'
#' Filters an IPUMS data set to only rows where the state FIPS code is 6 (California)
#'
#' @param df tibble containing the IPUMS variable `statefip` (lowercase)
#'
#' @importFrom dplyr filter
#'
#' @returns tibble with same columns as input but filtered to rows where statefip == 6
#' @export
ipums_ca_only <- function(df) {
  df %>%
    dplyr::filter(statefip == 6)
}


#' ipums_clean_race
#'
#' Adds a column called `race_text` df and returns
#'
#' @param df a tibble containing the IPUMS variable called `race`
#'
#' @returns tibble identical to original with additional `race_text` variable
#' @export
ipums_clean_race <- function(df) {
  df %>%
    dplyr::mutate(race_text = dplyr::case_when(race == 1 ~ "White",
                                               race == 2 ~ "Black",
                                               race == 3 ~ "American Indian or Alaska Native",
                                               race == 4 ~ "Chinese",
                                               race == 5 ~ "Japanese",
                                               race == 6 ~ "Other Asian or Pacific Islander",
                                               race == 7 ~ "Other race, nec",
                                               race == 8 ~ "Two major races",
                                               race == 9 ~ "Three or more major races",
                                               TRUE ~ "ERROR"))
}


