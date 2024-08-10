# CH9 ggplot基本操作

#安裝、載入ggplot



#用 ggplot描繪點陣圖 (在後方加上 geom_point圖形種類 )


#用 ggplot來描繪條狀圖與直方來描繪條狀圖與直方(在後方加上 geom_bar/histogram/col圖形種類)

#直方圖 histogram只需定義 x軸(AGE)

#bar chart只需定義 x軸(AREA)

#column char，需將兩個方向的屬性定義好 


#可以透過在 dplyr所講述到的 group_by、forward pipe(%>%)、summarise配合 col進行分析


#用fill將細類屬性定義到fill

#折線圖 (在後方加上 geom_line圖形種類 )

#盒狀圖(在後方加上 geom_boxplot圖形種類 )

#grid.arrange( ):可一次繪畫多個圖形

#用寫程式繪製直方圖；hist(向量名稱 ,xlab=”名稱 ”,col=’’顏色 ’’,”border=”邊界顏色 ”)


#作業
# 1. 請載入表格 hw9

# 2. 請利用 ggplot描繪出一散佈圖描繪出一散佈圖 (point)，其中 x軸為年紀 (AGE)，
#    y軸為薪水(SALARY)，並用隊伍 (TEAM)進行顏色區別

# 3. 利用 ggplot描繪出一直方圖(histogram)來顯示此表格中年齡的分布 (AGE)

# 4. 利用 ggplot描繪出一長條圖(bar chart)來顯示此表格中隊伍的分布 (TEAM)

# 5. 利用ggplot結合 dplyr套件的功能 (group_by、summarise、%>%)描繪出一條狀圖 (column)，
#   來顯示此表格中不同性別 (GENDER)，也就是男性 (M)和女性 和女性 (F)的平均薪資 (mean(SALARY))

# 6. 利用 ggplot描繪出一盒狀圖(boxplot)，表示「不同隊伍 (TEAM)」的年齡 (AGE)分布，
#   並以不同顏色區別隊伍 (TEAM)

# 7.將 2~6題所要求的圖形用 grid.arrange( )一次展示出

