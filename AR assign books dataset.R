install.packages("arules")

library("arules")

attach(book)

summary(book)

install.packages("arulesViz")
library("arulesViz") 

arules <- apriori(book, parameter = list(support=0.002,confidence=0.6,minlen=2))
arules
inspect(head(sort(arules,by="lift")))

head(quality(arules))

plot(arules)
windows()
plot(arules,method="grouped")
plot(arules[1:20],method = "graph")


arules_1 <- apriori(book, parameter = list(support=0.5,confidence=0.7,minlen=1))
arules
inspect(head(sort(arules,by="lift")))


head(quality(arules))

plot(arules)
windows()
plot(arules,method="grouped")
plot(arules[1:30],method = "graph")


arules_2 <- apriori(book, parameter = list(support=0.3,confidence=0.9,minlen=5))
arules
inspect(head(sort(arules,by="lift")))


head(quality(arules))

plot(arules)
windows()
plot(arules,method="grouped")
plot(arules[1:25],method = "graph")
