#' dt_table
#'
#' Renders a standard interactive data table from a dataset with a few options
#' for specifying the look and interactivity of the table.
#'
#' @param df the dataset you want to show in an output table. default TRUE
#' @param filter boolean for whether to display column filters. default FALSE
#' @param search boolean for whether to display a search bar. default FALSE
#' @param page boolean for whether to break table into pages. default TRUE
#' @param row_nums boolean for whether to show row numbers. default FALSE
#'
#' @importFrom DT datatable
#' @importFrom DT formatCurrency
#'
#' @returns a rendered DT table
#' @export
#'
#' @examples \dontrun{dt_table(df = mtcars,
#'                             row_nums = TRUE)}
dt_table <- function(df,
                     filter = FALSE,
                     search = FALSE,
                     page = TRUE,
                     row_nums = FALSE) {
  if(filter) {
    df %>%
      DT::datatable(extensions = 'Buttons',
                    filter = c('top'),
                    rownames = row_nums,
                    options = list(
                      paging = page,
                      searching = search,
                      fixedColumns = TRUE,
                      autoWidth = TRUE,
                      ordering = TRUE,
                      dom = 'ftBlp',
                      buttons = c('copy', 'csv')
                    ),
                    class = "display")
  } else {
    df %>%
      DT::datatable(extensions = 'Buttons',
                    rownames = row_nums,
                    options = list(
                      paging = page,
                      searching = search,
                      fixedColumns = TRUE,
                      autoWidth = TRUE,
                      ordering = TRUE,
                      dom = 'ftBlp',
                      buttons = c('copy', 'csv')
                    ),
                    class = "display")
  }
}


#' add_commas
#'
#' Formats a table rendered with `dt_table()` to add commas to specified
#' numeric columns with values above 999.
#'
#' @param df a table produced using dt_table()
#' @param vars a character vector of variable names to be formatted with commas
#' @param digits an integer for how many places past the decimal place to include. Default is rounded to whole number
#'
#' @returns a rendered dt table with specified columns containing commas to denote thousands
#' @export
#'
#' @examples \dontrun{dt_table(df = mtcars %>%
#'                               mutate(sepal.length.large = Sepal.Length * 1000),
#'                             row_nums = TRUE) %>%
#'                             add_commas(vars = "sepal.length.large")}
add_commas <- function(df,
                       vars,
                       digits = 0) {
  df %>%
    DT::formatCurrency(vars,
                       currency = "",
                       digits = digits,
                       interval = 3,
                       mark = ",")
}
