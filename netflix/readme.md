**Netflix分析報告如下**
實驗目標：
1. Understanding what content is available in different countries
2. Identifying similar content by matching text-based features
3. Network analysis of Actors / Directors and find interesting insights
4. Is Netflix has increasingly focusing on TV rather than movies in recent years.

實驗項目大綱：
特徵：</br> 
1. show_id: 
2. type:
3. title: 
4. director: 
5. cast: 
6. country: 
7. date_added: 
8. release_year: 
9. duration: 
10. listed_in: 
11. description: 
對應的結果： 無

Step0.
  前處理：
  1. 先進行時間資料處理
  2. 將pm2.5數值化

Step1. 欄位檢查：
  1. type
  總共有兩種類型：movie (5377) 和 TV (2410)
  <img width="109" alt="截圖 2021-06-27 上午12 02 15" src="https://user-images.githubusercontent.com/66631188/123518971-0f6e4980-d6db-11eb-8c19-17c0f8a086a5.png">
  2. listed_in: documentaries和 stand-up comedy 最多
  <img width="363" alt="截圖 2021-06-27 上午12 05 26" src="https://user-images.githubusercontent.com/66631188/123519019-68d67880-d6db-11eb-9e88-aa7bbd328bb1.png">
  3. release_year: 從1925-2021年間
  <img width="141" alt="截圖 2021-06-27 上午12 09 00" src="https://user-images.githubusercontent.com/66631188/123519110-e5695700-d6db-11eb-9a20-10a10cb3af0b.png">

Step1. 欄位檢查：


  3. 每月pm2.5 data
  平均值最高的月份分別為2013-01(191)/2014-02(173)/2011-01(150)</br>
  最大值最高的月份分別為2012-01(994)/2010-02(980)/2013-01(886)</br>
  最小值最小的月份除了2010-7/2010-12/2011-02有值外，其他月份最小值皆為0</br>
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
  9. 比較時間與每個月pm2.5值是否超過三倍標準差，發現13,11,14,10年份月初出現abnormal次數最多。
  <img width="490" alt="截圖 2021-05-15 上午10 30 52" src="https://user-images.githubusercontent.com/66631188/118345725-01200000-b569-11eb-8116-8fa432de5d35.png">
  </br>
Step3: 實驗結果：
結論： 
1. 每年年初幾個月之pm2.5值，明顯較其他月份來的高。
2. 風向為cv時,降雪量越多,PRES越高時，避免出門。
