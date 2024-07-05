library(plumber)

source("helpers/helper_functions.R")

#* @apiTitle Plumber Example API

#' @plumber
function(pr) {
  pr %>%
    pr_mount("/routes1", plumb("routes/route1.R")) %>%
    pr_mount("/routes2", plumb("routes/route2.R"))
}
