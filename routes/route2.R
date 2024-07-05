#* Return the sum of two numbers
#* @param a:double The first number to add
#* @param b:double The second number to add
#* @post /sum
function(a, b) {
  tryCatch(
    expr = {
      as.numeric(a) + as.numeric(b)
    }, error = function(e) {
      log_function(
        message = e$message,
        level = 3,
        tag = "/routes2/sum"
      )
    }
  )
}
