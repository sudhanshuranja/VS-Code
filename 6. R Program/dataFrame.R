df <- data.frame(
  Name = c("A","b","c"),
  age = c(20,22,23),
  Score  = c(65,46,65)
)

print(df)

df <- data.frame(
  Name = c("Subh","Bhanu","Chandremukhi"),
  last = c("lakshmi","Mati","Dayan"),
  age = c(20,22,23),
  Score  = c(65,46,65)
)

print(df)

head(df)
tail(df)
head(df , 1)
tail(df , 2)

df$age

#Extract specific rows (s) and column (s)
df[1,2]
df[ , 2]
df[1,3]
df[1:2 , 1:2]
#return age where age >22
df[df$age > 22,]







