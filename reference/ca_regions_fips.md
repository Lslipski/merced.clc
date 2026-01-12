# ca_regions_fips

Basic California region and county information for grouping mortality
geographies. Commuting zones from
[here](https://ers.usda.gov/data-products/commuting-zones-and-labor-market-areas?cpid=email)
Region and county variables from
[here](https://github.com/mkiang/excess_drug_overdoses/blob/main/code/utils.R)

## Usage

``` r
ca_regions_fips
```

## Format

### `ca_regions_fips`

A tibble with 58 rows and 5 columns:

- region:

  Basic region number

- region_name:

  Basic region names

- county_name:

  County Name

- county_fips:

  County Federal Information Processing Standard code

- county_cdph:

  County CA Department of Public Health code

- commuting_zone:

  USDA 2020 Commuting Zone Code

- commuting_zone_name:

  USDA 2020 Commuting Zone Name

## Source

\<https://github.com/mkiang/excess_drug_overdoses/blob/main/code/utils.R;
https://ers.usda.gov/data-products/commuting-zones-and-labor-market-areas?cpid=email\>
