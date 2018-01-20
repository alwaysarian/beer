# Beer Classification : Recommendation using user feedback

## Introduction

The project was based on beer classification and making recommendations based on feedback from users. The research question is centered on the attempt at making beer recommendations from information provided from users’ reviews and ratings based on beer experiences. 

## Dataset and Predictors

The original dataset included 1,580, 487 observations with 13 variables which reduced the sample to the top 20 reviewers. Upon including the rating information from Dr. Ousley to the dataset, there were 84, 387 observations and 8 variables. The following 8 predictors with their nature were used from the dataset:

•	X (continuous)
•	brewery_id (continuous)
•	brewery_name (nominal)
•	beer_style (nominal)
•	beer_beerid (continuous)
•	beer_name (nominal)
•	review_overall (ordinal)
•	review_profilename (factor)

## Method

Clustering or cluster analysis is the statistical analytic method used for this project. Cluster analysis is the most common unsupervised learning method and plays an intricate role in exploratory data analysis to find hidden patterns or grouping in data. Unsupervised learning is a type of machine learning algorithm used to draw interpretations from datasets consisting of input data without labeled responses. 

Clustering involves creating groups of objects which are referred to as clusters. The clusters are modeled using a measure of similarity which is defined upon metrics such as Euclidean or probabilistic distance. Cluster analysis is a common technique for statistical data analysis, used in many fields, including machine learning, pattern recognition, image analysis, information retrieval, bioinformatics, data compression, and computer graphics. 

Clustering is the ideal method for this project because it is a machine learning method for finding and visualizing natural groupings and patterns in data. Cluster analysis was used to identify patterns in the data (reviews and ratings) and create groups (clusters) based on the reviews provided by users. Also, assessing relationships among the various groups and identifying patterns which are used to narrow down beer recommendations. 

## Results

The clusters are modeled using a measure of similarity which is defined upon metrics such as Euclidean or probabilistic distance. In applying clustering, UPGMA with Euclidean distance, Centroid with Euclidean distance, UPGMA with D2, and Centroid with D2 were used in the classifications. Better classifications were produced using the Euclidean distance compared to D2. The final recommendation based on Dr. Ousley’s preferences  is Trappist Westvleteren 12. 

## Further Scope

Further analysis on this project will include finding the Euclidean distance and Manhattan distance. A real-world application of this project will be to create a web application which will make beer recommendations for users based on the reviews and ratings of other users based on various preferences. 
