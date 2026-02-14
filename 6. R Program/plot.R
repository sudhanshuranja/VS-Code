library(ggplot2)
#histogram

hist(2,10)
hist(iris$Sepal.Length)
hist(iris$Sepal.Width, xlab = "Width of the Sepal", ylab = "Frequency of the Sepal", 
     col = "aquamarine 3", main = "Sudhanshu Ranjan Histogram")

boxplot(iris$Sepal.Length~iris$Sepal.Width)
boxplot(iris$Sepal.Length~iris$Species, col= "burlywood", main = "Data Set")



#Plot

l1 <- c(2, 4, 5, 6, 7)
l2 <- c(5, 3, 6, 7, 8)

l3 <- c(2, 5, 6, 7)
l4 <- c(6, 4, 7, 8)

l5 <- c(3, 5, 7, 8)
l6 <- c(6, 4, 7, 8)

plot(l1, l2, type="l", main="graph", xlab="A", ylab="B", col="red", lwd=0.5, lty=2)
lines(l3, l4, type="l", main="graph", xlab="A", ylab="B", col="blue", lwd=2, lty=3)


#Pie Chart

Z <- c(20, 50, 70, 90, 40)
labels <- c("maths", "hindi", "CS", "english", "science")
color <- c("red", "blue", "yellow", "green", "white")

pie(Z, labels, main="student marks in different subjects", init.angle=120, col=color)
legend("bottomright", labels, fill=color)
 




#Bar Chart

x <- c("maths", "science", "english", "hindi")
y <- c(50, 70, 80, 90)

barplot(y, names.arg = x, density = 10, main = "Students marks in different subjects",
        ylim = c(0, 100), width = c(2, 4, 5, 7), horiz = FALSE)




library(help = "datasets") #To access the data set which is present in the R language
X = iris
dim(X) # gives the range of the dataset
names(X)# gives the column name of the data set
?iris#Gives the description of the data set 

X$Sepal.Length # Gives everything present in the data set of sepal of that length
X$Sepal.Width# Gives everything present in the data set
X$Petal.Length# Gives everything present in the data set
X$Petal.Width# Gives everything present in the data set
X$Species# Gives everything present in the data set

sort(X$Sepal.Length) # For sorting the particular column

summary(X)# Gives the statistical summary


# Min & Max Values
mtcars
?mtcars

mtcars$mpg

max(mtcars$mpg)
min(mtcars$mpg)

rownames(mtcars)
which.min(mtcars$mpg)
which.max(mtcars$mpg)


rownames(mtcars)[which.min(mtcars$mpg)]

rownames(mtcars)[which.max(mtcars$mpg)]



#Mean Median Mode
a <- c(8, 10, 4.6, 23, 5, 9, 8, 5, 4.8, 7, 8,8)

mean(a)
median(a)
sort(a)

table(a)
names(sort(-table(a)))[1]


#a <- c(...): Initializes a numeric vector a.
#mean(a): Calculates the average of the vector a.
#median(a): Calculates the median of the vector a.
#sort(a): Sorts the values in ascending order.
#names(sort(-table(a)))[1]: Finds the mode (most frequent element). It:
#Creates a frequency table using table(a).
#Negates it with -table(a) to sort in decreasing order.
#Uses names(...) to extract the element name with the highest frequency.
#The [1] selects the first (most frequent) value.


Orange
mean(Orange)









