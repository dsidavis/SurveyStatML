
set.seed(123123)
xbar.30 = replicate(1000, mean(rbeta(30, .5, .1)))
xbar.10 = replicate(1000, mean(rbeta(10, .5, .1)))
xbar.100 = replicate(1000, mean(rbeta(100, .5, .1)))

dbar = density(xbar.100)
#png("SamplingDistribution.png", 700, 700)
z = curve(dbeta(x, .5, .1), 0, 1, ylim = range(dbar$y), lwd = 3)
lines(dbar, col = "green")
lines(density(xbar.30), col = "blue")
lines(density(xbar.10), col = "red")

abline(v = .5/.6, lty = 3, col = "grey")

legend("topleft",
#       legend = list(expression(X), expression(bar(X)[10]), expression(bar(X)[30]), expression(bar(X)[100])),       
       legend = expression(X, bar(X)[10], bar(X)[30], bar(X)[100]),
         col  = c("black", "red", "blue", "green"), lty = 1, lwd = c(3, 1, 1, 1))
#dev.off()





set.seed(123123)
xbar.30 = replicate(1000, {x = rbeta(30, .5, .1); c(mean(x), quantile(x, .95))})
xbar.10 = replicate(1000, {x = rbeta(10, .5, .1); c(mean(x), quantile(x, .95))})
xbar.100 = replicate(1000, {x = rbeta(100, .5, .1); c(mean(x), quantile(x, .95))})
