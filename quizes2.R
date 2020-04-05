rm(list = ls())


# Lazy evaluation --------
# arguments of the function below are evaluated in the global environment
# x = {y <- 1; 2} is evaluated to x<-2,y<-1 in R_GlobalEnv. y=0 is not evaluated


f1 <- function(x = {y <- 1; 2}, y = 0) {

    x + y

}


f1()

# > f1()
# [1] 3

# if default argument x is overwritten:
f1(1)
# [1] 1

# if both default args is overwritten:

f1(3,5)
# [1] 8

# i.e. equivalent to 

f1_1<-function(x,y) x+y
f1_1(3,5)
# [1] 8


# Lookup: look inside the current function, then where -------------------
# that function was defined, and so on, all the way up to the global environment and so on to other packages


f2 <- function(x = z) {
  z <- 100
  x
}

# outputs a 100

f2()
# [1] 100





