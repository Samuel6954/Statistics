# 顯示文字，亦可在控制台輸入
print("Hello R")

#編寫、運行R腳本 <- 可替代成 = 
myTest <- 123
myTest

myTest = 456
myTest

#套件開起/關閉
library(abind)
detach("package:abind", unload = FALSE)

#help功能
help("rnorm")
?rnorm()

#刪除變量
#rm(myTest)
remove(myTest)
myTest

#讀取檔案-Step1.加載套件
install.packages("readxl")
library(readxl)

#讀取檔案-Step2.讀取excel
#方法1
read <- read_excel("C:/Users/DELL/OneDrive/桌面/202307_R語言課程/20240708_R課程/read.xlsx")
  
#方法2
   # 設置工作目錄
   # 讀取文件
#setwd("C:/Users/DELL/OneDrive/桌面/202307_R語言課程/20240708_R課程")
  
#檢查數據
str(read)
head(read)

#查看數據框內容
View(read)
 
#使用 plot() 函數繪製圖形
plot(read$height)
plot(read$height, main = "Height Distribution", xlab = "Index", ylab = "Height")
plot(read$height, main = "Height Distribution", xlab = "Index", ylab = "Height", col = "blue", pch=16)


#詢問ChatGPT：如何將此段R語言,改為長條圖
#barplot(read$height, main = "Height Distribution", xlab = "Index", ylab = "Height", col = "blue", names.arg = 1:length(read$height))

#詢問ChatGPT：請用此語法轉換R語言常用的圖表

#散點圖 (Scatter Plot)
#plot(1:length(read$height), read$height, main = "Height Distribution", xlab = "Index", ylab = "Height", col = "blue", pch = 16)

#直方圖 (Histogram)
#hist(read$height, main = "Height Distribution", xlab = "Index", ylab = "Height", col = "blue", breaks = 10)

#密度圖 (Density Plot)
#plot(density(read$height), main = "Height Distribution", xlab = "Height", ylab = "Density", col = "blue")

#餅圖 (Pie Chart)
#pie(read$height, labels = 1:length(read$height), main = "Height Distribution", col = rainbow(length(read$height)))

#折線圖 (Line Plot)
#plot(1:length(read$height), read$height, type = "l", main = "Height Distribution", xlab = "Index", ylab = "Height", col = "blue")

# 假設 read$height 是數據向量
heights <- read$height

# 創建長條圖
barplot_heights <- barplot(heights, main = "Height Distribution", xlab = "Index", ylab = "Height", col = "blue", names.arg = 1:length(heights), ylim = c(0, max(heights) * 1.1))

# 設置x軸上的位置
x_positions <- barplot_heights

# 添加折線圖
lines(x_positions, heights, type = "o", col = "red", pch = 16)

# 添加圖例
legend("topright", legend = c("Bar", "Line"), fill = c("blue", NA), col = c(NA, "red"), pch = c(NA, 16), border = NA)
