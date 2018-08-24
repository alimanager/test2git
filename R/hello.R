# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}

add <- function(x,y){
  return(x+y)
}

typeT <- function(x,Type) {
  if(missing(Type)) {
    stop("Error : type not found!")
  }
  else if(  Type == "NULL"){
    return (as.null(x))
  }
  else if(Type == "integer"){
    return (as.integer(x))
  }
  else if(Type == "double") {
      return (as.double(x))
  }
  else if(Type == "logical") {
    return (as.logical(x))
  }
}


plotT  <- function(d, xx, yy) {

  t <-  ggplot(data = d, aes(x = eval(parse(text = xx)), y = eval(parse(text = yy)))) + geom_point()
  return (t)
}

