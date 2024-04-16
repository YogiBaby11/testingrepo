library(datasets)

#Load Data
data(mtcars)

#View first 5 rows
head(mtcars, 5)

#Load ggplot package
library(ggplot2)

#create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x = disp, y = mpg), data = mtcars) + geom_point()+ ggtitle("displacement vs miles per gallon")

#change axis name
ggplot(aes(x = disp, y = mpg), data = mtcars) + geom_point() + ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

#create a boxplot of the distribution for v-shaped and straight engine
ggplot(aes(x = vs, y=mpg), data = mtcars)+ geom_boxplot()

#adding colours to the plot
ggplot(aes(x = vs, y = mpg, fill = vs), data = mtcars) + geom_boxplot(alpha = 0.3) + theme(legend.position = "none")

#weight of the car graph
ggplot(aes(x = wt), data = mtcars) + geom_histogram(binwidth = 0.5)
