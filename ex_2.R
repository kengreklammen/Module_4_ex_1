# *************** Exercise 2. ***************
# Apart from x and y, the flexible_plot function accepts 3 more optional arguments:
#		- labels: as a vector of two strings. The are the names of the x and y axis.
#		- title: as string. The title of the chart.
#		- color: as string. The color of the data points.
#		- shape: as numeric. The type of the data points (as in ggplot2).

if(!require("ggplot2")) install.packages("ggplot2")

library(ggplot2)



flexible_plot <- function(x, y, ...) {
	extra_args <- list(...)
	if(!is.null(extra_args$labels)) {
		labels <- extra_args$labels
	}
	else {
		labels <- c("X", "Y") # Some default labels
	}
	if(!is.null(extra_args$title)) {
		title <- extra_args$title
	}
	else {
		title <- "Chart" # Some default title
	}
	if(!is.null(extra_args$shape)) {
		shape <- extra_args$shape
	}
	else {
		shape <- 18 # A default shape
	}
	if(!is.null(extra_args$color)) {
		color <- extra_args$color
	}
	else {
		color <- "red" # A default colour
	}

	ggplot(as.data.frame(list(x, y)), aes(x=x, y=y)) + geom_point(shape = shape, color = color) +
		labs(title = title, x = labels[1], y = labels[2])
	}


x <- c(24, 32, 38, 55, 62, 61, 86)
y <- c(245, 288, 234, 276, 296, 274, 266)

flexible_plot(x, y)
flexible_plot(x, y, labels=c("Height", "Number of hits"))
flexible_plot(x, y, shape=8, color="blue")
flexible_plot(x, y, labels = c("Altitude (km)", "Reflection"), color = "gray")
flexible_plot(x, y, color = "orange", shape=6, title = "This is my scientific chart")