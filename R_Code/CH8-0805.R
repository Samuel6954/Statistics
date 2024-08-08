# CH 8 dyplr基本操作
# 對dyplyr進行安裝並載入
install.packages("dplyr")
library(dplyr)

#強化版的str，能更清楚看資料結構
glimpse(practice)

#select( ) : 選取欄位(以行的方向選擇，進行欄位選取)
select(practice, Yield, `Company Ticker`)

#mutate( ) : 定義新欄位(可利用既有欄位進行運算創在新欄位)
mutate(practice, total = Yield * `Years to Maturity`)

#filter( ) : 利用條件進行篩選選取欄位(以列的方向篩選)
#可在 filter 後加上所要篩選的條件
filter(practice, `Company Ticker` == "GS")

#count( ) : 分類計算數量或加總
#1. 直接給予資料框，即可計算資料框的總資料筆數
count(practice)

#2.可在輸入的資料框後面加入所想要的屬性，便可以知道該屬性的資料筆數
count(practice, Yield)

#summarise( ) : 計算統計值，進行資料彙總


#%>% : Forward pipe 工作流指令，用來建立資料的工作流，將欲輸入的值放入運算子左邊，把欲丟入的函數放右邊

#group_by( ) : 根據資料框資料進行分群(可以搭配%>%使用)


#arrange( ) : 重新排列資料(升冪排列)

#desc( ) : 降冪排列

#rename( ) : 將欄位進行改名


#作業
#1.	請將hw8的excel檔載入

#2.	計算資料筆數

#3.	試問不同的城市的人數並將CITY欄位改成小寫city

#4.	請選出年紀(AGE)最小的六個人的資料以及年紀最大的六個人的資料
    #(提示:可合併運用arrange和head功能或是使用%>%工作流)


#5.	新增一個新欄位TOTAL，其計算方式為SALARY*WORK YEARS，並列出TOTAL最高的5人

#6.	請將這些人以所在地區(AREA)來進行分群

