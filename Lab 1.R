## Lab 1
## on my own
source("https://raw.githubusercontent.com/jbryer/IS606/master/inst/labs/Lab1/more/cdc.R")
head(cdc)
install.packages("ggplot2")
library(ggplot2)

## 1. Make a scatterplot of weight versus desired weight. Describe the relationship between these two variables.
plot(cdc$weight, cdc$wtdesire)
## According to the scatterplot, it seems like the weight is associated with desired weight. The weight is dependent on desired weight.

## 2. Let's consider a new variable: the difference between desired weight (wtdesire) and current weight (weight). Create this new variable by subtracting the two columns in the data frame and assigning them to a new object called wdiff.
wdiff <- (cdc$wtdesire - cdc$weight)
head(wdiff)

## 3. What type of data is wdiff? If an observation wdiff is 0, what does this mean about the person's weight and desired weight. What if wdiff is positive or negative?
class(wdiff)
## Wdiff is a numerical variable. If it's 0, that means the person is at his or her desired weight. Positive number means the person would like to gain more weight, when negative number means that the person need to lose some weights.

## 4. Describe the distribution of wdiff in terms of its center, shape, and spread, including any plots you use. What does this tell us about how people feel about their current weight?
hist(wdiff)
## The histogram of wdiff shows that the center is at 0. The data set is right skewed, but not widely spreaded. It shows that most people are at their desired weight.

## 5. Using numerical summaries and a side-by-side box plot, determine if men tend to view their weight differently than women.
boxplot(cdc$weight ~ cdc$gender)
## According to the boxplot, the male seems have higher weights than female.

## 6. Now it's time to get creative. Find the mean and standard deviation of weight and determine what proportion of the weights are within one standard deviation of the mean.
mean_weight <- mean(cdc$weight)
SD_weight <- sd(cdc$weight)
