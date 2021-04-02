
**收入分析報告如下**
```
實驗目標：如何努力才會收入高
實驗項目大綱：從DB來看總共有15種特徵:age,workclass,fnlwgt,education,education-num,marital-status,occupation,relationship,
            race,sex,capital-gain,capital-loss,hours-per-  
            week,native-country。
            對應的結果則是收入： >50k or <=50k
            
            Step1. 欄位檢查：
            刪除部分欄位如'race','workclass', 'relationship','native-country','marital-status','education'
            等，先做特徵處理，因為資料大多為序列類別，因此將職業使用數值化以便分析。
            Step2. 關聯分析（先使用sql分析）
            1. capital_gain和loss <-> 收入之間的關係
             <=50K的人平均資本利得僅148.75(最大值41310)而>50K的人卻達4006.14（最大值可達99999)
             <=50K的人平均資本損失僅53(最大值4356)而>50K的人卻達195（最大值可達3683)
            2. capital_gain和loss <-> 年齡之間的關係
            3. 發現60歲以上平均資本利得1694，較40~60歲1670, 20~40歲683, 20歲以下94 為大，
                  60歲以上平均資本損失103，較40~60歲113大, 但較20~40歲71, 20歲以下40 為大，
            4. 教育時間與收入之關係
            >50K總共有7841人而<=50K則有24720
            其中教育10年以上時間佔>50K人數共有4535/7841 = 57.8%
            而教育10年以上時間佔<=50K人數共有5981/24720 = 24.2%
            值得一提的是0-5年教育而收入卻大於50K的人數僅89 (1.1%)而小於等於50K的人數卻達1623（6.5%）
            5. 性別和收入之關係
            |性別|收入>50K|
            |---|---| 
            |男生|30.5%|
            |女性|10.9%|
            ![image](https://user-images.githubusercontent.com/66631188/113394966-ba68b300-93cb-11eb-940d-e12cb19c6746.png)
            6. 其他
            ![image](https://user-images.githubusercontent.com/66631188/113394907-a2912f00-93cb-11eb-9bfd-510376efd273.png)

            Step3: 透過相關係數分析,決策樹和回歸模型分析。

實驗結果：從sql分析可以發現資本利得,教育時間,性別和收入有明顯關係
若從相關係數可觀察到與收入相關度最高的是教育時間,接下來為年齡,每週工作時間,性別,資本利得
若從回歸模型分析，顯著的feature分別為每週工作時間,年齡,資本利得和資本利損．
若從

結論： 以上幾種變數和收入大小有正相關。
```
