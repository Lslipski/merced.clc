# ipums_clean_hispan

Cleans IPUMS `hispan` variable. This indicates Hispanic Origin.

## Usage

``` r
ipums_clean_hispan(df)
```

## Arguments

- df:

  tibble containing the IPUMS variable `hispan` (lowercase).

## Value

tibble identical to input with 2 addtional variables: `hispanic`
provides a category of hispanic heritage and `hispanic_indicator`
provides a simple Hispanic vs. Not Hispanic indicator variable
