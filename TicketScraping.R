install.packages("rvest")

library(pacman) 

pacman::p_load(pacman, dplyr,rvest) 

link <- "https://www.zillow.com/brooklyn-new-york-ny/rentals/?searchQueryState=%7B%22mapBounds%22%3A%7B%22north%22%3A40.793235860408586%2C%22east%22%3A-73.90149779524465%2C%22south%22%3A40.642050580241396%2C%22west%22%3A-74.101654960772%7D%2C%22isMapVisible%22%3Atrue%2C%22filterState%22%3A%7B%22fsba%22%3A%7B%22value%22%3Afalse%7D%2C%22fsbo%22%3A%7B%22value%22%3Afalse%7D%2C%22nc%22%3A%7B%22value%22%3Afalse%7D%2C%22fore%22%3A%7B%22value%22%3Afalse%7D%2C%22cmsn%22%3A%7B%22value%22%3Afalse%7D%2C%22auc%22%3A%7B%22value%22%3Afalse%7D%2C%22fr%22%3A%7B%22value%22%3Atrue%7D%2C%22ah%22%3A%7B%22value%22%3Atrue%7D%2C%22mp%22%3A%7B%22max%22%3A2000%7D%2C%22price%22%3A%7B%22max%22%3A381295%7D%2C%22sort%22%3A%7B%22value%22%3A%22paymenta%22%7D%7D%2C%22isListVisible%22%3Atrue%2C%22regionSelection%22%3A%5B%7B%22regionId%22%3A37607%2C%22regionType%22%3A17%7D%2C%7B%22regionId%22%3A12530%2C%22regionType%22%3A17%7D%5D%2C%22pagination%22%3A%7B%7D%2C%22mapZoom%22%3A12%7D"
page <- read_html(link)
page

airline <- page %>% html_element(".iMKTKr")

airline
