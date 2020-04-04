
# Quizes Chapter "functions", AdvancedR-------------------
# http://adv-r.had.co.nz/Functions.html ------------------




objs <- mget(ls("package:base"), inherits = TRUE)

funs <- Filter(is.function, objs)

# Use it to answer the following questions:---------------

# Which base function has the most arguments? ------------

# Answer-----------------------

out <-
  sapply(
    sapply(funs, formals, simplify = TRUE, USE.NAMES = TRUE),
    length,
    simplify = T,
    USE.NAMES = T
  )


out[which(out == max(out))]


# How many base functions have no arguments?-----------------

# Answer-------------------------------------------------

length(out[which(out == 0)])

# What's special about those functions? ---------------

# generate a list of primitives

funs_prim <- Filter(is.primitive, objs)

diff = length(out[which(out == 0)]) - length(funs_prim)
diff

# > diff
# [1] 42

# All except 42 functions are primitives in the base package----
# Their names --------
base_nam <- as.character(names(out[which(out == 0)]))
prim_nam <- as.character(names(funs_prim))
base_nam[which(base_nam %in% prim_nam == FALSE)]



#How could you adapt the code to find all primitive functions?

objs <- mget(ls("package:base"), inherits = TRUE)

funs <- Filter(is.primitive, objs)
