# CH6 邏輯控制、迴圈
# 邏輯控制-用來判斷式子是否成立
#大於（>）
5 > 3

#小於（<）
5 < 3

#等於（==）
5 == 3

#不等於（!=）
5 != 3

#和（&）
5 > 3 & 5 < 3
5 > 3 & 5 < 8

#或（|）
5 > 3 | 5 < 3
5 > 3 | 5 < 8

#反函數（!）
!(5 > 3 & 5 < 3)

#條件指令
#1. if
if (5 < 3){ 1 }else{ 0 } 
if (5 > 3){ 1 }else{ 0 } 

#2. 巢狀if
a = 5

if ( a > 5){
  print("a bigger than 5")
}else if ( a < 5){
  print("a smaller than 5")
}else{
  print("a equal 5")
}

#3. switch-在條件較多時使用
#首相為條件，後面為須執行之命令
b = "happy"
switch(b, hello = print(1+1), happy = print(2+2), hi = print(3+3))

#執行命令的條件為等於1.2.3
c = 4
switch(c, print("NO1"), print("NO2"), print("NO3"), print("NO4"))

#迴圈
#1. for 在設定範圍內重複執行相同的動作
myAns = 0
for (i in c(1:10)){
    myAns = myAns + i
    #print(myAns)
    print(paste("當i=", i, " myAns:", myAns))
}

#2. break：用來跳出迴圈
#當i=5時跳出迴圈，答案只加到5
myAns2 = 0
for (i in c(1:10)) {
  myAns2 = myAns2 + i
  if(i==5){ break }
}
myAns2

myAns3 = 0
for (i in c(1:10)) {
  
  if(i==5){ break }
  myAns3 = myAns3 + i
}
myAns3

#3. next:用來省略當次迴圈，直接進入下一輪
#當i=5時不進行動作直接進入下一圈
myAns4 = 0
for (i in c(1:10)) {
  
  if(i==5){ next }
  myAns4 = myAns4 + i
}
myAns4

#4. while：當條件符合時迴圈不斷執行
myCount = 1
myAns5 = 0

while ( myCount <= 10) {
  
  myAns5 = myAns5 + myCount
  myCount = myCount + 1
}
myAns5

#練習
#1. 輸入( ! ( 5 < 3 ) ) | ( 7 == 25 )後會回傳TRUE還是FALSE？
( ! ( 5 < 3 ) ) | ( 7 == 25 )

#2.	請問下列程式碼的結果為何？
a = 8

if ( a < 4){
  print("春天")
}else if ( a < 7){
  print("夏天")
}else if ( a < 10){
  print("秋天")
}else{
  print("冬天")
}

#3.	利用switch()更改上題程式碼。
a = 8
a = as.character(a)
switch(a , "6" = print("春天"), "7" = print("夏天"), "8" = print("秋天"), "9" = print("冬天"))

#4.	利用for迴圈計算1~10之間奇數的總和。
mySum = 0
for (i in c(1:10)) {
  
  if(i%%2 == 0){ next }
  mySum = mySum + i
  #print(paste("當i=", i, " mySum:", mySum))
}
mySum

#5.	利用while迴圈計算1~100之間偶數的總和。
myTemp = 0
mySum2 = 0

while ( myTemp <= 100) {
  
  myTemp = myTemp + 1
  
  if((myTemp %% 2) > 0){ next }
  
  mySum2 = mySum2 + myTemp
  #print(paste("當myTemp=", myTemp, " mySum2:", mySum2))
  
}
mySum2
