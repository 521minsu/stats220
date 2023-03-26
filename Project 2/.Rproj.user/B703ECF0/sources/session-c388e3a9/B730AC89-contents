# Call tidyverse library
library(tidyverse)

# Read survey data from an online csv file
learning_data <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vTVuy1fPPIKSOyY9a7iTAXSzSTFtoYgMtsJCJZNg3IXHNhyJpDh0Cf9FNoeSjf0Nfa_f2ZJZdhyGz8C/pub?output=csv")

# Modify raw survey data (Mostly renaming columns and removing the timestamp column)
learning_data_mod <- learning_data %>%
  select(-1) %>%
  rename("Age" = questionOne) %>%
  rename("Time Spent per Week" = questionTwo) %>%
  rename("Confidence" = questionThree) %>%
  rename("Learning Type" = questionFour) %>%
  rename("Group Preference" = questionFive) %>%
  rename("Study Time" = questionSix) %>%
  rename("Study Period" = questionSeven) %>%
  rename("Study Method" = questionEight)
view(learning_data_mod)
view(learning_data)


########## Bar Graph ##########
# Preparation for study method bar chart
countryVisit <- learning_data %>%
  filter(str_detect(questionEight, "Visiting"))
countryVisit <- nrow(countryVisit)

apps <- learning_data %>%
  filter(str_detect(questionEight, "apps"))
apps <- nrow(apps)

friend <- learning_data %>%
  filter(str_detect(questionEight, "friend"))
friend <- nrow(friend)

tuition <- learning_data %>%
  filter(str_detect(questionEight, "Tuition"))
tuition <- nrow(tuition)

groupStud <- learning_data %>%
  filter(str_detect(questionEight, "group"))
groupStud <- nrow(groupStud)

selfStud <- learning_data %>%
  filter(str_detect(questionEight, "Self"))
selfStud <- nrow(selfStud)

cats <- c("Country visit", "Apps (eg. Duolingo)", "With a friend", "Private Tuition", "Group study", "Self study")
vals <- c(countryVisit, apps, friend, tuition, groupStud, selfStud)
studMet <- data.frame(cats, vals)

# Bar chart on Study Method
studMet_chart <- studMet %>%
  ggplot(aes(x=cats, y=vals)) +
  geom_bar(fill = "#AA3333", stat="identity") +
  scale_y_continuous(breaks = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13)) +
  labs(title="Preferred Study Method", x = "Study Method", y = "count") +
  theme(plot.title=element_text(hjust=0.5))

print(studMet_chart)

# Bar chart on Confidence level
confLevel_chart <- learning_data_mod %>%
  ggplot(aes(Confidence)) +
  geom_bar(fill = "#33AA33") +
  scale_y_continuous(breaks = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)) +
  labs(title="Confidence Level on a scale from 1 to 5", x = "Confidence Level") +
  theme(plot.title=element_text(hjust=0.5))

print(confLevel_chart)

# Bar chart on Time Spent per Week
timeSpent_chart <- learning_data %>%
  ggplot(aes(questionTwo)) +
  geom_bar(fill = "#3333AA") +
  scale_x_continuous(breaks = c(0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30)) +
  labs(title="Time spent for second language per week", x = "Time (hours)") +
  theme(plot.title=element_text(hjust=0.5))

print(timeSpent_chart)


########## Summary Values ##########
# Average time spent on learning second language per week in hours
avgTime <- mean(learning_data$questionTwo)
# Max time spent on learning second language per week in hours
maxTime <- max(learning_data$questionTwo)
# Min time spent on learning second language per week in hours
minTime <- min(learning_data$questionTwo)

# Average Self-reported Confidence Level on a scale of 1 to 5
avgConf <- mean(learning_data$questionThree)
# Max Self-reported Confidence Level on a scale of 1 to 5
maxConf <- max(learning_data$questionThree)
# Min Self-reported Confidence Level on a scale of 1 to 5
minConf <- min(learning_data$questionThree)
