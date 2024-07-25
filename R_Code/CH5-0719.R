#CH5 矩陣、陣列
#矩陣-使用 matrix() 函數來建立

# 建立一個2列3行的矩陣，數據為1到6
matrix(data = 1:6, nrow = 2)
matrix(data = 1:6, nrow = 2, ncol = 3)

# 建立一個3列2行的矩陣，數據為1到6
matrix(data = 1:6, nrow = 3)
matrix(data = 1:6, ncol = 2)

#以列為主排列數據
matrix(data = 1:6, nrow = 2, byrow = TRUE)

#更改名稱
matrix(data = 1:6, nrow = 2, byrow = TRUE, dimnames = list(c("a1", "a2"), c("b1", "b2", "b3")))

#陣列-使用 array() 函數來建立

#建立一個3*3*2的三維陣列
array(data = 1:18, dim = c(3, 3, 2))

#更改名稱
dim_a = c("a1", "a2", "a3")
dim_b = c("b1", "b2", "b3")
dim_c = c("c1", "c2")

array(data = 1:18, dim = c(3, 3, 2), dimnames = list(dim_a, dim_b, dim_c))

#向量、矩陣、陣列、列表之差異
#向量（vector）：用於一維且沒有維度屬性
myVector1 = c(1:3)

#查看向量的長度
length(myVector1)

#矩陣（matrix）：用於二維，有維度屬性，可看成二維陣列
myMatrix1 = matrix(data = 1:6, nrow = 2)
myMatrix1

# 查看矩陣的維度
dim(myMatrix1)

#陣列（array）：可用於所有維度，有維度屬性
myArray = array(data = 1:18, dim = c(3, 3, 2))
myArray
dim(myArray)

#列表（list）:列表中的元素可以是任意類型的數據
myList1 = list(name = "TOM", age = 30, address = "高雄市")
myList1

#顯示列表的結構
str(myList1)

#查詢是否為陣列 使用is.array()
is.array(myVector1)
is.array(myMatrix1)
is.array(myArray)
is.array(myList1)

#查詢屬性 使用attributes()
attributes(myVector1)
attributes(myMatrix1)
attributes(myArray)
attributes(myList1)

#基本運算
myVector2 = c(1, 2, 3, 4)
myVector3 = c(5, 6, 7, 8)

myVector2 + myVector3

myVector4 = c(1:4)
myVector3 = c(5:8)

myVector4 + myVector3
myVector2 - myVector3
myVector2 * myVector3
myVector2 / myVector3
myVector2 %/% myVector3
myVector2 %% myVector3

myVector5 = c(1, 2, 3)
myVector6 = c(4, 5, 6, 7, 8, 9)
myVector5 + myVector6

myVector7 = c(1, 2)
myVector8 = c(3, 4, 5, 6, 7, 8)
myVector7 + myVector8


#以row形式結合2向量
myVector_RBin = rbind(myVector2, myVector3)
myVector_RBin

#以column形式結合2向量
myVector_CBin = cbind(myVector2, myVector3)
myVector_CBin

#索引
myVector_RBin[2]
myVector_RBin[2,]
myVector_RBin[,2]
myVector_RBin[2,1]
myVector_RBin[2,1:2]


#練習
#1.	請建立一個2列3行的矩陣(擺放6個資料)，將資料”數字7~12”進行以列為主的排列。
matrix(data = 7:12, nrow = 2, byrow = TRUE)

#2.	有3個人到了超市買了不同數量的香蕉(以b表示)和蘋果(以a表示):
     # Tom買了5個蘋果和4個香蕉，Mary買了14個蘋果和6個香蕉，Eve買了0個蘋果和0個香蕉(純粹去逛超市的)
     # 請建立一個2列3行的矩陣來表示上列的資訊。
Tom  = c(5, 4)
Mary = c(14, 6)
Eve  = c(0, 0)

matrix(data = c(Tom, Mary, Eve), nrow = 2, dimnames = list(c("a", "b"), c("Tom", "Mary", "Eve")))

#3.	將上列(問題2.)的式子改以3列2行表示。

matrix(data = c(Tom, Mary, Eve), nrow = 3, byrow = TRUE, dimnames = list(c("Tom", "Mary", "Eve"), c("a", "b")))

#4.	已知向量a(1,2,3,4,5)，向量b(5,4,3,2,1)，請試著用rbind和cbind來結合他們。
a = c(1,2,3,4,5)
b = c(5,4,3,2,1)

myRowBind = rbind(a, b)
myColBind = cbind(a, b)

