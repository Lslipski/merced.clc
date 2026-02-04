

list_merced_colors <- function() {
  return(list(
    primary_blue = "#002856",
    primary_gold = "#daa900"
  ))
}


get_merced_color <- function(color_name) {
  merced_colors = list_merced_colors()
  return(merced_colors[[color_name]])
}

