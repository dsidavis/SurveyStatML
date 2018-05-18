n1 = 100
n2 = 300
theta1 = runif(n1, 0, 2*pi)
theta2 = runif(n2, 0, 2*pi)

r1 = rnorm(n1, 1, .2)
r2 = rnorm(n2, 5, .3)

x = c(r1, r2) * cos(c(theta1, theta2))
y = c(r1, r2) * sin(c(theta1, theta2))

plot(x, y, col = rep(c("red", "blue"), c(n1, n2)))

plot(density(c(r1, r2)))
rug(r1, col = "red")
rug(r2, col = "blue")


# D = dist(cbind(scale(c(theta1, theta2)), scale(c(r1, r2))))
D = dist(cbind(c(theta1, theta2), c(r1, r2)))
D = dist(matrix(c(r1, r2), , 1))
k = hclust(D)
m = cutree(k, 2)
