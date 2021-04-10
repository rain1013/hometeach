這是一個關於iris計算的sql檔
總共有四種特徵,三種不同類型的花，可以用簡單的平均數等發現 這三種鳶尾花在平均花萼花瓣長度有明顯差異。

實驗目標：利用鳶尾花的四種特徵來辨別三種不同類型的鳶尾花。
實驗項目大綱：先利用sql簡單運算敘述性統計如平均值,最大值,最小值等。
Step1. 欄位檢查：
1. 總共有三種花，分別各50個
<img width="130" alt="截圖 2021-04-10 上午8 35 28" src="https://user-images.githubusercontent.com/66631188/114252449-d249c380-99d7-11eb-902b-70e8d0e4a221.png">
2. 花萼長度多集中在5-6.7之間
<img width="126" alt="截圖 2021-04-10 上午8 43 24" src="https://user-images.githubusercontent.com/66631188/114252633-d9bd9c80-99d8-11eb-8f23-74ef389b25f4.png">
以組距來看,可把花萼寬度分成5組，資料大多集中在6，4cm和8ｃｍ數量較少屬離群值。
<img width="117" alt="截圖 2021-04-10 上午8 57 54" src="https://user-images.githubusercontent.com/66631188/114253053-ffe43c00-99da-11eb-939b-a60dc8920b78.png">
3. 花萼寬度大多集中在2.8-3.4cm
<img width="122" alt="截圖 2021-04-10 上午8 41 56" src="https://user-images.githubusercontent.com/66631188/114252597-a0852c80-99d8-11eb-8837-d7d4c609cbc1.png">
以組距來看,可把花萼寬度分成3組，資料大多集中在3。
<img width="119" alt="截圖 2021-04-10 上午8 56 50" src="https://user-images.githubusercontent.com/66631188/114252998-c6133580-99da-11eb-8e92-9c658a95c1b8.png">
4. 短的花瓣長度大多集中在 1.4-1.5 而長的大多集中在4.5-5.1cm
<img width="122" alt="截圖 2021-04-10 上午8 44 57" src="https://user-images.githubusercontent.com/66631188/114252668-0ffb1c00-99d9-11eb-86f3-9184926cb7b3.png">
以組距來看,可把花瓣長度分成1-7共7組，資料大多集中在5。
<img width="131" alt="截圖 2021-04-10 上午8 55 59" src="https://user-images.githubusercontent.com/66631188/114252961-982df100-99da-11eb-80f4-7cefc206a4d0.png">
5. 花瓣寬度寬度分佈也很大，有29個約0.2cm 而1.3cm以上有十幾個。
<img width="120" alt="截圖 2021-04-10 上午8 46 54" src="https://user-images.githubusercontent.com/66631188/114252728-55b7e480-99d9-11eb-8f18-ece7f2f10ecc.png">
以組距來看,可把花瓣寬度分成0-3共四組，資料大多集中在0-2之間。
<img width="117" alt="截圖 2021-04-10 上午8 54 12" src="https://user-images.githubusercontent.com/66631188/114252918-58ffa000-99da-11eb-9366-a36a127e338d.png">

Step2. 關聯分析（先使用sql分析）
從min,max和avg中，可以觀察出三者在花萼,花瓣長度與花瓣寬度有線性關係，virginica最長,其次為versicolor,最後為setosa
<img width="945" alt="截圖 2021-04-10 上午9 05 32" src="https://user-images.githubusercontent.com/66631188/114253225-ee4f6400-99db-11eb-911c-09a4e1568bb8.png">
Step3: 透過決策樹和回歸模型分析，兩個model都認為'petal length (cm)', 'petal width (cm)'影響最大
<img width="890" alt="截圖 2021-04-10 上午9 16 28" src="https://user-images.githubusercontent.com/66631188/114253645-8c8ff980-99dd-11eb-9880-6ba6f5e2d273.png">

實驗結果：可以使用petal的長寬來判別種類
結論：因此推論可以使用花瓣長度與寬度來預測鳶尾花類型。
簡單| 說明 
----- | ------------- 
特徵1   | 花萼長度 
特徵2   | 花萼寬度
特徵3   | 花瓣長度
特徵4   |花瓣寬度
計算方法1 | 平均值 
計算方法2 | 最大值 
計算方法3 | 最小值 
結果 | 肉眼觀察可以發現 virginica的花萼與花瓣平均長度>ver>seto。


