#Visualising Gamma data

#Visualising Gamma data getting an idea of the spread of the data for each tissue type and site
library(tidyverse)
library(readxl)
Gamma_data <- read_excel("data/Gamma data.xlsx")

#Plots decribing data from each site

#ggplot for 13C
ggplot(Gamma_data, aes(x= type, y = d13C, colour= site)) +
  labs(
    title ="Site compared to 13C stable isotope ratios",
    x="Tissue type", y= expression(delta ~ "13c"))+
  geom_line() +
  facet_wrap(~site)+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

#ggplot for 15N
ggplot(Gamma_data,aes(x = type, y = d15N, colour = site)) +
  labs(
    title ="Site compared to 15N stable isotope ratios",
    x="Tissue type", y= expression(delta ~ "15N"))+
  geom_line() +
  facet_wrap(~site)+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

#ggplot for C%
ggplot(Gamma_data, aes(x= site, y = d13C, colour= site)) +
  labs(
    title ="Tissue type compared to 13C stable isotope ratios",
    x="site", y= expression(delta ~ "13c"))+
  geom_line() +
  facet_wrap(~type)+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
  theme_bw()

#ggplot for N%
ggplot(Gamma_data, aes(x= site, y = d15N, colour= site)) +
  labs(
    title ="Tissue type compared to 15N stable isotope ratios",
    x="site", y= expression(delta ~ "15N"))+
  geom_line() +
  facet_wrap(~type)+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
# having problems getting [%N] and [%C] plotted


summary<-summary.data.frame(gamma_data)

summary
select(Gamma_data, d13C, d15N, site, type,sample)
Isot<-select(Gamma_data,d13C, d15N, site, type)
filter(Gamma_data, type>=crab)
filter(Gamma_data, type=crab)
iso<-filter(Gamma_data, type=="crab")
iso
iso


