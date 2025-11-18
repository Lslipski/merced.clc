# ipums_get_ca_regions

Provides county names by linking the IPUMS `countyfip` variable to the
reference table provided in the function
[`merced.clc::load_ca_regions()`](https://lslipski.github.io/merced.clc/reference/load_ca_regions.md).

## Usage

``` r
ipums_get_ca_regions(df)
```

## Arguments

- df:

  tibble containing the IPUMS variable `countyfip` (lowercase)

## Value

tibble identical to input with replacing countyfip with 4 additional
variables: `region` is the region numbed; `region_name` is the region
name a county resides in; `county_name` is the county name; and
`county_cdph` is the county code used by the California Department of
Public Health
