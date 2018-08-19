library(gsheet)
url = 'https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=216113907'
denco = as.data.frame(gsheet2tbl(url))
denco
str(denco)
head(denco)

summarise(denco)
summary(denco)
table(denco$custname)

denco %>% dplyr::count(custname, sort=TRUE) %>% head(n=5)
library(dplyr)
denco %>% count(custname, sort=TRUE) %>% head(n=5)

denco %>% aggregate(denco$revenue, by=list(denco$partnum), FUN=sum)

denco %>% summarise(meanmarks1 = mean(marks1), min(marks2), max(marks2)) %>% arrange(desc(meanmarks1)) %>% filter(gender=='Male') %>% head(n=3)
