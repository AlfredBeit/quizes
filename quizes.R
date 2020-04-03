
# Quizes Chapter "functions", AdvancedR-------------------


objs <- mget(ls("package:base"), inherits = TRUE)

funs <- Filter(is.primitive, objs)
#funs <- Filter(is.function, objs)



out <-
  sapply(
    sapply(funs, formals, simplify = TRUE, USE.NAMES = TRUE),
    length,
    simplify = T,
    USE.NAMES = T
  )


ln <- as.character(names(out[which(out == 0)]))
lnn <- as.character(names(funs))
ln[which(ln %in% lnn == FALSE)]

is.primitive(pcre_config)


