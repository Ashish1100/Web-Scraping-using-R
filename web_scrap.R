
# Installing "rvest package" and importing/loading

# install.packages("rvest")

library(rvest)


# Reading the page

amazon<-read_html("https://www.amazon.in/s?k=iphone&crid=154N2SMA50ZCL&sprefix=iphone%2Caps%2C321&ref=nb_sb_noss_1")


# view the page

View(amazon) 



# Getting the details
amazon %>% html_nodes(".a-size-medium") %>% html_text()


titles<- amazon %>% html_nodes(".a-size-medium") %>% html_text()

ratings<- amazon %>% html_nodes(".a-icon") %>% html_text()

cost<- amazon %>% html_nodes(".a-price-whole") %>% html_text()


# Binding

iphones<- cbind(titles, ratings, cost)




