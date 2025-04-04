# *************** Exercise 1. ***************


my_summ <- function(x, summary_fun = NULL){
	if(is.null(summary_fun)){
		return( c(mean(x), median(x), sd(x)) )
		}
	else {
		return(summary_fun(x))
	}
}


a <- c(3, 6, 7)

my_summ(a, sd)
my_summ(a, mean)
my_summ(a, median)

my_summ(a)


