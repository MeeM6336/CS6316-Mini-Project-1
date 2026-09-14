# Diep Doan

# Simulate 10,000 (x, y) coordinate pairs, uniform on [0,1]
# set.seed(0)  # for reproducibility (optional)
x <- runif(10000, min = 0, max = 1)
y <- runif(10000, min = 0, max = 1)

# Check if each point lies inside the circle (within 0.5 units of (0.5, 0.5))
dist_sq <- (x - 0.5)^2 + (y - 0.5)^2
inside <- dist_sq <= 0.5^2

# Count how many points fall inside
count_inside <- sum(inside)

# Estimte π
cat("Number of points inside circle (within 0.5 units of (0.5, 0.5)):", count_inside, "\n")
cat("Estimation of π (π = P(point inside circle) * 4):", count_inside / 10000 * 4, "\n")

# Plot, coloring points by whether they're inside or outside
plot(x, y,
     main = "π Simulation",
     xlab = "x",
     ylab = "y",
     pch = 20,
     cex = 0.5,
     col = ifelse(inside, "red", "grey70"))

# Draw the circle boundary for reference
theta <- seq(0, 2 * pi, length.out = 200)
circle_x <- 0.5 + 0.5 * cos(theta)
circle_y <- 0.5 + 0.5 * sin(theta)
lines(circle_x, circle_y, col = "blue", lwd = 2)