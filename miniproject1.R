# Simulate 1 draw of XA, XB, and T
XA <- rexp(1, rate = 0.1)

XB <- rexp(1, rate = 0.1)

T <- max(XA, XB)

"Drawing of T"
T

# Draw T 10,000 times
T_draws <- replicate(10000, max(rexp(2, rate = 0.1)))

# Plot histogram of draws of T and apply exponential PDF curve to historgram
hist(T_draws,
     probability = TRUE,
     breaks = 30,
     main = "Monte Carlo Simulation of T",
     xlab = "Lifetime T (years)")

curve(0.2 * exp(-0.1 * x) - 0.2 * exp(-0.2 * x),
      from = 0,
      to = max(T_draws),
      add = TRUE,
      lwd = 2)

# Estimating E(T)
mean_T <- mean(T_draws)
"Estimation of E(T)"
mean_T

# Estimate P(T > 15) and compare with analytical approach
prob_T_MC <- mean(T_draws > 15)
"Estimation of P(T > 15)"
prob_T_MC

prob_T_A <- 1 - (1 - exp(-0.1 * 15))^2
"Computed P(T > 15)"
prob_T_A
