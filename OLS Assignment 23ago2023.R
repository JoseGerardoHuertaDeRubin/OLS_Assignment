#Plot the values
library(ggplot2)
ggplot(DATA, aes(`Sales (in $1000s)`, `Advertising (in $1000s)`)) + geom_point() + geom_abline(intercept = 0, slope = 1, col = "red")

#Generate the model
model = lm(DATA$`Sales (in $1000s)` ~ DATA$`Advertising (in $1000s)`)
summary(model)

#ggplot(DATA, aes(`Sales (in $1000s)`, predict(model))) + 
#  geom_point() +
#  geom_abline(intercept = 0, slope = 1, col = "red")

#Residuals
res <- resid(model)
plot(fitted(model), res)

#Q-Q plot
abline(0,0)
qqnorm(res)
qqline(res)

