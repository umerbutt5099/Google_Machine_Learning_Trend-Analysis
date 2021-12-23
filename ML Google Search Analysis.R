library(tidyverse)
library(gtrendsR)
M<-gtrends("Machine Learning")
View(M)
data<-M$interest_by_country
ten<-head(data,10)
ten
ten<-head(data,15)
ten<-na.omit(ten)
ten
ggplot(ten) + geom_col(aes(x=location, y=hits))
mliot<-M$interest_over_time
ggplot(mliot,aes(date,hits)) +geom_line(size=1, color="Violet")+geom_point(size=2, color="Blue")+xlab("Year")+ylab("Hits")
