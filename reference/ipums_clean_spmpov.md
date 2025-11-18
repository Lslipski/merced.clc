# ipums_clean_spmpov

Cleans IPUMS `spmpov` variable. This is the Supplemental Poverty Measure
(SPM) Poverty Status

## Usage

``` r
ipums_clean_spmpov(df)
```

## Arguments

- df:

  tibble containing the IPUMS variable `spmpov` (lowercase).

## Value

tibble identical to input with 1 additional variable
`spm_poverty_status`
