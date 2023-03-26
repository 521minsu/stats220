library(tidyverse)

song_length <- c(263288, 152137, 175163, 176146, 226088, 242965, 214416, 212000, 179720, 153000, 203807, 258799, 224694, 186173, 167480, 202735, 205946, 185600, 254181, 270586, 186677, 198324, 169237, 165772, 174680, 231832, 215281, 194050, 179426, 261818, 195760, 174728, 207853, 173182, 257213, 178147, 164818, 206385, 214613, 202226, 216120, 191013, 200547, 216764, 136760, 175344, 188918, 212878, 168873, 161840, 193506, 96825, 173549, 160239, 221693, 172626, 193346, 173381, 202133, 161266, 225148, 165760, 224773, 214405, 143901, 145800, 189560, 256000, 231041)
min(song_length)

song_popularity <- c(75, 87, 84, 81, 90, 92, 86, 74, 90, 88, 92, 80, 67, 80, 94, 95, 85, 70, 75, 90, 81, 91, 87, 76, 93, 89, 96, 71, 96, 76, 89, 74, 74, 85, 95, 75, 70, 90, 85, 100, 91, 94, 59, 83, 63, 79, 68, 83, 96, 82, 73, 92, 89, 81, 67, 91, 67, 85, 93, 85, 74, 91, 76, 77, 83, 87, 90, 88, 33, 82, 87, 96, 83)
max(song_popularity[34:45])

song_popularity <- c(87, 73, 96, 70, 88, 89, 67, 92, 59, 85, 91, 74, 96, 89, 68, 77, 90, 86, 96, 82, 95, 87, 94, 76, 83, 91, 70, 74, 83, 75, 80, 87, 87, 85, 75, 94, 76, 96, 71, 63, 74, 81, 81, 83, 89, 96, 100, 85, 85, 92, 67, 82, 81, 76, 76, 83, 88, 90, 93, 83, 90, 87, 92, 67, 90, 85, 74)
sum(song_popularity/8)

song_length <- c(224694, 256000, 167480, 162680, 173549, 153000, 213493, 212000, 205946, 202133, 184893, 185680, 179426, 198324, 143901, 221693, 261818, 207065, 185855, 225664, 226088, 174728, 202226, 174000, 193346, 203807, 194050, 206772, 257213, 270586, 185600, 191013, 195013, 168601, 161266, 187943, 165772, 212878, 254181, 152137, 210560, 185422, 207853, 186173, 214416, 216764, 231832, 202735, 145800, 164818, 258799, 133613, 186677, 214405, 204316, 213718, 179720, 195760, 278440, 169237, 174680, 136266, 178147, 188918, 186538, 172626, 173381, 263288, 136760, 175163, 160239, 2e+05, 189560, 206385)
sum(song_length/1000)/3600

song_title <- c("To Be Loved By You", "P power (feat. Drake)", "High", "pushin P (feat. Young Thug)", "Do We Have A Problem?", "The Family Madrigal", "Need to Know", "Sand In My Boots", "Hrs and Hrs", "Waiting On A Miracle", "Me or Sum (feat. Future & Lil Baby)", "Meet Me At Our Spot", "Big Energy", "good 4 u", "Peru", "I Hate YoungBoy", "Buy Dirt", "You Should Probably Leave", "Ghost", "Oh My God")
song_index <- 10
cat("The title of the song in position", song_index , "is", song_title[song_index])
song_index <- 10
paste("The title of the song in position", song_index , "is", song_title[song_index])

song_title <- c("Boyfriend", "Cigarettes", "I Hate U", "Beers On Me", "Woman", "Knife Talk (with 21 Savage ft. Project Pat)", "STAY (with Justin Bieber)", "Worst Day", "High", "Buy Dirt", "Smokin Out The Window", "One Mississippi", "THATS WHAT I WANT", "Never Say Never (with Lainey Wilson)", "Rumors (feat. Lil Durk)", "Freaky Deaky", "Essence (feat. Justin Bieber & Tems)", "When I’m Gone (with Katy Perry)", "I'm Tired - From 'Euphoria' An HBO Original Series", "Hrs and Hrs", "Bad Habits", "Heat Waves", "Still D.R.E.", "Sand In My Boots", "Home Sweet", "Better Days (NEIKED x Mae Muller x Polo G)", "Broadway Girls (feat. Morgan Wallen)", "Do We Have A Problem?", "Save Your Tears (with Ariana Grande) (Remix)")
song_title %>% view()
sum(nchar(song_title))

song_title <- c("One Right Now (with The Weeknd)", "Waiting On A Miracle", "Scorpio", "love nwantiti (ah ah ah)", "I Love You So", "Circles Around This Town", "Hrs and Hrs", "Light Switch")
song_popularity <- c(92, 87, 74, 93, 95, 76, 88, 92)
song_length <- c(193506, 161840, 165772, 145800, 160239, 195760, 204316, 185680)
tibble(song_title, song_popularity, song_length)

song_data <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vS7R6DHE_92iP3XMxWScK4fuHfomugS3IKXz4SEDhPi_8kwhUyqJTKAKm1byjHCEKRVnh-Y2mTG9RkH/pub?gid=1060910212&single=true&output=csv")

song_data %>% View()

song_data <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vS7R6DHE_92iP3XMxWScK4fuHfomugS3IKXz4SEDhPi_8kwhUyqJTKAKm1byjHCEKRVnh-Y2mTG9RkH/pub?gid=1577204501&single=true&output=csv")
song_data %>% View()
nchar("Heat Waves")
