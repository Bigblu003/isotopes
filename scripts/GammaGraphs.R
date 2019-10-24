#Visualising Gamma data
library(tidyverse)
library(readxl)

#read in data file
gamma_data <- read_csv("data/Gamma_data.csv")


#write gamma_data csv to examine tidy data frame. https://csiro-data-school.github.io/focus-assignments/

### write_csv(Gamma_data, "data/gamma_data.csv")


ggplot(Gamma_data, aes(x= type, y = d13C, colour= site)) +
 labs(
 title ="Site compared to 13C stable isotope ratios",
 x="Tissue type", y= expression(delta ~ "13c"))+
 geom_line() +
 facet_wrap(~site)+
 theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))


ggplot(Gamma_data,aes(x = type, y = d15N, colour = site)) +
  labs(
    title ="Site compared to 15N stable isotope ratios",
    x="Tissue type", y= expression(delta ~ "15N"))+
  geom_line() +
  facet_wrap(~site)+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

#I've changed everything












