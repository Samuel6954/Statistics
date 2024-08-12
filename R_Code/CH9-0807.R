# CH9 ggplot基本操作

#安裝、載入ggplot
install.packages("ggplot2")
library(ggplot2)

#用 ggplot描繪點陣圖 (在後方加上 geom_point圖形種類 )
ggplot(hw8, aes(x = AGE, y = SALARY, color = AREA)) + geom_point(size = 2, shape = 20) + theme_bw()

#用 ggplot來描繪條狀圖與直方來描繪條狀圖與直方(在後方加上 geom_bar/histogram/col圖形種類)

#直方圖 histogram只需定義 x軸(AGE)
ggplot(hw8, aes(x = AGE, color = AREA)) + geom_histogram(bins = 20) + theme_bw()

#bar chart只需定義 x軸(AREA)
ggplot(hw8, aes(x = AREA, color = AREA)) + geom_bar() + theme_bw()

#column char，需將兩個方向的屬性定義好
ggplot(hw8, aes(x = CITY, y = SALARY, color = AREA)) + geom_col() + theme_bw()

#可以透過在 dplyr所講述到的 group_by、forward pipe(%>%)、summarise配合 col進行分析
install.packages("magrittr")
library(magrittr)

group_by(hw8, AREA) %>% summarise(salary.ratio = mean(SALARY)) %>% ggplot(aes(x = AREA, y = salary.ratio)) + geom_col()

#用fill將細類屬性定義到fill
ggplot(hw8, aes(x = AGE, fill = AREA)) + geom_histogram(bins = 20) + theme_bw()

#折線圖 (在後方加上 geom_line圖形種類 )

ggplot(hw8, aes(x = AGE, y = SALARY, color = AREA)) + geom_line() + theme_bw()

#盒狀圖(在後方加上 geom_boxplot圖形種類 )
install.packages("dplyr")
library(dplyr)

ggplot(hw8, aes(x = AGE, color = AREA)) + geom_boxplot() + theme_bw()

#grid.arrange( ):可一次繪畫多個圖形

#用寫程式繪製直方圖；hist(向量名稱 ,xlab=”名稱 ”,col=’’顏色 ’’,”border=”邊界顏色 ”)


#作業
# 1. 請載入表格 hw9
library(readxl)
hw9 <- read_excel("上課檔案/0809/hw9.xlsx")
View(hw9)

# 2. 請利用 ggplot描繪出一散佈圖描繪出一散佈圖 (point)，其中 x軸為年紀 (AGE)，
#    y軸為薪水(SALARY)，並用隊伍 (TEAM)進行顏色區別

#安裝、載入ggplot
install.packages("ggplot2")
library(ggplot2)

myPointPic = ggplot(hw9, aes(x = AGE, y = SALARY, color = TEAM)) + geom_point(size = 2, shape = 20) + theme_bw()

# 3. 利用 ggplot描繪出一直方圖(histogram)來顯示此表格中年齡的分布 (AGE)
install.packages("ggplot2")
library(ggplot2)

myHistogramPic = ggplot(hw9, aes(x = AGE, color = TEAM)) + geom_histogram(bins = 20) + theme_bw()

# 4. 利用 ggplot描繪出一長條圖(bar chart)來顯示此表格中隊伍的分布 (TEAM)

#bar chart只需定義 x軸(AREA)
install.packages("ggplot2")
library(ggplot2)

myBarChartPic = ggplot(hw9, aes(x = AGE, color = TEAM)) + geom_bar() + theme_bw()

# 5. 利用ggplot結合 dplyr套件的功能 (group_by、summarise、%>%)描繪出一條狀圖 (column)，
#   來顯示此表格中不同性別 (GENDER)，也就是男性 (M)和女性 和女性 (F)的平均薪資 (mean(SALARY))
install.packages("dplyr")
library(dplyr)

#install.packages("ggplot2")
library(ggplot2)

install.packages("magrittr")
library(magrittr)

myColumnlPic = group_by(hw9, GENDER) %>% summarise(salary.ratio = mean(SALARY)) %>% 
  ggplot(aes(x = GENDER, y = salary.ratio)) + geom_col() + theme_bw()

# 6. 利用 ggplot描繪出一盒狀圖(boxplot)，表示「不同隊伍 (TEAM)」的年齡 (AGE)分布，
#   並以不同顏色區別隊伍 (TEAM)
install.packages("dplyr")
library(dplyr)

#install.packages("ggplot2")
library(ggplot2)

myBoxplot = ggplot(hw9, aes(x = AGE, color = TEAM)) + geom_boxplot() + theme_bw()


# 7.將 2~6題所要求的圖形用 grid.arrange( )一次展示出
install.packages("gridExtra")
library(gridExtra)

#install.packages("ggplot2")
library(ggplot2)

grid.arrange(myPointPic, myHistogramPic, myBarChartPic, myColumnlPic, myBoxplot, nrow = 3)










































