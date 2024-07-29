#CH7 資料處理
#何謂dataframe

#1.建立dataframe

#檢視、修改

#2.命名或重新命名
#命名變數

#命名case

#使用dataframe
#查詢是否為dataframe

#陣列型態
   
#列表型態 
 
#是否為male?
   
#查詢為Male的資料

#新增

#刪除

#刪除所有變數 


#資料讀取
#1.檔案讀取
#(1)	不修改R Studio的位置設定

#(2)	更改R Studio的位置設定

#(3)	直接讀取資料

#2.	讀取資料相關函數

#fread()：與read.table()相似並且更快速方便，可以自動判別sep、nrows等參數

#scan()：從控制台（console）讀取資料並轉為向量（vector）或列表（list）型態


#3. 檔案輸出


#資料操弄


aggregate() #分組合計 x為要進行統計的項目，by為依據項目且必須是list型態FUN為要計算的方法
#分別計算member2中不同性別的年齡總和

#不同性別的年齡平均

#簡便寫法


unique() #在重複性資料中提取每項類別



#練習:
#1. 請匯入practice.xlsx並呈現在視窗中。


#2.	請將Years to Maturity重新命名為Years。


#3.	請找出Company Ticker的所有種類。

#4.	計算每種Company Ticker的Yield之平均。

