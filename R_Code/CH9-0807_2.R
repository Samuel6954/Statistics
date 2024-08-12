#周冠呈 2024/8/7 下午 08:27 • 
# 相對變化率範例
months <- c('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun')
sales <- c(100, 110, 105, 120, 125, 130)
# 創建資料框
df <- data.frame(Month = months, Sales = sales)
# 計算變化量
df$Change <- c(NA, diff(df$Sales))
# 計算相對變化率
df$Relative_Change_Percent <- c(NA, (diff(df$Sales) / head(df$Sales, -1)) * 100)
# 顯示結果
print(df)


# 對數變換範例
months <- c('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun')
sales <- c(100, 110, 105, 120, 125, 130)
# 創建資料框
df <- data.frame(Month = months, Sales = sales)
# 對數變換
df$Log_Sales <- log(df$Sales)
# 顯示結果
print(df)


# 標準化範例
months <- c('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun')
sales <- c(100, 110, 105, 120, 125, 130)
# 創建資料框
df <- data.frame(Month = months, Sales = sales)
# 計算均值和標準差
mu <- mean(df$Sales)
sigma <- sd(df$Sales)
# 標準化
df$Standardized_Sales <- (df$Sales - mu) / sigma
# 顯示結果
print(df)