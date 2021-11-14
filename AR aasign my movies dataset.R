install.packages("arules")
library("arules") 

View(my_movies)

attach(my_movies)

V1 <- as.factor(V1)
V2 <- as.factor(V2)
V3 <- as.factor(V3)


str(my_movies)
rules <- apriori(my_movies)

arules::inspect(rules)

rules.sorted <- sort(rules,by = "lift")

arules::inspect(rules.sorted)


arules <- apriori(my_movies, parameter = list(support=0.2,confidence=0.6,minlen=2))
arules
summary(my_movies)

install.packages("aruleViz")
library("arulesViz")


plot(arules)
windows()
plot(arules,method="grouped")
plot(arules[1:15],method = "graph")


arules <- apriori(my_movies, parameter = list(support=0.4,confidence=0.5,minlen=3))
arules

summary(my_movies)


plot(arules)
windows()

plot(arules,method="grouped")
plot(arules[1:15],method = "graph")


arules <- apriori(my_movies, parameter = list(support=0.5,confidence=0.7,minlen=4))
arules

summary(my_movies)


plot(arules)
windows()

plot(arules,method="grouped")
plot(arules[1:15],method = "graph")