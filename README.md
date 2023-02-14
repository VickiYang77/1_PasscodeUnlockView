# #1 App 的解鎖畫面

![Simulator Screen Recording - iPhone 13 Pro - 2022-09-04 at 18 42 04](https://user-images.githubusercontent.com/25075180/188309436-67c5cdc1-9606-4301-87fa-c975dd294667.gif)


![](https://cdn-images-1.medium.com/max/800/1*BiQ9MxDGQQixVO4Dyuy43Q.png)

## Learning Goal

- Autolayout
- 使用stackView拉出數字鍵盤
- 多個按鈕對應一個IBAction的判別方法

## Highlight

- 直接將 Main storyboard 視為主頁面來開發
- 未使用特殊架構，UI 元件皆是用 storyboard 拉出來的
- 使用stackView處理想自動平均分佈的畫面

    ![stack1](https://user-images.githubusercontent.com/25075180/218798884-1eff4bd1-7393-4215-9cfc-c53daa4a2776.png)

- 使用stackView刻出數字鍵盤

    ![stack2](https://user-images.githubusercontent.com/25075180/218798911-0582bf2c-d92f-4cbd-9ccc-bad4541390e0.png)

- 判別按下的數字鍵
    
    透過取得的 button tag 來區分數字鍵，並抓取 sender.currentTitle 獲取按鈕的值
    ![code](https://user-images.githubusercontent.com/25075180/218798975-ec794056-4784-43c1-ac39-c5e3e66c4d83.png)
    

- **抓取 sender.currentTitle 的值**
    
    需把 UIButton Style 設定成 Default
    
    ![image](https://user-images.githubusercontent.com/25075180/218799007-c4935195-ce00-44a3-8c7a-356347e7a3ff.png)

