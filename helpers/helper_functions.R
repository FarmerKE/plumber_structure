log_function <- function(message, level, tag) {
  error_data <- list(
    "version" = 1.0,
    "host" = "0.0.0.0",
    "short_message" = message,
    "level" = level,
    "_some_info" = tag
  )

  # tryCatch({
  #   httr::POST(
  #     URL,
  #     body = error_data,
  #     encode = "json"
  #   )
  # }, error = function(e) {
  #   print(paste("An error occurred:", e$message))
  # })
}
