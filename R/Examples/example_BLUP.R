## EXAMPLE 1
dt <- data.frame(t = c(1:24), x = c(40.3, 40.7, 38.5, 37.9, 38.6, 41.1, 45.2, 45.7, 46.7, 46.5, 45.2, 45.1, 45.8, 46.3, 47.5, 48.5, 49.1, 51.7, 50.6, 48, 44.7, 41.2, 40, 40.3))
F <- makeF(dt$t, c(1/24))
V <- makeV(dt$t, c(1/8,1/6))
f <- c(1, cos(2 * pi * 32/24), sin(2 * pi * 32/24))
v <- c(cos(2 * pi * 32/8), sin(2 * pi * 32/8), cos(2 * pi * 32/6), sin(2 * pi * 32/6))
var_estim <- NE(dt$x, F, V)
blup <- BLUP(dt$x, F, V, var_estim, f, v)
blup
