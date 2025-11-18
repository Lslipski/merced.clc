# ipums_clean_hcovany

Cleans IPUMS `hcovany` variable. This indicates whether persons had any
health insurance coverage at the time of interview

## Usage

``` r
ipums_clean_hcovany(df)
```

## Arguments

- df:

  tibble containing the IPUMS variable `hcovany` (lowercase)

## Value

tibble identical to input with 1 additional variable
`health_insurance_any`
