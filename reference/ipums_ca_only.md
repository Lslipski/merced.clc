# ipums_ca_only

Filters an IPUMS data set to only rows where the state FIPS code is 6
(California)

## Usage

``` r
ipums_ca_only(df)
```

## Arguments

- df:

  tibble containing the IPUMS variable `statefip` (lowercase)

## Value

tibble with same columns as input but filtered to rows where statefip ==
6
