# CH4 向量、因子和列表

#向量
#1.向量的建立
myVector1 = c(1, 2, 3, 4)
myVector2 = c(TRUE, TRUE, FALSE)
myVector3 = c(1:5)

#2.向量的類別
myVector4 = c("name", 5, TRUE)
myVector5 = c(5, FALSE)
myVector5

#轉換等級是：character > numeric > logical

#3.賦予向量內元素名字
#第一種:建立向量時直接賦予
myPerson1 = c(name = "TOM", age = 30, address = "高雄市")
myPerson1

#第二種:之後才賦予
myPerson2 = c("TOM", 30, "高雄市")
names(myPerson2) = c("name", "age", "address")
myPerson2

#4.向量的索引
myPerson1[1]
myPerson1[1:3]
myPerson1[c(1:3)]

#增加元素
myPerson2[4] = "male"
myPerson2

#減少元素
myPerson2 = myPerson2[-4]
myPerson2

#取代
myPerson2[3] = "台北市"
myPerson2

#因子
#1.	因子的建立
myFactor1 = factor(c("boy", "boy", "girl"))
myFactor1

myFactor2 = factor(c("台中", "高雄", "台北", "台北", "台南"))
myFactor2

myFactor3 = factor(c("台中", "高雄", "台北", "台北", "台南", "台中", "高雄", "台北", "台北", "台南"))
myFactor3

#2.	查看因子的類別
levels(myFactor3)

#列表
#1.	列表的建立
myList1 = list(name = "TOM", age = 30, address = "高雄市")
myList1

myList2 = list(name = "number", v = c(1:3), f = factor(c(4:6)))
myList2

#2.	列表的使用
#查詢
myList1$name
myList2$v

#索引
myList1[1]
myList1[[1]]
myList2[2]
myList2[[2]]


#練習
#1.	建立一個名為X的向量，內容依序為個人姓名、年齡、出生年。
x=c(姓名 = "張智絢", 年齡 = "30", 出生年 = "80")
x

#2.	在X的最後面加上性別，男FALSE、女為TRUE且刪除出生年。

#賦予x[4]value
x[4] = "FALSE"

#賦予x[4] Header
names(x) = c("姓名", "年齡", "出生年", "性別")
x

#刪除出生年欄位
x = x[-3]
x

#3.	建立一個列表Y，其中包含向量X及興趣，興趣可為單向或向量。
y = list(Customer = x, Hobby = c("趴山", "打球", "健身"))
y

#4.	有一個向量為gender=c("boy","girl","boy")，請將gender轉換為factor型態 並查看有哪些類別。
gender=c("boy","girl","boy")
z = levels(factor(gender))

z

