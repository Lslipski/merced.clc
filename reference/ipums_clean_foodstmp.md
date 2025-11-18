# ipums_clean_foodstmp

Cleans IPUMS `foodstmp` variable.This indicates whether anyone in the
household received Food Stamps (now called the Supplemental Nutrition
Assistance Program, or S NAP) at any time in the past 12 months

## Usage

``` r
ipums_clean_foodstmp(df)
```

## Arguments

- df:

  tibble containing the IPUMS variable `foodstmp` (lowercase).

## Value

tibble identical to input with 1 additional variable
`food_stamp_recipient`
