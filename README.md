# Machine Learning Project
The goal of this project is to predict the different ways a barbell lift is performed. The data is provided by [Groupware](http://web.archive.org/web/20161224072740/http://groupware.les.inf.puc-rio.br/static/WLE/WearableComputing_weight_lifting_exercises_biceps_curl_variations.csv) in which 6 participants performed barbell lifts correctly and incorrectly in 5 different ways. They each wore belt, arm, forearm, and dumbbell sensors that recorded the direction in x,y,z axes as well as other information such as acceleration. 
#### -- Project Status: Completed

### Methods Used
* Data Partitioning
* Classification Tree and Random Forest
* Visualization of Trees

### Technologies Used
* R 
* caret
* parallel
* doParallel
* mlbench
* tree
* rattle

## Getting Started

1. Clone this repo (for help see this [tutorial](https://help.github.com/articles/cloning-a-repository/)).
2. Download the dataset from [here](http://web.archive.org/web/20161224072740/http://groupware.les.inf.puc-rio.br/static/WLE/WearableComputing_weight_lifting_exercises_biceps_curl_variations.csv)
3. Run main.R

## Findings

Random forest performs at a 99% training accuracy while the single classification tree performs at around 50% training accuracy. Nevertheless, one drawback of the random forest is that it is computationally expensive and not as interpretable. Although parallel processing speeds up the model fitting by using multi-threaded cores, the speed is still much slower than fitting a simpler, more interpretable model such as the single classification tree. There is a trade-off here for sure, and the optimal model will depend on one's specific goals and needs.

## Featured Analysis
* [RMarkdown Report](https://christopher-changhee-han.github.io/practicalmachinelearning/)

## Contact
* Please contact me at christopherhan@stat.tamu.edu for any questions or concerns!
