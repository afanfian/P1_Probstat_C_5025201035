#A
lambda = 3
set.seed(1)
rexp(lambda)

#B
par(mfrow = c(2,2))

set.seed(1)
hist(rexp(10))

set.seed(1)
hist(rexp(100))

set.seed(1)
hist(rexp(1000))

set.seed(1)
hist(rexp(10000))

#C
lambda = 3
set.seed(1)
rataan <- 1 / lambda
rataan
set.seed(1)
varian <- 1 / (lambda * lambda)
varian
