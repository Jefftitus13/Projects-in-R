data(mtcars)
View(mtcars)
library(ggplot2)

#Bar chart
ggplot(mtcars, aes(x = factor(gear), y = mpg)) +
  geom_bar(stat="summary", fun="mean", fill="green", color="black") +
  labs(title="Average MPG by Gear",
       x="Gear",
       y="Average MPG") +
  theme_minimal()
  
  
#Scatterplot
ggplot(mtcars, aes(x = wt, y = mpg, alpha=wt)) +
  geom_point(color="orange", size=3, shape=19) +
  labs(title="Scatter Plot of MPG against Weight",
       x="Weight",
       y="MPG") +
  theme_minimal()

#Scatter plot with a smoothed line
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue", size = 2) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +  
  labs(title = "Scatter Plot with Smoothed Line",
       x = "Horsepower",
       y = "Miles per Gallon") +
  theme_minimal()+
  annotate("text", x=250, y=30, label="horse power & gallons", fontface="bold", color="darkgreen", size=4.5)
