
a <- read.csv("����_train.csv" , sep =",")

train <- a[,-1]

model <- randomForest(log(eightdays_aud) ~. , data = train , mtry = 13)

test <- read.csv("����_����.csv" , sep =",")

pred = exp(predict(model,test))
