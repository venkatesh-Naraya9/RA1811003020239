#VENKATESHNARAYAN239

#PAYTMEBSCRAPING
library(robotstxt)
path <- paths_allowed ("https://paytmmall.com/men-t-shirts-glpid-5030?use_mw=1&src=store&from=storefront")

url <-"https://paytmmall.com/men-t-shirts-glpid-5030?use_mw=1&src=store&from=storefront"
#define(library)
library(dplyr)
library(rvest)

web<- read_html(url)

Name<-web%>%html_nodes(".UGUy")%>%html_text()
Price <-web%>%html_nodes("._2MEo")%>%html_text()
Cashback <-web%>%html_nodes("._1mS1")%>%html_text()

Menswear_Offers<- data.frame(Name,Price,Cashback)
View(Menswear_Offers)

write.csv(Offers, "PAYTM.csv")
