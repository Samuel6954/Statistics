# Statistics
 統計課程

# CH2-0708

#顯示文字，亦可在控制台輸入

#編寫、運行R腳本 <- 可替代成 = 

#套件開起/關閉

#help功能

#刪除變量

#讀取檔案-Step1.加載套件

#讀取檔案-Step2.讀取excel
#方法1
  
#方法2
   #設置工作目錄
   #讀取文件
  
#檢查數據

#查看數據框內容

#使用 plot() 函數繪製圖形

# CH3-0712
#1.R的資料屬性 #class查詢
#character（字符型）
#numeric（數值型）
#integer（整數型）
#complex（複數型）
#logical（邏輯型）

#常見運算
#1.加減乘除
#2.次方、根號、商數與餘數
#3.判斷正負數或0（正為1，負為-1，0為0）
#4.取絕對值
#5.取log
#6.exp 是指計算指數函數的值，自然指數e（約為2.71828）^10
#7.logic 邏輯值/布林值
#8.賦值

#9.查詢資料結構

#as.integer 用法
#1.數據清理
#2.數學運算 #計算整數除法商數、餘數
#3.數據類型一致性

#練習 #N114320001_周冠呈
#1.如何將50賦值給X？
#2.如何將X平方？
#3.如何將X開根號？
#4.如何查看X的資料結構？
#5. 如何知道X是否為正數？

#作業-將練習完的結果截圖上傳至作業區。


# CH4-0715

#CH4 向量、因子和列表
#向量
#1.向量的建立
#2.向量的類別

#轉換等級是：character > numeric > logical

#3.賦予向量內元素名字
#第一種:建立向量時直接賦予
#第二種:之後才賦予

#4.向量的索引

#增加元素
#減少元素
#取代
#因子
#1.因子的建立
#2.查看因子的類別

#列表
#1.列表的建立
#2.列表的使用
#查詢
#索引

#練習
#1.建立一個名為X的向量，內容依序為個人姓名、年齡、出生年。
#2.在X的最後面加上性別，男FALSE、女為TRUE且刪除出生年。
#3.建立一個列表Y，其中包含向量X及興趣，興趣可為單向或向量。
#4.有一個向量為gender=c("boy","girl","boy")，請將gender轉換為factor型態 並查看有哪些類別。

# CH5-0719

#CH5 矩陣、陣列
#矩陣-使用 matrix() 函數來建立

#建立一個2列3行的矩陣，數據為1到6
#建立一個3列2行的矩陣，數據為1到6
#以列為主排列數據
#更改名稱

#陣列-使用 array() 函數來建立
#建立一個3*3*2的三維陣列
#更改名稱

#向量、矩陣、陣列、列表之差異
#向量（vector）：用於一維且沒有維度屬性
#查看向量的長度

#矩陣（matrix）：用於二維，有維度屬性，可看成二維陣列
#查看矩陣的維度
#陣列（array）：可用於所有維度，有維度屬性
#列表（list）:列表中的元素可以是任意類型的數據

#顯示列表的結構
#查詢是否為陣列 使用is.array()
#查詢屬性 使用attributes()
#基本運算

#以row形式結合2向量
#以column形式結合2向量
#索引

#練習
#1.請建立一個2列3行的矩陣(擺放6個資料)，將資料”數字7~12”進行以列為主的排列。

#2.有3個人到了超市買了不同數量的香蕉(以b表示)和蘋果(以a表示):
   # Tom買了5個蘋果和4個香蕉，Mary買了14個蘋果和6個香蕉，Eve買了0個蘋果和0個香蕉(純粹去逛超市的)
   # 請建立一個2列3行的矩陣來表示上列的資訊。
#3.將上列(問題2.)的式子改以3列2行表示。
#4.已知向量a(1,2,3,4,5)，向量b(5,4,3,2,1)，請試著用rbind和cbind來結合他們。

# CH6-0722

#CH6 邏輯控制、迴圈
#邏輯控制-用來判斷式子是否成立
#大於（>）
#小於（<）
#等於（==）
#不等於（!=）
#和（&）
#或（|）
#反函數（!）

#條件指令
#1.if
#2.巢狀if
#3.switch-在條件較多時使用
#首相為條件，後面為須執行之命令

#執行命令的條件為等於1.2.3

#迴圈
#1.for 在設定範圍內重複執行相同的動作
#2.break：用來跳出迴圈
#當i=5時跳出迴圈，答案只加到5
#3.next:用來省略當次迴圈，直接進入下一輪
#當i=5時不進行動作直接進入下一圈
#4.while：當條件符合時迴圈不斷執行

#練習
#1.輸入( ! ( 5 < 3 ) ) | ( 7 == 25 )後會回傳TRUE還是FALSE？
#2.請問下列程式碼的結果為何？
#3.利用switch()更改上題程式碼。
#4.利用for迴圈計算1~10之間奇數的總和。
#5.利用while迴圈計算1~100之間偶數的總和。
