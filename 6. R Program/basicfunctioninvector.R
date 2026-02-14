#Basic Mathematical Functions
v <- c(10, 20, 30)

sum(v)        # Sum of elements: 60
mean(v)       # Mean of elements: 20
prod(v)       # Product of elements: 6000
min(v)        # Minimum value: 10
max(v)        # Maximum value: 30

x <- c(1, 2, 2, 3, 4, 4)

unique(x)           # Unique elements: 1 2 3 4
duplicated(x)       # TRUE for duplicates: FALSE FALSE TRUE FALSE FALSE TRUE

data <- rnorm(100, mean = 50, sd = 10) # Generate 100 random values with mean 50 and SD 10
data
#A particular case applies to NA elements.
v<-c(NA,23,45,NA)
v[is.na(v)]
v[is.na(v)] <- 200 
v[1]<-20
v