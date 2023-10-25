# data_cleaning
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
