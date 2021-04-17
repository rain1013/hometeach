**PM2.5分析報告如下**
實驗目標：什麼時間地點狀況下空污嚴重？
實驗項目大綱：
特徵： No: row number/year: year of data in this row/month: month of data in this row/day: day of data in this row/hour: hour of data in this row
/DEWP: Dew Point (â„ƒ)/TEMP: Temperature (â„ƒ)/PRES: Pressure (hPa)/cbwd: Combined wind direction/Iws: Cumulated wind speed (m/s)/Is: Cumulated hours of snow
/Ir: Cumulated hours of rain
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

Step2. 關聯分析
  1. 從下圖可以發現，每年年初pm2.5明顯較其他月份來的高
  <img width="414" alt="截圖 2021-04-17 下午2 15 25" src="https://user-images.githubusercontent.com/66631188/115103822-6511d180-9f87-11eb-9f16-19b967aa19e1.png">

Step3: 實驗結果：
結論： 每年年初幾個月之pm2.5值，明顯較其他月份來的高。
