library(MASS)
mu <- rep(0,2)
Sigma <- matrix(.7, nrow=2, ncol=2) + diag(2)*.3
N = 100
rawvars <- as.numeric(mvrnorm(n=N/2, mu=mu, Sigma=Sigma))

replicate(999, mean(as.numeric(mvrnorm(n=N/2, mu=mu, Sigma=Sigma))))
 
