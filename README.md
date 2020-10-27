# XGBoost_Binary_Classification

<img src = "https://cdn-images-1.medium.com/max/777/0*W95kiBrFkCZCoO-3.png" />

Classifying the NBA players career length based on different features available.

# Below is the features available with target variable
> colnames(NBA)
 [1] "Name"        "GP"          "MIN"         "PTS"         "FGM"         "FGA"         "FG."         "X3P.Made"   
 [9] "X3PA"        "X3P."        "FTM"         "FTA"         "FT."         "OREB"        "DREB"        "REB"        
[17] "AST"         "STL"         "BLK"         "TOV"         

**Target variable** ="TARGET_5Yrs"



### Result 

[1]	val1-error:0.286567	val2-error:0.292537 
Multiple eval metrics are present. Will use val2_error for early stopping.
Will train until val2_error hasn't improved in 15 rounds.

[2]	val1-error:0.298507	val2-error:0.292537 
[3]	val1-error:0.263682	val2-error:0.313433 
[4]	val1-error:0.256716	val2-error:0.298507 
[5]	val1-error:0.244776	val2-error:0.304478 
[6]	val1-error:0.247761	val2-error:0.304478 
[7]	val1-error:0.241791	val2-error:0.295522 
[8]	val1-error:0.236816	val2-error:0.292537 
[9]	val1-error:0.242786	val2-error:0.274627 
[10]	val1-error:0.246766	val2-error:0.262687 
[11]	val1-error:0.240796	val2-error:0.283582 
[12]	val1-error:0.242786	val2-error:0.280597 
[13]	val1-error:0.244776	val2-error:0.280597 
[14]	val1-error:0.231841	val2-error:0.283582 
[15]	val1-error:0.235821	val2-error:0.277612 
[16]	val1-error:0.232836	val2-error:0.289552 
[17]	val1-error:0.227861	val2-error:0.271642 
[18]	val1-error:0.222886	val2-error:0.280597 
[19]	val1-error:0.214925	val2-error:0.271642 
[20]	val1-error:0.209950	val2-error:0.262687 
[21]	val1-error:0.204975	val2-error:0.256716 
[22]	val1-error:0.202985	val2-error:0.265672 
[23]	val1-error:0.212935	val2-error:0.277612 
[24]	val1-error:0.206965	val2-error:0.271642 
[25]	val1-error:0.193035	val2-error:0.277612 
[26]	val1-error:0.187065	val2-error:0.280597 
[27]	val1-error:0.186070	val2-error:0.286567 
[28]	val1-error:0.186070	val2-error:0.280597 
[29]	val1-error:0.173134	val2-error:0.283582 
[30]	val1-error:0.179104	val2-error:0.286567 
[31]	val1-error:0.183085	val2-error:0.283582 
[32]	val1-error:0.182090	val2-error:0.295522 
[33]	val1-error:0.179104	val2-error:0.286567 
[34]	val1-error:0.171144	val2-error:0.292537 
[35]	val1-error:0.170149	val2-error:0.292537 
[36]	val1-error:0.160199	val2-error:0.289552 
Stopping. Best iteration:
[21]	val1-error:0.204975	val2-error:0.256716


# Confusion Matrix
  test_target
      0   1
  0  75  32
  1  54 174

# Final Accuracy 
[1] 0.7432836
