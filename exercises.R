rm(list = ls())

f <- function(y) {
  y
  function()
    y
}

lf <- vector("list", 5)

for (i in seq_along(lf)) {
  lf[[i]] <- f(i)

}




#evals to 5 all of them

lf[[4]]()




bb<-44

f <- function(x = ls()) {
  a <- 1
  x
}

f(ls())
f()

# Laziness is useful in if statements - the second statement 
# below will be evaluated only if the first is true.

x<-NULL
if(!is.null(x) && x>0){ print(1)} else{print(2)}

# but throws an error


if(is.null(x) && x>0){ print(1)} else{print(2)}



x <- sample(replace = FALSE, 20, x = c(1:10, NA))
x <- sample(replace = TRUE, 20, x = c(1:10, NA))


y <- runif(min = 0, max = 1, 20)

cor(m = "k", y = y, u = "p", x = x)
cor(x, y, m='k', use = "e")



f1 <- function(x = {y <- 1; 2}, y = 0) {
  x + y
}
f1()


f2 <- function(x = z) {
  z <- 100
  x
}


f2(ls())

