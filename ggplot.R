library(tidyverse)
seq(1, 10)
#>  [1]  1  2  3  4  5  6  7  8  9 10


ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

filter(mpg, cyl == 8)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y=hwy, colour = displ < 5))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

# Fit a linear line on point plot
ggplot(data = mpg, mapping = aes(x = displ, y = hwy))+
  geom_point(mapping = aes(color=class)) +
  geom_smooth(method='lm', formula= y~x)

# Fit a smooth line on point plot
ggplot(data = mpg, mapping = aes(x = displ, y = hwy))+
  geom_point(mapping = aes(color=class)) +
  geom_smooth(method='loess', formula= y~x)

ggplot(data = mpg, mapping = aes(x = displ)) +
  geom_histogram(color = 'blue', fill = 'blue')

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

ggplot(data = mpg) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv)
  )

# Exercise 3.6.1
ggplot(data = mpg, mapping = aes(x=displ, y=hwy)) +
  geom_point(size = 5) +
  geom_smooth(method='loess', formula = y~x, se = FALSE)


ggplot(data = mpg, mapping = aes(x=displ, y=hwy, group = drv)) +
  geom_point(size = 5) +
  geom_smooth(method='loess', formula = y~x, se = FALSE)


ggplot(data = mpg, mapping = aes(x=displ, y=hwy, color = drv)) +
  geom_point(size = 5) +
  geom_smooth(method='loess', formula = y~x, se = FALSE)

ggplot(data = mpg, mapping = aes(x=displ, y=hwy)) +
  geom_point(size = 5, aes(color = drv)) +
  geom_smooth(method='loess', formula = y~x, se = FALSE)

ggplot(data = mpg, mapping = aes(x=displ, y=hwy, color = drv)) +
  geom_point(size = 5) +
  geom_smooth(method='loess', formula = y~x, se = FALSE, aes(linetype=drv))

