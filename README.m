# Data_Cleaning
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


# Data_Analysing
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

#To filter specific genre
selected_genre <- ("Drama")
Drama <- imdb_top_1000 %>% filter(Genre %in% selected_genre)
View(Drama)

#To filter more genres
selected_genres <- c("Action", "Horror", "Comedy", "Thriller")
filterd_movies <- imdb_top_1000 %>% filter(Genre %in% selected_genres)
View(filterd_movies)

#To filter movies according to released year
year_90s <- imdb_top_1000 %>% filter(Released_Year == 1998, IMDB_Rating > 8)
View(year_90s)

#To filter more than two years of released year
years_to_filter <- c(1998, 1999, 2000)
movies <- imdb_top_1000 %>% filter(Released_Year %in% years_to_filter) %>% arrange(Released_Year) %>% 
  filter(IMDB_Rating>8)
View(movies)

#To filter movies that are A certified
certificates <- imdb_top_1000 %>% 
  filter(Certificate == "A") %>% 
  filter(IMDB_Rating>8)
View(certificates)

#To filter movies on basis of director's name
director <- imdb_top_1000 %>% filter(Director == "Christopher Nolan")
View(director)

#To filter more than two directors
directors <- c("Christopher Nolan", "Martin Scorsese", "David Fincher", "Quentin Tarantino")
names <- imdb_top_1000 %>% filter(Director%in%directors) %>% arrange(-IMDB_Rating)
View(names)

#To filter particular star's name
star_name <- imdb_top_1000 %>% filter(Star1 == "Leonardo DiCaprio")
View(star_name)
