library(MASS)
mu <- rep(0,2)
Sigma <- matrix(.7, nrow=2, ncol=2) + diag(2)*.3
N = 100
rawvars <- as.numeric(mvrnorm(n=N/2, mu=mu, Sigma=Sigma))

mu.cor = replicate(999, mean(as.numeric(mvrnorm(n=N/2, mu=mu, Sigma=Sigma))))
mu.ucor = replicate(999, mean(as.numeric(mvrnorm(n=N/2, mu=mu, Sigma=diag(2)))))


plot(density(mu.ucor))
lines(density(mu.cor), col = "red")

sd(mu.cor)
sd(mu)  # 1/sqrt(N)

Sigma2 <- matrix(c(1, -.7, -.7, 1), 2, 2)
mu.ncor = replicate(999, mean(as.numeric(mvrnorm(n = N/2, mu = mu, Sigma = Sigma2))))

lines(density(mu.ncor), col = "green")
