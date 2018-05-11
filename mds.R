# https://simplemaps.com/data/us-cities

tt = XML::readHTMLTable("http://www.mapcrow.info/united_states.html", which = 1, stringsAsFactors = FALSE, header = TRUE)

m = as.matrix(tt[,-1])
mode(m) = "numeric"
rownames(m) = tt[[1]]

z = cmdscale(m)

plot(z[,1], z[,2])
text(z[,1], z[,2], rownames(z), cex = .5)

# Orientation is wrong on the horizontal
plot(-z[,1], z[,2])
text(-z[,1], z[,2], rownames(z), cex = .5)

# Take out the two cities very far away from others to see
# the shape of the contiguous states more clearly.
z1 = z[ !(rownames(z) %in% c("Anchorage", "Honolulu")),]
plot(-z1[,1], z1[,2])
text(-z1[,1], z1[,2], rownames(z1), cex = .5)



k = read.csv("~/DSI/Workshops/MachineLearningOverview/uscitiesv1.4.csv", stringsAsFactors = FALSE)

# Wrong ones as Dallas is in many states, same with San Jose.
table(k$city)[rownames(z1)]

k = do.call(rbind, by(k, k$city, function(x) x[ order(x$population, decreasing = TRUE)[1],]))


i = match(rownames(z1), k$city)
k1 = k[i[!is.na(i)],]

scale = function(x, r, rx = range(x, na.rm = TRUE)) ((x - rx[1])*diff(r)/diff(rx) + r[1])

plot(-z1[,1], z1[,2])
text(-z1[,1], z1[,2], rownames(z1), cex = .5)
points(scale(k1$lng, range(-z1[,1])), scale(k1$lat, range(z1[,2])), col = "red")
text(scale(k1$lng, range(-z1[,1])), scale(k1$lat, range(z1[,2])), k1$city, col = "red", cex = .5)




