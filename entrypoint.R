library(plumber)

r <- plumb("plumber.R")$run(port=8000, host="0.0.0.0", swagger=TRUE)$setDebug(debug = TRUE)