ggplot(data = diamonds) + 
  geom_bar(mapping = 
             aes(x = cut, 
                 fill = clarity) )

#GGPLOT GUIDE

ggplot(data = <DATA>) + 
  <GEOM_FUNCTION>(
    mapping = aes(<MAPPINGS>),
    stat = <STAT>, 
    position = <POSITION>) +
  <COORDINATE_FUNCTION> +
  <FACET_FUNCTION> +
  <SCALE_FUNCTIONS> +
  <GUIDES> +
  <THEME>
  
  
  ggplot(data = mpg, 
         mapping = aes(x = displ, y = hwy, 
                       color = drv)) +
  geom_point(alpha = .4) +
  geom_smooth(se = FALSE)


#Q1c A
ggplot(data = mpg) + 
  geom_point(mapping = 
               aes(x = displ, 
                   y = hwy),
             alpha = .3) +
  geom_smooth(mapping = 
                aes(x = displ, 
                    y = hwy))
#Q1c B
ggplot(data = mpg, 
       mapping = aes(x = displ, y = hwy, group = drv)) +
  geom_point(alpha = .4) +
  geom_smooth(se = FALSE)

#Q1c C
ggplot(data = mpg, 
       mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point(alpha = .4) +
  geom_smooth(se = FALSE)

#Q1c D
ggplot(data = mpg, 
       mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point(alpha = .4) +
  geom_smooth(se = FALSE, color = "blue")

#Q1c E
ggplot(data = mpg, 
       mapping = aes(x = displ, y = hwy, color = drv, linetype = drv)) +
  geom_point(alpha = .4) +
  geom_smooth(se = FALSE, color = "blue")
#Q1c F
ggplot(data = mpg, 
       mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point(color = "white", size = 4) +
  geom_point(alpha = .3, size = 2)

#Q1 D


#Q2b

install.packages("nycflights13")
install.packages("dplyr")
library(ggplot2)
library(dplyr)

flights <- nycflights13::flights
airlines <- nycflights13::airlines

flights <- flights |> 
  left_join(airlines)

airlines_n <- flights |>
  count(name |>
          arrange(-n))

ggplot(flights) + 
  geom_bar(aes(y = name,
               fill = origin),
           position = position_dodge(preserve = 'single'))



#q3a
install.packages("gapminder")

library(gapminder)
p <- ggplot(data = gapminder,
            mapping = aes(x = log10(gdpPercap),
                          y = lifeExp))
p + 
  geom_point(alpha = .2) +
  geom_smooth()

#q3b

p <- ggplot(data = gapminder,
            mapping = aes(x = log10(pop),
                          y = lifeExp))
p + 
  geom_point(alpha = .2) +
  geom_smooth()+
  facet_wrap(~continent)

#

ggplot(gapminder, 
       mapping = aes (x = log(gdpPercap),
                      y = lifeExp)) +
  geom_point(alpha = .2) +
  geom_smooth(aes(color = country), show.legend = F)







