library(tidyverse)

song_popularity <- c(95, 96, 89, 87, 85, 76, 67, 70, 73, 95, 85, 68, 83, 85, 89, 82, 83, 86, 93, 100, 74, 89, 81, 75, 63, 81, 74, 77, 86, 90, 87, 77, 70, 59, 75, 91, 93, 90, 85, 92, 88, 90, 83, 96, 92, 91, 97, 74, 76, 87, 75, 96, 92, 85, 74, 72, 96, 94, 67, 76, 85, 93, 71, 92, 82, 84, 85, 94, 79, 75, 89, 98, 33, 79, 71, 88, 74, 96, 80, 92, 85, 87, 95, 90)
sum(song_popularity[13:30])

song_popularity <- sort(song_popularity, TRUE)
song_popularity[7]

song_popularity[11] != song_popularity[39]

song_length <- c(213718, 184893, 254181, 204316, 224773, 173381, 261818, 256000, 161853, 197442, 175344, 96825, 174728, 173182, 191013, 186538, 152137, 206772, 186677, 194050, 193279, 179720, 207853, 213493, 205946, 215281, 258799, 160239, 188918, 175163, 162680, 189560, 227527, 206385, 160656, 200000, 242965, 195760, 198324, 161266, 212878, 200547, 169237, 225664, 195013, 187111, 176146, 145800, 174680, 187943, 168601, 193346, 157890, 193506, 185680, 143901, 207065, 172626, 270586, 185422, 186173, 231041, 164818, 136266, 165760, 238805, 278440, 178147, 257213, 214416, 153190, 133613, 136760, 165772, 210560, 185600, 179426, 161840, 203807, 202133, 173549, 174000, 168873, 141805, 202735)
length(song_length[song_length <= 200547])

song_title <- c("Do We Have A Problem?", "One Mississippi", "P power (feat. Drake)", "City of Gods", "Ghost", "Need to Know", "All Of You", "MAMIII", "Usain Boo", "Buy Dirt", "Nail Tech", "Still D.R.E.", "INDUSTRY BABY (feat. Jack Harlow)", "Enemy (with JID) - from the series Arcane League of Legends", "Peru", "Rocking A Cardigan in Atlanta", "abcdefu", "Don't Play That", "Dos Oruguitas", "she's all i wanna be", "Sacrifice", "When I’m Gone (with Katy Perry)", "Me or Sum (feat. Future & Lil Baby)", "Fancy Like", "Freaky Deaky", "Woman", "Big Energy", "TO THE MOON", "Doin' This", "Banking On Me", "Flower Shops (feat. Morgan Wallen)", "pushin P (feat. Young Thug)", "Beautiful Lies", "Meet Me At Our Spot", "Fingers Crossed", "Do It To It", "I Hate U", "Closer (feat. H.E.R.)", "Surface Pressure", "I Wish", "One Right Now (with The Weeknd)", "Circles Around This Town", "Heart On Fire", "The Joker And The Queen (feat. Taylor Swift)", "Cigarettes", "I Love You So", "Broadway Girls (feat. Morgan Wallen)", "To Be Loved By You", "Waiting On A Miracle", "Home Sweet", "Bussin", "AHHH HA", "good 4 u", "Cold Heart - PNAU Remix", "Boyfriend", "You Right", "Knife Talk (with 21 Savage ft. Project Pat)", "AA", "Beers On Me", "half of my hometown (feat. Kenny Chesney)", "Never Wanted To Be That Girl", "Iffy", "High", "Rumors (feat. Lil Durk)", "Never Say Never (with Lainey Wilson)", "Come Back As A Country Boy", "Better Days (NEIKED x Mae Muller x Polo G)", "We Don't Talk About Bruno", "love nwantiti (ah ah ah)", "Good Morning Gorgeous", "Bad Habits", "23", "Sand In My Boots", "Worst Day", "Heat Waves", "Easy On Me", "By Your Side", "I'm Tired - From 'Euphoria' An HBO Original Series", "Save Your Tears (with Ariana Grande) (Remix)", "The Motto", "What Else Can I Do?", "THATS WHAT I WANT", "Slow Down Summer")
song_title[nchar(song_title) > 24]

song_data <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vS8ynnfEAOH9G59D6ZS0EhW6X9taKBE2ou0Z6qO_XJUzwCuD_DjNvDNRNuouNivlgptmqyqBZYsrKTs/pub?gid=367178289&single=true&output=csv")
song_data %>% 
  arrange(desc(duration_ms)) %>%
  glimpse()

song_data %>%
  filter(rand_var > 0.82) %>%
  glimpse()

song_title <- c("I Wish", "Worst Day", "I Love You So", "Scorpio", "Cigarettes", "Iffy", "Flower Shops (feat. Morgan Wallen)", "All Of You", "By Your Side", "Do It To It", "When I’m Gone (with Katy Perry)", "Slow Down Summer", "Never Wanted To Be That Girl", "Usain Boo", "If I Was a Cowboy", "I Hate YoungBoy", "Bussin", "Home Sweet")
song_length <- c(165760, 184893, 160239, 165772, 227527, 173549, 214405, 278440, 194050, 157890, 161266, 216764, 214416, 186677, 195013, 261818, 136760, 205946)
song_popularity <- c(67, 81, 95, 74, 87, 75, 80, 85, 83, 95, 87, 75, 72, 74, 77, 70, 83, 68)

song_data <- tibble(song_title, song_length, song_popularity)

song_data %>%
  mutate(song_income = song_length * 0.03) %>%
  view()

song_data %>%
  mutate(song_title_lower = tolower(song_title)) %>%
  
  filter(str_detect(song_title_lower, "i")) %>%
  view()
