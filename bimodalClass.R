library(MASS)

N = 50
mu <- rep(0,2)
Sigma <- matrix(.7, nrow=2, ncol=2) + diag(2)*.3

A = mvrnorm(n=N, mu= c(3, 8), Sigma=diag(2))
B = mvrnorm(n=N, mu= c(5, 5), Sigma=Sigma)
C = mvrnorm(n=N, mu= c(8, 3), Sigma=Sigma)
D = mvrnorm(n=N, mu= c(10, 2.5), Sigma=.2*Sigma)

png("Cloud2.png", 800, 800)
d = rbind(A, B)
plot(d, col = rep(c("magenta", "blue"), each = N), pch = rep(c("+", "o"), each = N), xlab = expression(X[1]), ylab = expression(X[2]))
dev.off()

png("Cloud3.png", 800, 800)
d = rbind(A, B, C)
plot(d, col = rep(c("magenta", "blue", "magenta"), each = N), pch = rep(c("+", "o", "+"), each = N), xlab = expression(X[1]), ylab = expression(X[2]))
dev.off()


png("Cloud4.png", 800, 800)
d = rbind(A, B, C, D)
plot(d, col = rep(c("magenta", "blue", "magenta", "blue"), each = N), pch = rep(c("+", "o", "+", "o"), each = N), xlab = expression(X[1]), ylab = expression(X[2]))
dev.off()
