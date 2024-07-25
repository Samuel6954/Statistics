#1. R的資料屬性 #class查詢

# character（字符型）
class("test")

# numeric（數值型）
class(123)

# integer（整數型）
class(10L)
class(as.integer(10.10))
class(as.integer(123))

# complex（複數型）
class(10i)

# logical（邏輯型）
class(TRUE)
class(T)

#常見運算
#1.加減乘除
1+1
10-3
5*3
9/17

#2.次方、根號、商數與餘數
2^4     #4次方
2**4    #4次方
sqrt(16)#根號
19/5    #取商數
19%/%5  #除不盡取商數
19%%5   #取餘數

#3.判斷正負數或0（正為1，負為-1，0為0）
sign(-10)
sign(10)
sign(0)

#4.取絕對值
abs(10)
abs(-10)

#5.取log
log(10)      #以e為底
log(10, 2)   #以2為底
log2(10)     #以2為底

#6.exp 是指計算指數函數的值，自然指數e（約為2.71828）^10
exp(10)

#7.logic 邏輯值/布林值
1==3
2==2
2!=2

#8.賦值
a <- 10
b = 20
c = "name"
d = TRUE
e = FALSE

#9.查詢資料結構
str(a)
str(b)
str(c)
str(d)
str(e)

# as.integer 用法
#1. 數據清理
data = data.frame(id = c("1", "2", "3"), value = c("10", "20", "30"))
str(data)

data$value = as.integer(data$value)
str(data)

#2. 數學運算 #計算整數除法商數、餘數
x =5.8
y = 2.4

result1 = x%/%y
result2 = as.integer(x) %/% as.integer(y) 
remainder1 = x%%y
remainder2 = as.integer(x) %% as.integer(y) 

#3.數據類型一致性
data2 = data.frame(id = c(1, 2, 3), age = c(25.5, 30.1, 22.9))
str(data2)

data2$age = as.integer(data2$age)
str(data2)

#練習 #N134320005_張智絢

#1. 如何將50賦值給X？
X <- 50
print(X)

#2. 如何將X平方？
X = X ^ 2
print(X)

#3. 如何將X開根號？
X = sqrt(X)
print(X)

#4. 如何查看X的資料結構？
str(X)

#5. 如何知道X是否為正數？
sign(X)

#作業-將練習完的結果截圖上傳至作業區。
