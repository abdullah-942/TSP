install.packages("tidyverse")
install.packages("ggpubr")

data <- read.csv("C:/Users/aishaque/Downloads/student_scores - student_scores.csv")
View(data)
summary(data)
cor(data$Scores, data$Hours)

#The correlation coefficient measures the level of the association between two variables x and y. 
#Its value ranges between -1 (perfect negative correlation: when x increases, y decreases) and 
#+1 (perfect positive correlation: when x increases, y increases).
#A value closer to 0 suggests a weak relationship between the variables. 
#A low correlation (-0.2 < x < 0.2) probably suggests that much of variation of the outcome 
#variable (y) is not explained by the predictor (x). In such case, we should probably look for 
#better predictor variables.


#Since it is a fairly small data, we can easily check that there are no missing values.
#Jumping to correlation part

model <- lm(Scores ~ Hours, data = data)
model

summary(model)
confint(model)
predict(model, data.frame(Hours = 9.25))
