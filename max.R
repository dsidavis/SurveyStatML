n = 50
lambda = .01
samples = replicate(25, rexp(n, lambda), simplify = FALSE)
xx = range(unlist(sapply(samples, range)))
mx = sapply(samples,max)

ylim = range(sapply(samples, function(x) range(density(x)$y)))

png("CompareDistributions.png", 800, 800)
par(mfrow = c(5,5), mar = c(3, 2, 1, 1))
invisible(sapply(samples[order(mx, decreasing = TRUE)], function(x) plot(density(x), main = character(), xlim = xx, ylim = ylim)))
dev.off()


png("CompareDistributionsExp.png", 800, 800)
par(mfrow = c(5,5), mar = c(3, 2, 1, 1))
invisible(sapply(samples[order(mx, decreasing = TRUE)], function(x) {
    plot(density(x), main = character(), xlim = xx, ylim = ylim, col = "blue")
    curve(dexp(x, lambda), xx[1], xx[2], add = TRUE, col = "red", xlim = xx, lty = 4)
}))
dev.off()


curve(dexp(x, lambda)

n = 100

par(mfrow = c(2, 2))

ll = seq(.0001, .1, length = 4)
sapply(ll, function(p) plot(density(rexp(n, p))))

x = rexp(n, .01)
plot(density(x))



# Change n

n = 10^(2:5)
sapply(n, function(n) plot(density(rexp(n, .01)), main = n))
