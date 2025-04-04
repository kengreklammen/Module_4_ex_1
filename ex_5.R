# *************** Exercise 5. ***************


safe_divide <- function(a, b) {
	result <- tryCatch( {
		a/b
	}, error = function(e) {
		"Invalid input!" # In any error (including non-numeric input) we return this string as a result. 
	})
	if(result == "Inf"){ # Division by zero is not an error in R!
		result <- "Cannot divide by zero!"
	}
	return(result)
}


a <- c(3, 6, 7)

safe_divide(3, 5)
safe_divide(3, 0)
safe_divide(3, "5")
safe_divide("3", 5)


