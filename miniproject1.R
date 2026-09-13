# Simulate 1 draw of XA, XB, and T

XA <- rexp(1, rate = 0.1)

XB <- rexp(1, rate = 0.1)

T <- max(XA, XB)

"Drawing of T"
T

# Draw T 10,000 times
T_draws <- replicate(10000, max(rexp(2, rate = 0.1)))