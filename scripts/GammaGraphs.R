#Visualising Gamma data
library(tidyverse)
library(readxl)

#read in data file
gamma_data <- read_csv("data/Gamma_data.csv")


#write gamma_data csv to examine tidy data frame. https://csiro-data-school.github.io/focus-assignments/

### write_csv(Gamma_data, "data/gamma_data.csv")

#read in column names
colnames(gamma_data)

#renaming columns to something meaningful and machine readable.
rename(gamma_data, sample_name = "Sample name", sample = "sample", site = "site", type = "type",  N15 ="15N", C13 ="13C", N_percent="N [%]", C_percent ="C [%]", CN_ratio= "C/N" )

#change character columns to factors.
#when we cal new values we mutate 


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



#I can't hear you tracy?'








