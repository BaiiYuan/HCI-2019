Vloset Hi-Fi Prototype README
===

#### Virtual support, easy Closet

###### tags:  `HCI`  `Assignment9`  `README`



### OPERATING INSTRUCTIONS:
我們利用swift + xcode來建立這次的prototype，此APP目前是跑在iPhone XR 以及 ios12的環境。請從以下網址下載repo並且用xcode開啟。開啟後按run / cmd+R 來開啟虛擬機測試。



### HOW TO USE:

#### 1. 隨時掌握衣櫃裡有什麼衣服

- 在主畫面有一個「＋」按鈕
- 能夠讓使用者拍攝衣服照片
- 選定照片後可以個人化上tag
- 系統會根據照片給適合的 Default tag
- 新增完後會到跳到衣櫃的頁面
- 衣櫃的頁面可以總覽全部的服飾

#### 2. 知道現有衣服該如何搭配

- 在主畫面有一個「Try-on」按鈕
- 進入後有個個人的影像
- 可以點選更改按鈕來搭配不同的衣物
- 衣物中有系統推薦的選項，可以嘗試搭配並點選進入查看衣服的相關資訊。

#### 3. 瀏覽推薦的穿搭資訊

- 在主畫面有動態推播的穿搭資訊
- 立刻顯示主要的內容文字
- 點擊進入已得知更多訊息



### WIZARD-OF-OZ & HARD-CODED FEATURES:

#### On Task 1, we hard-coded:
- 虛擬的衣櫃內容
- 相機的部分沒有真的連接，用固定的照片取代
- 只能固定加入某一件衣服

Wizard of Oz techniques:
- 適合的 Default tag是預設寫死的，並未使用ML技巧predict

#### On Task 2, we hard-coded:
- 推薦的衣服內容
- 固定的衣服資訊
- 固定的衣服類別

Wizard of Oz techniques:
- 人物的衣服變換也只是變換照片，並未使用 Conditional Cycle GAN 來生成

#### On Task 3, we hard-coded:
- 虛擬的最新內容
- 固定的內容文字

Wizard of Oz techniques:
- None



### Limitations

- 資料庫：目前的資料幾乎都是hard coded的，因此衣服等等資訊都是固定的
- Machine Learning 相關功能: 像是推薦及一些生成類的效果，我們都直接hard-coded實作。