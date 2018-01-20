dataframe <- read.csv("https://query.data.world/s/5wrkcltf0rqhyu2ahlayldrfg")


odist <- dataframe[which(dataframe$beer_name== "90 Minute IPA" | 
                           dataframe$beer_name== "Berliner Kindl Bockbiere" | 
                           dataframe$beer_name== "Budweiser" | 
                           dataframe$beer_name== "Budweiser Budvar" | 
                           dataframe$beer_name== "Chang Beer (Domestic)" | 
                           dataframe$beer_name== "Chimay Grande Réserve (Blue)" | 
                           dataframe$beer_name== "Chimay Première (Red)" | 
                           dataframe$beer_name== "Chimay Tripel (White)" | 
                           dataframe$beer_name== "Christmas Ale" | 
                           dataframe$beer_name== "Circus Boy" | 
                           dataframe$beer_name== "Corona Extra" | 
                           dataframe$beer_name== "Dos Equis Amber Lager" | 
                           dataframe$beer_name== "Dos Equis Dark Lager" | 
                           dataframe$beer_name== "Double Dog Double Pale Ale" | 
                           dataframe$beer_name== "Erdinger Weissbier" | 
                           dataframe$beer_name== "Erdinger Weissbier Kristallklar" | 
                           dataframe$beer_name== "Gordon Biersch Märzen" | 
                           dataframe$beer_name== "Guinness Draught" | 
                           dataframe$beer_name== "Harp Lager" | 
                           dataframe$beer_name== "In-Heat Wheat" | 
                           dataframe$beer_name== "La Fin Du Monde" | 
                           dataframe$beer_name== "Märzen" | 
                           dataframe$beer_name== "Michelob (Original Lager)" | 
                           dataframe$beer_name== "Paulaner Hefe-Weissbier" | 
                           dataframe$beer_name== "Naturtrüb" | 
                           dataframe$beer_name== "Schöfferhofer Hefeweizen" | 
                           dataframe$beer_name== "Schöfferhofer Kristallweizen" | 
                           dataframe$beer_name== "St. Bernardus Abt 12" | 
                           dataframe$beer_name== "St. Bernardus Tripel" | 
                           dataframe$beer_name== "Trappistes Rochefort 10" |
                           dataframe$beer_name== "Trappistes Rochefort 6" |
                           dataframe$beer_name== "Trappistes Rochefort 8" |
                           dataframe$beer_name== "Troegenator Double Bock" |
                           dataframe$beer_name== "Tröegs ESB Ale" |
                           dataframe$beer_name== "Weihenstephaner Hefeweissbier"),]


test <- read.csv("C://Users//Nucleus//Desktop//Project//beer//review.csv")
sousley <- test[which(df$review_profilename == "sousley"),] 

write.csv(sousley,'review12.csv')