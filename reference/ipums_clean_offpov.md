# ipums_clean_offpov

Cleans IPUMS `offpov` variable. A family is classified as poor by this
measure if their total cash income falls below the official poverty
threshold

## Usage

``` r
ipums_clean_offpov(df)
```

## Arguments

- df:

  tibble containing the IPUMS variable `offpov` (lowercase).

## Value

tibble identical to input with 1 additional variable
`off_poverty_status`
