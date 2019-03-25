r <- 0.99
k <- sqrt((1-r^2))
n <- 1000

k1 <- sqrt

a1 <- rnorm(n, 100, 10)
a2 <- rnorm(n, 90, 10)
a22 <- rnorm(n, 100, 10)
a3 <- rnorm(n, 150, 10)

a2a1 <- a1*r+a2*k
a3a1 <- a1*r+a3*k

plot(a1, a2)
plot(a1, a2a1)
plot(a1, a3)
plot(a1, a3a1)

mean(a1)
mean(a2)
mean(a22)
mean(a3)
mean(a2a1)
mean(a3a1)

cor(a1, a2a1)
cor(a1, a3a1)

##-----------------

samples = 200
r = 0.83

library('MASS')
data = mvrnorm(n=samples, mu=c(0, 0), Sigma=matrix(c(1, r, r, 1), nrow=2), empirical=TRUE)
X = data[, 1]  # standard normal (mu=0, sd=1)
Y = data[, 2]  # standard normal (mu=0, sd=1)

cor(X, Y)  # yay!
cor(X*0.01 + 42, Y*3 - 1)  # Linear transformations of X and Y won't change r.

r=0.85
k <- sqrt(1-r^2)
f <- 2.5
x <- rnorm(10000, 100, 25)
y <- rnorm(10000, 0, 25)
z <- r*x+k*y+(100*(1-r))

w <- r*x+k*rnorm(10000, 250, 25)

plot(x, y)
plot(x, z)
plot(x, w)
cor(x, y)
cor(x, z)
cor(x, w)
mean(x)
mean(y)
mean(z)
mean(w)

