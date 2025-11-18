# dt_table

Renders a standard interactive data table from a dataset with a few
options for specifying the look and interactivity of the table.

## Usage

``` r
dt_table(df, filter = FALSE, search = FALSE, page = TRUE, row_nums = FALSE)
```

## Arguments

- df:

  the dataset you want to show in an output table. default TRUE

- filter:

  boolean for whether to display column filters. default FALSE

- search:

  boolean for whether to display a search bar. default FALSE

- page:

  boolean for whether to break table into pages. default TRUE

- row_nums:

  boolean for whether to show row numbers. default FALSE

## Value

a rendered DT table

## Examples

``` r
if (FALSE) dt_table(df = mtcars,
                            row_nums = TRUE) # \dontrun{}
```
