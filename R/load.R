#' load_ca_min_wage
#'
#' @importFrom dplyr tribble
#' @returns tibble with a row containing the year and the CA minimum wage for that year.
#' @export
load_ca_min_wage <- function() {
  # source: https://www.dol.gov/agencies/whd/state/minimum-wage/history

  dplyr::tribble(~year, ~min_wage,
          2014, 9,
          2015, 9,
          2016, 10,
          2017, 10,
          2018, 11,
          2019, 12,
          2020, 12,
          2021, 13,
          2022, 14,
          2023, 15.5,
          2024, 16)
}


#' load_fwhs_regions
#'
#' @importFrom dplyr tribble
#' @returns tibble containing a row for every county and its corresponding region
#' contained in the Farmworker Health Study
#' @export
load_fwhs_regions <- function() {

  dplyr::tribble(~county_name, ~region_name,
          # San Joaquin Valley
          "San Joaquin", "San Joaquin Valley",
          "Stanislaus", "San Joaquin Valley",
          "Merced", "San Joaquin Valley",
          "Madera", "San Joaquin Valley",
          "Fresno", "San Joaquin Valley",
          "Kings", "San Joaquin Valley",
          "Kern", "San Joaquin Valley",
          "Tulare", "San Joaquin Valley",
          # Imperial Valley
          "Imperial", "Imperial Valley",
          #Napa/Sonoma
          "Napa", "Napa/Sonoma",
          "Sonoma", "Napa/Sonoma",
          #Upper Central Coast
          "Monterey", "Upper Central Coast",
          "Contra Costa", "Upper Central Coast",
          # Lower Central Coast
          "Santa Barbara", "Lower Central Coast",
          "Ventura" , "Lower Central Coast")

}


#' load_cv_counties
#'
#' @importFrom dplyr tribble
#' @returns character vector of the counties in the central valley
#' @export
load_cv_counties <- function() {

  c("Fresno",
    "Kern",
    "Kings",
    "Madera",
    "Merced",
    "San Joaquin",
    "Stanislaus",
    "Tulare")
}


#' load_ca_regions
#'
#' @importFrom here here
#' @returns a tibble containing a row for each county in California and a column for that
#' countys region (code), region_name, county_name, county FIPS, and the county CDPH code.
#' @export
load_ca_regions <- function() {
  load(here::here("data/ca_regions_fips.rda"))
  return(ca_regions_fips)
}
