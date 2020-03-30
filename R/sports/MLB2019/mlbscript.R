MLBP = read.csv("mlb-player-stats-P.csv")
MLBB = read.csv("mlb-player-stats-Batters.csv")
summary(MLBP)
summary(MLBB)
boxplot(MLBP$K ~ MLBP$Team,xlab="Teams",ylab="Strikeouts",main= "Strikeouts by Teams")
Outliers = subset(MLBP, K > 200)
Outliers[c("Team","G","K")]
RunsReg = lm(R ~ OBP + SLG, data=MLBB)