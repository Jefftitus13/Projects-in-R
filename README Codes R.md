# Data_Cleaning using R

#Removing unneeded columns
players_19$player_url <- NULL
players_19$real_face <- NULL
players_19$international_reputation <- NULL
players_19$body_type <- NULL
players_19$player_tags <- NULL

#Viewing the table
View(players_19)

#Changing height from centimeter to feet
players_19 <- players_19 %>% 
  mutate(height_feet = height_cm / 30.48, sep ="ft")
print(players_19)
View(players_19)

#Viewing the updated height
players_19 %>% 
  select(height_feet)

#Changing weight from kilograms to pounds
players_19 <- players_19 %>% 
  mutate(weight_ibs = weight_kg * 2.20462, sep ="ibs")
print(players_19)
View(players_19)

#Viewing the updated weight
players_19 %>% 
  select(weight_ibs)

#Concatenating team jersey and nation jersey
players_19 <- unite(players_19, 'jersey_numbers', team_jersey_number, nation_jersey_number, sep =',')
View(players_19)

#Concatenating team position and nation position
players_19 <- unite(players_19, 'club_and_nation_positions', team_position, nation_position, sep =',')
View(players_19)


# Data_Analysing using R

#Finding average ratings of movies
average_ratings <- mean(imdb_top_1000$IMDB_Rating)
print(average_ratings)

#Finding the average meta score of movies
average_metascore <- mean(imdb_top_1000$Meta_score)
print(average_metascore)

#Finding out the maximum IMDB ratings of movies
max_imdb_rating <- imdb_top_1000 %>% 
  group_by(Series_Title) %>% 
  drop_na() %>% 
  summarise(max_imdb_rating=max(IMDB_Rating)) %>% 
  arrange(-max_imdb_rating)
print(max_imdb_rating)
select(max_imdb_rating)
View(max_imdb_rating)

#Finding out the minimum IMDB ratings of movies
min_imdb_rating <- imdb_top_1000 %>% 
  group_by(Series_Title) %>% 
  drop_na() %>% 
  summarise(min_imdb_rating=min(IMDB_Rating)) %>% 
  arrange(min_imdb_rating)
print(min_imdb_rating)
select(min_imdb_rating)
View(min_imdb_rating)

#To find out highest grossing movie
max_gross_movie <- imdb_top_1000 %>% 
  group_by(Series_Title) %>% 
  drop_na() %>% 
  summarise(max_gross_movie=max(Gross)) %>% 
  arrange(-max_gross_movie)
print(max_gross_movie)
select(max_gross_movie)
View(max_gross_movie)
#Star Wars: Episode VII - The Force Awakens is the top grossed movie ever followed by end game

#To filter specific genre
selected_genre <- ("Drama")
Drama <- imdb_top_1000 %>% filter(Genre %in% selected_genre)
View(Drama)

#To find which genre make highest gross and top rated in IMDB
selected_genres <- c("Action", "Horror", "Comedy", "Thriller")
filterd_movies <- imdb_top_1000 %>% filter(Genre %in% selected_genres) %>% 
  filter(IMDB_Rating>8) %>% 
  filter(Gross>10000000)
View(filterd_movies)
#Life of Brian a comedy genre movie is the highest gross plus top rated movie

#To filter movies according to released year
year_90s <- imdb_top_1000 %>% filter(Released_Year == 1998, IMDB_Rating > 8)
View(year_90s)

#To find which year is the golden time for movies
years_to_filter <- c(1998, 1999, 2000)
movies <- imdb_top_1000 %>% filter(Released_Year %in% years_to_filter) %>%
  filter(IMDB_Rating>8.5) %>% 
  arrange(Released_Year)
View(movies)
#1999 is the year of golden cinemas

#To filter movies that are A certified
certificates <- imdb_top_1000 %>% 
  filter(Certificate == "A") %>% 
  filter(IMDB_Rating>8)
View(certificates)

#To filter movies on basis of director's name
director <- imdb_top_1000 %>% filter(Director == "Christopher Nolan")
View(director)
#Nolan got eight of his movies in top IMDB rating

#To find which directors have more movies in the IMDB ratings
directors <- c("Christopher Nolan", "Martin Scorsese", "David Fincher", "Quentin Tarantino")
names <- imdb_top_1000 %>% filter(Director%in%directors) %>% arrange(-IMDB_Rating)
View(names)
#Turns out only Martin Scorsese movies have been in top IMDB rating for 10 times

#Correlating two actors' names on basis of top rated IMDB
stars <- c("Leonardo DiCaprio", "Christian Bale")
stars_name <- imdb_top_1000 %>% group_by(Series_Title) %>%
  drop_na() %>% 
  filter(Star1%in%stars) %>% 
  filter(IMDB_Rating>7) %>% 
  arrange(-IMDB_Rating)
View(stars_name)
#Dicaprio has appeared many times compare to Christian Bale


#Data_visualization using R

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
