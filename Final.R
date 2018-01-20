df <- read.csv("C://Users//Nucleus//Desktop//Project//beer//review.csv")

#ousley favourite beer style

ostyle <- df[which(df$review_profilename == "sousley" | 
    df$review_profilename == "northyorksammy" | 
    df$review_profilename == "BuckeyeNation" | 
    df$review_profilename == "BEERchitect" | 
    df$review_profilename ==  "Thorpe429" | 
    df$review_profilename ==  "womencantsail" | 
    df$review_profilename == "NeroFiddled" | 
    df$review_profilename == "ChainGangGuy" | 
    df$review_profilename == "brentk56" | 
    df$review_profilename == "Phyl21ca" | 
    df$review_profilename == "WesWes" | 
    df$review_profilename == "oberon" | 
    df$review_profilename == "jwc215" | 
    df$review_profilename == "russpowell" | 
    df$review_profilename == "TheManiacalOne" | 
    df$review_profilename == "feloniousmonk" | 
    df$review_profilename == "weeare138" | 
    df$review_profilename == "Zorro" | 
    df$review_profilename == "jdhilt" | 
    df$review_profilename == "tempest" | 
    df$review_profilename == "Jason" | 
    df$review_profilename == "Globetrotter" | 
    df$review_profilename == "Gueuzedude" | 
    df$review_profilename == "Gusler" | 
    df$review_profilename == "WVbeergeek" | 
    df$review_profilename == "Wasatch" | 
    df$review_profilename == "akorsak" | 
    df$review_profilename == "jpm30" | 
    df$review_profilename == "Bighuge" | 
    df$review_profilename == "zeff80"),] 

ostyle$review_profilename <- as.factor(ostyle$review_profilename)
# many columns are Nas

attach(ostyle);

library(MASS);




summary(ostyle[,c("brewery_id","brewery_name","beer_style","beer_beerid","beer_name","review_overall","review_profilename")])


#install.packages("Morpho")
require(Morpho)


pVCVM <- covW(ostyle[,c(5,7)],ostyle[,8])
#pVCVM <- covW(ostyle[,7],ostyle[,8])

Dist <- CVA(ostyle[,c(5,7)],ostyle[,8])
#Dist <- CVA(ostyle[,7],ostyle[,8])

Dist$Dist

Dist$Dis$GroupdistMaha^2



HWD2mat <- Dist$Dis$GroupdistMaha^2
HWEDmat <- Dist$Dis$GroupdistEuclid

par(mfrow = c(2,2))
HWD2clust <- hclust(as.dist(HWD2mat),method="average")
plot(HWD2clust, main = 'Beer groups dendrogram using UPGMA and D2')
HWD2clust <- hclust(as.dist(HWD2mat),method="centroid")
plot(HWD2clust, main = 'Beer groups dendrogram using centroid and D2')
HWEDclust <- hclust(as.dist(HWEDmat),method="average")
plot(HWEDclust, main = 'Beer groups dendrogram using UPGMA and Euclid D')
HWEDclust <- hclust(as.dist(HWEDmat),method="centroid")
plot(HWEDclust, main = 'Beer groups dendrogram using centroid and Euclid D')

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

df1 <- read.csv("https://query.data.world/s/5wrkcltf0rqhyu2ahlayldrfg")

                     
                     
                     
                     

gusler <- sqldf('select * from df1 where review_profilename == "Gusler"')
                              

gusler1 <- sqldf('select * from gusler where review_overall == 5 and
                                         review_aroma == 5 and
                                         review_appearance == 5 and
                                         review_palate == 5 and
                                         review_taste == 5')

gusler2 <- sqldf('select * from gusler1 where beer_abv > 5')


cleandf <- gusler2[which(gusler2$beer_style == "American Double / Imperial IPA" | 
                           gusler2$beer_style == "Bock" | 
                           gusler2$beer_style ==  "American Adjunct Lager" |
                           gusler2$beer_style ==  "Belgian Strong Dark Ale" |
                           gusler2$beer_style == "Doppelbock" |  
                           gusler2$beer_style == "Quadrupel (Quad)"| 
                           gusler2$beer_style == "Märzen / Oktoberfest"| 
                           gusler2$beer_style == "Hefeweizen"),]

