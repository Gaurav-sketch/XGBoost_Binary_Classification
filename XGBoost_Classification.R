#install.packages("xgboost")
library(xgboost)
setwd("E:/Miniprojects in Python/XGBoost")

#Load the data
NBA<-read.csv("Nba_logreg.csv")
head(NBA)
dim(NBA)

nba<-NBA[,-1]
nba$TARGET_5Yrs=NULL
#nba<-scale(nba)

#Split the data for training and testing(75/25 split)
n<-nrow(nba)
train_index<-sample(n,floor(n*0.75))
train_target<-NBA$TARGET_5Yrs[train_index]
train_data<-as.matrix(nba[train_index,])
test_index<-as.integer(rownames(NBA[-train_index,]))
test_target<-NBA$TARGET_5Yrs[test_index]
test_data<-as.matrix(nba[test_index,])

#Transform the training set and test set to xgb.Dmatrix form to be used for fitting XGBoost model and predicting new outcome
xgb_train<-xgb.DMatrix(data = train_data,label=train_target)
xgb_test<-xgb.DMatrix(data=test_data,label=test_target)

#Define the parameters for binary classification 
params<-list(booster="gbtree",verbosity=1,eta=0.3,gamma=2,nthread=2,max_depth=3,subsample=0.75,objective="binary:logistic")


# Train the XGBoost Classifier
xgb_fit<-xgb.train(params=params,data=xgb_train,nrounds = 100000,verbose = 1,watchlist = list(val1=xgb_train,val2=xgb_test),early_stopping_rounds = 15
                   )

# View the result
xgb_predict<-predict(xgb_fit,test_data)
final<-table(round(xgb_predict,0),test_target)
Accuracy<-sum(diag(final))/sum(final)
 Accuracy

colnames(NBA)

