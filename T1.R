library(tidyr)
setwd ('D:/RStudio/Coding_Challenge')


data <- read.csv('athletes.csv')
data
summary(data)
length(data[1,])
length(data[,1])
# totally 82 rows and 3 columns
# It is a wide format

# remove NAs
anyNA(data)
data1 <- drop_na(data)
# remove repeat datas
data2 <- unique(data1)


for (i in 1:length(data3[,1])+1){
  if (data3[i,1] == "" | data3[i,2] == ""){
    data3 <- (data3[-i,])
  }
  # correct spelling error and unify gender
  if (data3[i,1] == 'M'){
    data3[i,1] = 'Male'
  }
  if (data3[i,1] == 'female'){
    data3[i,1] = 'Female'
  }
  if (data3[i,2] == 'basketblah'){
    data3[i,2] == 'basketball'
  }
  # unified unit to 'cm'
  if (data3[i,3] < 10) {
    data3[i,3] = data3[i,3] * 100
  }
}

# count the lines 
length(data3[,1])


sample1 <- data3[data3$gender == 'Male' & data3$sports == 'basketball',"height"]
sample2 <- data3[data3$gender == 'Male' & data3$sports == 'gymnastics',"height"]
sample3 <- data3[data3$gender == 'Female' & data3$sports == 'basketball',"height"]
sample4 <- data3[data3$gender == 'Female' & data3$sports == 'gymnastics',"height"]


# use histogram to plot the height of athletes grouped by gender and sports
a1 <- hist(sample1,
     col = 'light blue',
     xlab = 'height[cm]',
     ylab = 'number',
     main = 'height of male in basketball')
a2 <- hist(sample2,
     col = 'dark blue',
     xlab = 'height[cm]',
     ylab = 'number',
     main = 'height of male in gymnastics')
a3 <- hist(sample3,
     col = 'red',
     xlab = 'height[cm]',
     ylab = 'number',
     main = 'height of male in basketball')
a4 <- hist(sample4,
     col = 'dark red',
     xlab = 'height[cm]',
     ylab = 'number',
     main = 'height of male in gymnastics')