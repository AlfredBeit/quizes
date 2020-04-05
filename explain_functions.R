rm(list = ls())

# force evaluation of a function argument
# https://stat.ethz.ch/R-manual/R-devel/library/base/html/force.html

# lazy evaluation

f <- function(y) {
  function()
    y
}

lf <- vector("list", 5)

for (i in seq_along(lf)) {
  lf[[i]] <- f(i)
  
}


#all evals to 5 

lf[[4]]()
# [1] 5

lf[[1]]()
# [1] 5



rm(list = ls())

g <- function(y) { force(y); function() y }

lf <- vector("list", 5)

for (i in seq_along(lf)) {
  lf[[i]] <- g(i)
  
}



lf[[4]]()
# [1] 4

lf[[1]]()
# [1] 1


# The first case (f) stores the  definition "function() y"at each of the lf list positions  
# But then the iterator i is passed to the f body as f(i). When we call functions from the list i stays 5 because it is the iterator 
# written to the global environment on loop exit. If lazy evaluated f(y) takes i=5 as the input arg


# The second case (g) evaluates each iterator argument forcedly inside the g function 

# Laziness is useful in if statements - the second statement
# below will be evaluated only if the first is true.

x <- NULL
if (!is.null(x) && x > 0) { print("that")} else {print("this")}
  

# but throws an error
if (is.null(x) && x > 0) { print("this")} else {print("that")}


