# Required packages
require(sqldf)
require(mclust)


#import all the data for beer
df <- read.csv("https://query.data.world/s/5wrkcltf0rqhyu2ahlayldrfg")

#testing

wtest <- sqldf('select * from df where beer_style == "Doppelbock"')

#write.csv(df,'df1.csv')

# Import the the review of Dr.Ousley for clustering
editeddb <- read.csv("C://Users//Nucleus//Desktop//Project//beer//df.csv")

reviewdb <- sqldf('select distinct brewery_id,brewery_name, beer_style, beer_beerid, beer_name, review_overall, review_profilename from editeddb')

write.csv(reviewdb,'review.csv')

#Load the new trimmed data for analysis

review <- read.csv("C://Users//Nucleus//Desktop//Project//beer//review.csv")

checkmate <- sqldf('select distinct brewery_id,brewery_name, beer_style, beer_beerid, beer_name, review_overall, review_profilename from review where review_profilename == "sousley"')
