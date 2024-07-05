#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg=""){
  tryCatch(
    expr = {
      list(msg = paste0("The message is: '", msg, "'"))
    }, error = function(e) {
      log_function(
        message = e$message,
        level = 3,
        tag = "/routes1/echo"
      )
    }
  )
}

#* Plot a histogram
#* @serializer png
#* @get /plot
function(){
  tryCatch(
    expr = {
      rand <- rnorm(100)
      hist(rand)
    }, error = function(e) {
      log_function(
        message = e$message,
        level = 3,
        tag = "/routes1/plot"
      )
    }
  )
}