#CH7 資料處理
#何謂dataframe
help("data.frame")

#1.建立dataframe
name   = c("member_A", "member_B", "member_C", "member_D")
age    = c(50, 40, 30, 20)
gender = c("Male", "Female", "Male", "Female")
member = data.frame(name, age, gender)
member

#檢視、修改
View(member)

member2 = edit(member)
member2

#2.命名或重新命名
#命名變數
member = data.frame("N" = name, "A" = age, "G" = gender)
member

names(member) = c("NAME", "AGE", "GENDER")
member

#命名case
row.names(member) = c("A", "B", "C", "D")
member

#使用dataframe
#查詢是否為dataframe
is.data.frame(member)

#顯示欄位名稱
member[,1] 

#顯示第二列資料
member[2,]

#陣列型態
member["AGE"]

#列表型態 
member[["AGE"]]

#是否為male?
member$GENDER == "Male"

#查詢為Male的資料
member[member$GENDER == "Male", ]

#新增
member[,4] = ""
member[,4] = c("Teacher", "Teacher", "Student", "Student")
names(member)[4] = "Occupation"

member

#刪除
member[,4] = NULL
member

#刪除所有變數 

#刪除欄位
member[, 1:3] = NULL
member = data.frame(name, age, gender)
member

#刪除資料列
member = member[-c(1:4), ]
member

#資料讀取
#1.檔案讀取
#(1)	不修改R Studio的位置設定
read.csv("C:/Users/DELL/OneDrive/桌面/202307_R語言課程/Statistics/Statistics/R_Code/上課檔案/0729/Boston.csv")

#(2)	更改R Studio的位置設定
#setwd("C:/Users/DELL/OneDrive/桌面/202307_R語言課程/Statistics/Statistics/R_Code/上課檔案/0729")

myFile = read.csv("Boston.csv")

#(3)	直接讀取資料
#Environment/Import Dataset/From Excel

#2.	讀取資料相關函數

#fread()：與read.table()相似並且更快速方便，可以自動判別sep、nrows等參數

#scan()：從控制台（console）讀取資料並轉為向量（vector）或列表（list）型態


#3. 檔案輸出


#資料操弄
#merge()

Name = c("A", "B", "C", "D")
Age  = c(50, 40, 30, 20)
Gender = c("F", "M", "F", "M")

myData1 = data.frame(Name, Age)
myData2 = data.frame(Name, Gender)

MyMergeData = merge(myData1, myData2, by = "Name") 
MyMergeData

aggregate() #分組合計 x為要進行統計的項目，by為依據項目且必須是list型態FUN為要計算的方法
#分別計算member2中不同性別的年齡總和
aggregate(x = MyMergeData$Age, by = list(MyMergeData$Gender), FUN = "sum")

#不同性別的年齡平均
aggregate(x = MyMergeData$Age, by = list(MyMergeData$Gender), FUN = "mean")

#簡便寫法
aggregate(Age~Gender, data = MyMergeData, FUN = "mean")
aggregate(Gender~Age, data = MyMergeData, FUN = "length")

#使用Table計算每個年齡的性別分布
with(MyMergeData, table(Age, Gender))

unique() #在重複性資料中提取每項類別
unique(MyMergeData$Gender)

#練習:
#1. 請匯入practice.xlsx並呈現在視窗中。


#2.	請將Years to Maturity重新命名為Years。


#3.	請找出Company Ticker的所有種類。

#4.	計算每種Company Ticker的Yield之平均。

