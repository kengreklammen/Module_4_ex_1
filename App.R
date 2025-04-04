if(!require("tidyverse")) install.packages("tidyverse")

library(tidyverse)

a <- c(3,6,7)


# *************** Exercise 1. ***************

my_summ <- function(x, summary_fun = NULL){
	if(is.null(summary_fun)){
		return( c(mean(x), median(x), sd(x)) )
		}
	else {
		return(4)
	}
}


my_summ(a, "sd")

my_summ(a)


# *************** Exercise 3. ***************

convert_temperature <- function(temp, unit = c("C", "F", "K")){
	tryCatch(
		{ unit <- match.arg(unit) } ,
			error = function(e) { stop("The temperature unit must be either C, F, or K") }
	)
	switch(unit, 
				 "C" = {
					return(temp)
				 },
				 "F" = {
					return((temp-32) * (5/9))    
				 },
				 {
					return(temp-273.15) # By now it can only be Kelvin
				 }
	)
	return(unit)
}

convert_temperature(32, "C")
convert_temperature(68, "F") # 68 degrees Fahrenheit = 20 degrees Celsius
convert_temperature(166, "K") # 166 degrees Fahrenheit = -107.15 degrees Celsius
convert_temperature(82, "something else")



# *************** Exercise 4. ***************

complex_sum <- function(x){
	result <- 0
	for(i in 1:length(x)){
		if(!is.na(x[i])){
			if(x[i] >= 0){
				result <- result + x[i]
			}
		}
	}
	return(result)
}

