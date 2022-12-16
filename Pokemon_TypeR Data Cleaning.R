Pokemon TypeR - Data Cleaning

#This script cleans the 3 files prepared in the previous step (in Python)
#and joins them together into one file to use for the package / Shiny app

library(tidyverse)

##Pulling the data##
against<-read_csv("against_types.csv")
rarity<-read_csv("capture_rate.csv")
names<-read_csv("names.csv")


##Data Cleaning##
#rarity only needs to include the type and the %

rarity <- rarity %>%
	select(type, `%`) %>%
	rename(Own_Type = type) %>%
	rename(Share = `%`)


#against needs clearer column headers and drop the "against_" text
against <- against %>%
	rename(Own_Type = type1) %>%
	rename(Against_Type = Against)
#drop first column
against <- against %>%
	select(- ...1)

#join type1 + against, and type2 + against into separate dateframes
#then row-bind them together into dataframe

data<-names%>%
	inner_join(against, by = c("type1" = "Own_Type"), keep = TRUE)

data2<-names%>%
	inner_join(against, by = c("type2" = "Own_Type"), keep = TRUE)


#drop old type columns
data <- data %>%
	select(name, Own_Type, Against_Type, Strength)

data2 <- data2 %>%
	select(name, Own_Type, Against_Type, Strength)

data_full <- bind_rows(data, data2)

#join the rarity dataframe

daten<-data_full%>%
	right_join(rarity, by = c("Own_Type"))

#remove the "against_" text
daten <- daten %>%
    mutate(Against_Type = str_remove_all(Against_Type, "against_"))

#rename "fight" to "fighting" in Against_Type
daten <- daten %>%
    mutate(Against_Type = replace(Against_Type, Against_Type == "fight", "fighting"))

#save data

write.csv(daten,"Pokemon_data.csv")