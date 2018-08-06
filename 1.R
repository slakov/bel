# Read data
d <- read.csv("data.csv")

ns <- names(d)
ns <- ns[c(1,2,3,4,5,6)]

d <- d[,ns]

# Full multiple regression model
fm <- lm(sleep_classes ~ ., data=d)

# Features selection
bm <- step(fm)
