# 向量（Vector）
#請建立一個數字向量 vec，其內容為 1 到 5。
myVector = c(1, 2, 3, 4,5)

#從向量 vec 中取出第二個元素。
myVector[2]

#在向量 vec 的末尾新增數字 6。
#myVector[6] = 6
myVector = c(myVector, 6)
myVector[length(myVector) + 1] = 6

#將向量 vec 中的每個元素加 1。
#myVector2 = c(1, 1, 1, 1, 1)
#myVector = myVector + myVector2

myVector = myVector + 1

for (i in myVector){
  myVector[i] = myVector[i] + 1
}

#計算向量 vec 中所有元素的總和。
SUM(myVector)

# 因子（Factor）
# 請建立一個因子 factor_var，其內容為 Male, Female, Female, Male。
myFactor1 = factor(c("Male", "Female", "Female", "Male"))
myFactor1

# 從因子 factor_var 中取出第二個元素。
myFactor1[2]

# 檢查因子 factor_var 的類別（levels）。
levels(myFactor1)

# 列表（List）
# 請建立一個列表 lst，其中包含 name = "John"，age = 25，以及 scores = c(90, 85, 88)。
myList1 = list(name = "John", age = 25, scores = c(90, 85, 88))

#	使用名稱索引取出列表 lst 中的 name。
myList1$name

#	使用位置索引取出列表 lst 中的第一個元素。
myList1[1]

#	向列表 lst 中新增一個元素 gender = "Male"。
myList1$gender = "Male"

# 矩陣（Matrix）
#	請建立一個 2 行 3 列的矩陣 matrix_data，其內容為 1 到 6。
myMatrix = matrix(data = 1:6, nrow = 2)

#	取出矩陣 matrix_data 中第一行第二列的元素。
myMatrix[1,2]

#	在矩陣 matrix_data 中新增一行，內容為 7, 8, 9。
myMatrix = rbind(myMatrix, c(7, 8, 9))

#	在矩陣 matrix_data 中新增一列，內容為 10, 11。
myMatrix = cbind(myMatrix, c(10, 11, 12))


# 陣列（Array）
#	請建立一個 2x3x2 的陣列 array_data，其內容為 1 到 12。

#	取出陣列 array_data 中第一層第二行第二列的元素。


# Data Frame
#	請建立一個 Data Frame df，其中包含 Name 為"John", "Mary"，Age為25, 30，Gender 為"Male", "Female"

#	從 Data Frame df 中取出 Name 列。

#	取出 Data Frame df 的第一行。

#	向 Data Frame df 中新增一個欄位 Salary，其內容為 50000 和 60000。

#	將 Data Frame df 中的 Age 列名稱更改為 Age_Years。


# 基本運算
#	設定兩個變數 x = 5 和 y = 10，計算它們的和並存入變數 z。

#	比較 z 是否大於 y，並將結果存入變數 is_greater。


# 邏輯控制
#	if-else 結構
# 設定變數 a = 6，使用 if-else 結構來打印相應的季節名稱。
# (1~3月為春天；4~6月為夏天；7~9月為秋天；10~12月為冬天。)

# switch結構
#使用 switch 函數，根據輸入的數字 3 返回相應的季節名稱。

# 迴圈
#使用 for 迴圈印出 1 到 5 的數字。


#使用 while 迴圈印出 1 到 5 的數字。

# dplyr 基本操作


# 創建資料框 df (詳見講義)

# 進行各種操作
# 1. 選擇 Name 和 Age 欄位

# 2. 篩選出 Age 大於 25 的資料

# 3. 新增一個 Tax 欄位，計算 Salary 的 10%

# 4. 彙總，計算平均薪資

# 5. 根據 Gender 分組

# 6. 根據 Age 排序

# 使用 %>% 管道操作符將篩選、分組和彙總操作串聯起來，計算 Age 大於 25 且按 Gender 分組的平均薪資。

# ggplot2 資料視覺化

#	ggplot2 基本操作
#	使用 ggplot2 繪製 Age 和 Salary 的點圖（scatter plot）。

#	繪製 Age 的直方圖（histogram）。

#	繪製 Gender 和 Salary 的條狀圖（bar plot）。

#	繪製 Age 和 Salary，並按 Gender 區分顏色的折線圖（line plot）。

#	繪製 Gender 和 Salary 的盒狀圖（boxplot）。

#	使用 color 和 fill 屬性分別繪製 Gender 的條狀圖。

#	圖表組合
#	使用 gridExtra 套件將以上圖表排列在一起顯示。


