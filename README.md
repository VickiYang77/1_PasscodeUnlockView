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
![image](https://user-images.githubusercontent.com/25075180/218506697-5f238024-be49-4c9a-9baf-642959762b0a.png)

- 使用stackView刻出數字鍵盤
![image](https://user-images.githubusercontent.com/25075180/218506749-0d5ee6df-b93e-4e62-a4df-44a39944e955.png)

- 判別按下的數字鍵
    
    透過取得的 button tag 來區分數字鍵，並抓取 sender.currentTitle 獲取按鈕的值
    ![image](https://user-images.githubusercontent.com/25075180/218507189-046153d3-a25a-44dd-975a-5edca95b0cfe.png)
    

- **抓取 sender.currentTitle 的值**
    
    需把 UIButton Style 設定成 Default
    
    ![image](https://user-images.githubusercontent.com/25075180/218506823-c574923b-5307-4f44-bee9-291a2f5c15ae.png)
