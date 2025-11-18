# add_commas

Formats a table rendered with
[`dt_table()`](https://lslipski.github.io/merced.clc/reference/dt_table.md)
to add commas to specified numeric columns with values above 999.

## Usage

``` r
add_commas(df, vars, digits = 0)
```

## Arguments

- df:

  a table produced using dt_table()

- vars:

  a character vector of variable names to be formatted with commas

- digits:

  an integer for how many places past the decimal place to include.
  Default is rounded to whole number

## Value

a rendered dt table with specified columns containing commas to denote
thousands

## Examples

``` r
if (FALSE) dt_table(df = mtcars %>%
                              mutate(sepal.length.large = Sepal.Length * 1000),
                            row_nums = TRUE) %>%
                            add_commas(vars = "sepal.length.large") # \dontrun{}
```
