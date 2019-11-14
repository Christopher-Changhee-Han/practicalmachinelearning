# Machine Learning: Random Forest
Christopher Han  
February 20, 2019

## Summary
The goal of this project is to predict the different ways a barbell lift is performed. The data is provided by Groupware in which 6 participants performed barbell lifts correctly and incorrectly in 5 different ways. They each wore belt, arm, forearm, and dumbbell sensors that recorded the direction in x,y,z axes as well as other information such as acceleration. According to the paper ‘Qualitative Activity Recognition of Weight Lifting Exercises’, the 5 different classes are as follows: exactly according to the specification (Class A), throwing the elbows to the front (Class B), lifting the dumbbell only halfway (Class C), lowering the dumbbell only halfway (Class D) and throwing the hips to the front (Class E).

We fit a random forest model which resulted in an OOB estimate of error rate of 0.44%. The optimal number of variables to be tried at each split was determined to be 27 and we fit 500 trees in the random forest. As a result, the accuracy was 99.29% for the training data and we were able to correctly identify 20 out of 20 observations in the testing dataset.
