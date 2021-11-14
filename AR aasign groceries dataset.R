install.packages("arules")
library("arules") 

View(groceries)

inspect(groceries[1:4]) 
class(groceries)


summary(groceries)

install.packages("aruleViz")
library("arulesViz")


arules <- apriori(groceries, parameter = list(support=0.2,confidence=0.6,minlen=2))
arules
inspect(head(sort(arules,by="lift")))


head(quality(arules))


plot(arules)
windows()
plot(arules,method="grouped")
plot(arules[1:4],method = "graph")



arules_1 <- apriori(groceries, parameter = list(support=0.4,confidence=0.5,minlen=1))
arules
inspect(head(sort(arules,by="lift")))


head(quality(arules))


plot(arules)
windows()
plot(arules,method="grouped")
plot(arules[1:4],method = "graph")


arules <- apriori(groceries, parameter = list(support=0.5,confidence=0.7,minlen=3))
arules
inspect(head(sort(arules,by="lift")))


head(quality(arules))


plot(arules)
windows()
plot(arules,method="grouped")
plot(arules[1:4],method = "graph")

