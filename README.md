**PM2.5分析報告如下**
實驗目標：什麼時間地點狀況下空污嚴重？
實驗項目大綱：
特徵：</br> 
1. No: row number</br>
2. year: year of data in this row </br>
3. month: month of data in this row</br>
4. day: day of data in this row</br>
5. hour: hour of data in this row</br>
6. DEWP: Dew Point (â„ƒ)</br>
7. TEMP: Temperature (â„ƒ)</br>
8. PRES: Pressure (hPa)</br>
9. cbwd: Combined wind direction</br>
10. Iws: Cumulated wind speed (m/s)</br>
11. Is: Cumulated hours of snow</br>
12. Ir: Cumulated hours of rain</br>
對應的結果 pm2.5: PM2.5 concentration (ug/m^3)

Step0.
  前處理：
  1. 先進行時間資料處理
  2. 將pm2.5數值化

Step1. 欄位檢查：
  1. 每月pm2.5 data
  平均值最高的月份分別為2013-01(191)/2014-02(173)/2011-01(150)
  最大值最高的月份分別為2012-01(994)/2010-02(980)/2013-01(886)
  最小值最小的月份除了2010-7/2010-12/2011-02有值外，其他月份最小值皆為0
  <img width="386" alt="截圖 2021-04-17 上午8 59 36" src="https://user-images.githubusercontent.com/66631188/115097191-4695e100-9f5b-11eb-80cb-f55c2c562b63.png">
  2. 每年pm2.5 data
  平均值最高的年份分別為2013(100)/2014(96)/2010(96)
  最大值最高的年份分別為 2012(994)/2010(980)/2013(886)
  最小值：2010-2014最小值都是0
  <img width="377" alt="截圖 2021-04-17 上午9 41 43" src="https://user-images.githubusercontent.com/66631188/115098190-2537f380-9f61-11eb-82bd-9f1c46c26c2a.png">
  <img width="407" alt="截圖 2021-04-17 下午2 13 43" src="https://user-images.githubusercontent.com/66631188/115103793-309e1580-9f87-11eb-9821-9a7be7870ed6.png">
  3. cbwd
  觀測時間中，風向最常出現的是SE，次數高達15290次。
   <img width="639" alt="截圖 2021-05-01 上午10 07 23" src="https://user-images.githubusercontent.com/66631188/116767822-2c80f600-aa65-11eb-8931-6274ce018fb8.png">
   <img width="214" alt="截圖 2021-05-01 上午10 07 06" src="https://user-images.githubusercontent.com/66631188/116767805-1bd08000-aa65-11eb-833e-6de053fd63b8.png">
NE     4997
NW    14150
SE    15290
cv     9387

Step2. 關聯分析
  1. 從下圖可以發現，每年年初pm2.5明顯較其他月份來的高
  <img width="414" alt="截圖 2021-04-17 下午2 15 25" src="https://user-images.githubusercontent.com/66631188/115103822-6511d180-9f87-11eb-9f16-19b967aa19e1.png">
  </br>
  
  2. 從下圖可發現，風向為cv時，平均的pm2.5數值最高
  <img width="273" alt="截圖 2021-05-01 上午10 18 22" src="https://user-images.githubusercontent.com/66631188/116768074-a1086480-aa66-11eb-99d7-21e621da3e41.png">
  </br>
  
  3. pm2.5 vs temp： 溫度有週期性，年初與年底溫度最低，可發現溫度低的時候月pm2.5值偏低。
  <img width="953" alt="截圖 2021-05-01 上午10 21 46" src="https://user-images.githubusercontent.com/66631188/116768145-12e0ae00-aa67-11eb-8db0-6a4d0497db26.png">
  </br>
  
  4. pm2.5 vs lws 風速與pm2.5看不出明顯趨勢。
  <img width="950" alt="截圖 2021-05-01 上午10 22 33" src="https://user-images.githubusercontent.com/66631188/116768168-3146a980-aa67-11eb-8cf1-c486483ca618.png">
  </br>
  
  5. pm2.5 vs Is 降雪量越多，月平均pm2.5越高。
  <img width="963" alt="截圖 2021-05-01 上午10 23 04" src="https://user-images.githubusercontent.com/66631188/116768179-46bbd380-aa67-11eb-8915-5ee89d928c6e.png">
  </br>
  
  6. pm2.5 vs Ir 雨量與pm2.5看不出明顯趨勢。
  <img width="962" alt="截圖 2021-05-01 上午10 23 51" src="https://user-images.githubusercontent.com/66631188/116768198-5c30fd80-aa67-11eb-86ec-638c2212c9f9.png">
  </br>
  
  7. pm2.5 vs PRES PRES越高，pm2.5越高。
  <img width="954" alt="截圖 2021-05-01 上午10 24 15" src="https://user-images.githubusercontent.com/66631188/116768209-6fdc6400-aa67-11eb-835f-c76776d0d360.png">
  </br>
  
  8. pm2.5 vs DEWP DEWP與pm2.5看不出明顯趨勢。
  <img width="970" alt="截圖 2021-05-01 上午10 24 46" src="https://user-images.githubusercontent.com/66631188/116768222-884c7e80-aa67-11eb-9ab2-b1b74e823729.png">
  </br>
  
Step3: 實驗結果：
結論： 
1. 每年年初幾個月之pm2.5值，明顯較其他月份來的高。
2. 風向為cv時,降雪量越多,PRES越高時，避免出門。
