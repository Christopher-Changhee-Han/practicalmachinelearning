## Machine Learning (Classification Tree and Random Forest)
## Created by: Christopher Han

# Download the necessary data
trainingURL <- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
testingURL <- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"

download.file(trainingURL, "training.csv")
download.file(testingURL, "testing.csv")

training <- read.csv("training.csv")
testing <- read.csv("testing.csv")

# Load in the necessary packages
library(caret)
library(parallel)
library(doParallel)
library(mlbench)
library(tree)
library(rattle)

# Initial Data Exploration
summary(training$classe)

# Partition the data into training and testing sets
summaryStatsID <- grep("^kurtosis|^skewness|^max|^min|^amplitude|^var|^avg|^stddev", names(training))
smalltraining <- training[,-c(summaryStatsID, 1:7)]
smalltesting <- testing[,-c(summaryStatsID, 1:7)]
dim(smalltraining)
dim(smalltesting)


# Simple Classification Tree

simplefit <- train(classe~., method = "rpart", data = smalltraining)
simplefit
fancyRpartPlot(simplefit$finalModel, main = "Simple Tree to Predict Activity Class")

# Random Forest
cluster <- makeCluster(detectCores() - 1) # parallel processing to speed up the process
registerDoParallel(cluster)

fitControl <- trainControl(method = "cv",
                           number = 5,
                           allowParallel = TRUE)

set.seed(130) # for reproducibility
fit <- train(smalltraining[,-53], smalltraining[,53], method = "rf", data = smalltraining, trainControl= fitControl)

stopCluster(cluster)
registerDoSEQ()

# Results
fit
pred <- predict(fit, smalltesting)
pred