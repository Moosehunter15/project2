getwd()
setwd("C:/Users/noahh/OneDrive - 筑波大学/Desktop/R/心理データ解析")

dat <- read.csv("student-mat.csv",  header = T)
View(dat)

# convert characters into factors
for(i in 1:ncol(dat)) {
  if (class(dat[,i]) == 'character')
    dat[,i] = as.factor(dat[,i])
}
# clearner code Perplexity; 
# se is.factor() instead of if (class(dat[,i]) == 'character')
for(i in 1:ncol(dat)) {
  if (is.character(dat[,i]))
    dat[,i] = as.factor(dat[,i])
}
  
# taking average of G1,2 and 3
dat$score <- rowMeans(cbind(dat$G1,dat$G2,dat$G3))

# extracting factor cols
for (i in 1:ncol(dat)){
  if (class(dat[,i]) == 'factor')
    print(colnames(dat)[i])
}

# clearner code Perplexity
for (i in 1:ncol(dat)){
  if is.factor
}