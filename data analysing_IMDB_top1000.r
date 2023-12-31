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
#Turns out Martin Scorsese movies have been in top IMDB rating for 10 times

#Correlating two actors' names on basis of top rated IMDB
stars <- c("Leonardo DiCaprio", "Christian Bale")
stars_name <- imdb_top_1000 %>% group_by(Series_Title) %>%
  drop_na() %>% 
  filter(Star1%in%stars) %>% 
  filter(IMDB_Rating>7) %>% 
  arrange(-IMDB_Rating)
View(stars_name)
#Dicaprio has appeared many times compare to Christian Bale
