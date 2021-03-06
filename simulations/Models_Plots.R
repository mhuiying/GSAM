library(ggplot2)
library(splines)
source("Models.R")
# We begin with scenario 1.
# All functions are step functions
xs <- seq(-2.5,2.5,length = 5000)
mf <- scen1(cbind(xs,xs,xs,xs))
mydat <- data.frame("x" = rep(xs, 4),
                    "f" = as.vector(mf),
                    "Function" = rep( paste("Function", 1:4), each = 5000) )

ggplot(mydat, aes(x = x, y = f, col = Function)) +
  geom_line(size = 1.3) + ylab("f(x)") +
  ggtitle("Scenario 1: All Step Functions") + guides(color = FALSE) +
  theme(text = element_text(size = 20), 
        plot.title = element_text(size = 20, face = "bold",hjust = 0.5))


# We begin with scenario 2
# All functions are piecewise linear functions
xs <- seq(-2.5,2.5,length = 5000)
mf <- scen2(cbind(xs,xs,xs,xs))
mydat <- data.frame("x" = rep(xs, 4),
                    "f" = as.vector(mf),
                    "Function" = rep( paste("Function", 1:4), each = 5000) )

ggplot(mydat, aes(x = x, y = f, col = Function)) +
  geom_line(size = 1.3) + ylab("f(x)") +
  ggtitle("Scenario 2: All Piecewise Linear Functions")+ guides(color = FALSE)+
  theme(text = element_text(size = 20), 
        plot.title = element_text(size = 20, face = "bold",hjust = 0.5))

# We for scenario 3: The very similar to SPAM
# All functions are smooth.
xs <- seq(-2.5,2.5,length = 5000)
mf <- scen3(cbind(xs,xs,xs,xs))
mydat <- data.frame("x" = rep(xs, 4),
                    "f" = as.vector(mf),
                    "Function" = rep( paste("Function", 1:4), each = 5000) )

ggplot(mydat, aes(x = x, y = f, col = Function)) +
  geom_line(size = 1.3) + ylab("f(x)") +
  ggtitle("Scenario 3: All Smooth Functions") + guides(color = FALSE)+
  theme(text = element_text(size = 20), 
        plot.title = element_text(size = 20, face = "bold",hjust = 0.5))


# For scenario 4
# Mixture of three types of functions
xs <- seq(-2.5,2.5,length = 5000)
mf <- scen4(cbind(xs,xs,xs,xs))
mydat <- data.frame("x" = rep(xs, 4),
                    "f" = as.vector(mf),
                    "Function" = rep( paste("Function", 1:4), each = 5000) )

ggplot(mydat, aes(x = x, y = f, col = Function)) +
  geom_line(size = 1.3) + ylab("f(x)") +
  ggtitle("Scenario 4: Mixture of Functions")+ guides(color = FALSE)+
  theme(text = element_text(size = 20), 
        plot.title = element_text(size = 20, face = "bold",hjust = 0.5))


# For scenario 5
# Hills type functions
xs <- seq(-2.5,2.5,length = 5000)
mf <- scen5(cbind(xs,xs,xs,xs))
mydat <- data.frame("x" = rep(xs, 4),
                    "f" = as.vector(mf),
                    "Function" = rep( paste("Function", 1:4), each = 5000) )

ggplot(mydat, aes(x = x, y = f, col = Function)) +
  geom_line(size = 1.3) + ylab("f(x)") +
  ggtitle("Scenario 5: Hills Type Functions")+ guides(color = FALSE)+
  theme(text = element_text(size = 20), 
        plot.title = element_text(size = 20, face = "bold",hjust = 0.5))

