# *************** Exercise 3. ***************


convert_temperature <- function(temp, unit = c("C", "F", "K"), round = FALSE){
	unit <- tryCatch(
		{ unit <- match.arg(unit) } ,
			error = function(e) { stop("The temperature unit must be either C, F, or K") }
		)
		switch(unit, 
			"K" = { temp <- temp-273.15 },
			"F" = { temp <- ((temp-32) * (5/9)) }
					# If not Kelvin or Fahrenheit, then the unit must be Celsius...
		)
		return(ifelse(round, round(temp), temp))s
	}

convert_temperature(32.5, "C", round = TRUE)
convert_temperature(68.8, "F") # 68.8 degrees Fahrenheit = 20.44444 degrees Celsius
convert_temperature(166, "K", TRUE) # 166 degrees Fahrenheit = -107.15 degrees Celsius
convert_temperature(82.1, "something else", FALSE)

