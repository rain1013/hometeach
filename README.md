
**汽車分析報告如下**
實驗目標：看哪一種車評價較好
實驗項目大綱：
從DB來看總共有六種特徵：買價,維護價,車門數量,乘載人數,後車廂大小,安全度
對應的結果則是接受程度：unacc, acc, good, vgood

<img width="598" alt="截圖 2021-04-10 下午2 14 29" src="https://user-images.githubusercontent.com/66631188/114260390-199b7880-9a07-11eb-8c1d-4142b73fd96e.png">

Step1: 單欄位分析： 先做特徵處理，因為資料大多為序列類別，因此先分別將六種特徵數值化以便分析。
1. 買價,維護價皆為類別，分別有high low med vhigh四種，各有432個
<img width="84" alt="截圖 2021-04-10 下午2 08 36" src="https://user-images.githubusercontent.com/66631188/114260276-65015700-9a06-11eb-8a45-1dbe1385c840.png">

2. 乘載人數則有2,3,4,5人以上分別為432人
<img width="174" alt="截圖 2021-04-10 下午2 03 11" src="https://user-images.githubusercontent.com/66631188/114260158-ab09eb00-9a05-11eb-88f0-50bdebeb9c7d.png">
                 
3. 車門數量則分成 2,4,以上，各有576個
<img width="101" alt="截圖 2021-04-10 下午2 11 41" src="https://user-images.githubusercontent.com/66631188/114260328-b4478780-9a06-11eb-91ed-7abb93d63b58.png">
                 
4. 後車廂大小分為大中小三類型，分別有576個
<img width="90" alt="截圖 2021-04-10 下午2 12 25" src="https://user-images.githubusercontent.com/66631188/114260347-d6410a00-9a06-11eb-8952-badf9d94502d.png">
                 
5. 安全度與後車廂大小類似，分成高中低，數量也是576個

Step2: 透過相關係數分析，分析特徵與安全度的相關程度;此外也導入決策樹模型，預測準確度達90%以上,但無法順利建立path無法顯示決策過程
<img width="780" alt="截圖 2021-04-10 下午2 22 10" src="https://user-images.githubusercontent.com/66631188/114260552-31273100-9a08-11eb-9f55-064eb8aa3d6c.png">

實驗結果：發現六種特徵中，安全度與乘載人數與接受程度有正相關，推測座位越多的車子與安全度越高的車子評價越好

結論：因此推論可以使用乘載人數與安全度來預測車子評價。
