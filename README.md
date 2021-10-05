# 電子實驗
---
**目錄:**
[TOC]

## Lab1:

### 電阻色碼錶:
![](https://i.imgur.com/35ngzIQ.png)


### 麵包板:
![](https://i.imgur.com/AkH4ANu.jpg)

![](https://i.imgur.com/VuvHlge.png)

![](https://i.imgur.com/JwyvwBB.png)

![](https://scontent-tpe1-1.xx.fbcdn.net/v/t1.15752-9/242162857_412666323567868_5762753154001527118_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=ae9488&_nc_ohc=4z2e_tD7w9wAX-MlynO&_nc_oc=AQnK5Z3ejYBTUJ_HBLwCUI8Jo6dDNkt7h-zfd0yA-ebsFPprO0EL6022kgtpTyO7vPQ&_nc_ht=scontent-tpe1-1.xx&oh=4fb322bd8320959333d95be72ee677d9&oe=6176B777)


### 限流方法:

#### GW Power Supply(旋鈕設定):

    1.兩極短路:槍型接頭插在(+)(-)
    2.給一點點小電壓
    3.再調整所需要的限流大小(注意到CC的燈號仍然維持紅燈)
    4.開路才能調整電壓，拔掉槍型接頭，再轉動電壓旋鈕到所需要的數值
    
#### BK Power Supply(按鍵設定):
    
    1.開啟左下方的電源
    2.How to change channel?(Local鍵)看螢幕上的小箭頭
    3.設定電壓:按V-Set 輸入所需電壓(或旋轉旋鈕)，+ Enter 
    4.限流:按I-Set 輸入所需電流，+Enter
    5.輸出電壓或電流:按On/Off鍵，屏幕上出現CV
    6.若發生短路(抵達限流條件)，會逼逼叫。
    
### exp1:

量電阻方法:
![](https://i.imgur.com/rSlofO6.jpg)

加上干擾(人的手):
![](https://i.imgur.com/lYSE2zl.jpg)


### exp2:
一個要接地，一個不要。
用Channel 1 做第一個條件，用Channel 2 做第二個條件。

### exp3:
error formula:

$\begin{aligned}
error = \frac{|V_s-(V_{R1}+V_{R2})|}{V_s}\cdot100\%
\end{aligned}$

#### 如何量電阻跨壓:
![](https://i.imgur.com/IyQiphz.jpg)

### exp4:
了解輸出端接地與正負端的輸出結果


### Final Report:
https://github.com/coherent17/Electronics-Lab/blob/main/Fall%20Semester/Lab01_Instrument-DC/Lab01_RE_Instrument-DC_0811562_%E4%BD%95%E7%A5%81%E6%81%A9.pdf

## Lab2:

### how to use OSC?

#### 如何創造直流時變得訊號?
先產生交流訊號，再將直流訊號疊加上去

#### 如何使用通道耦合去除直流訊號留下交流訊號?
*   直流DC：直流訊號及交流訊號都會被保留下來
*   交流AC：僅保留交流的訊號(濾掉直流的成分)
*   點擊通道菜單：
*   ![](https://i.imgur.com/5VmHuHl.png)
*   ![](https://i.imgur.com/1kG8oDB.jpg)
*   將通道耦合改為交流
*   更改後要調整trigger的旋鈕

#### FG與OSG對接後如何調整waveform?
*    先根據觸發源設定trigger source:
*    先按trigger![](https://i.imgur.com/YYTyGnD.png)
*    按這![](https://i.imgur.com/1aWAZOM.png)
*    用旋鈕調整成對的trigger source![](https://i.imgur.com/eQWufym.png)
*    改變trigger level![](https://i.imgur.com/jxPZRkt.png)
*    轉這個將trigger level調整到內部![](https://i.imgur.com/RX3I24n.png)
*    轉這個調整時間![](https://i.imgur.com/OyWEc47.png)
*    調整縱軸(下面的調整0位準，上面的調縱軸刻度)![](https://i.imgur.com/ekL745U.png)


### exp1:
透過正弦波的輸出熟悉FG與OSC的操作
* Function Generator (FG) 函數產生器
$sine wave$
$frequency=1MHz$
$V_{pp}=5V$
$V_{offset}=2.5V$
$DC coupling$

*  Oscilloscope (OSC) 示波器
**耦合為針對通道做設定(Channel mode coupling)**
**不要錯誤設定為觸發耦合！(Trigger coupling)**

**設定好FG與OSC後用鱷魚夾的線對接**
    觀察＆紀錄正弦波 
    1. 通道耦合設定為**直流**
    2. 耦合器改為**交流**
    3. $f=0.1Hz$ ->週期10秒鐘，超過記憶體儲存空間，因此會有斷點
        等待波形出現
        回答問題：
        A. Is the waveform curve always continuous? 
        B. Is there any breaking point/part? 
        C. If yes, how does the point/part move? 
        D. Where does the point move from?

        
4.微調 f=10MHz → f=60MHz, step = 5MHz(不要用Agilent的函數產生器)
    回答問題：
        除了f改變外，有何物理量改變？
        變化趨勢如何呈現？
        波型會因為頻率響應產生影響
        
在記錄波型的時候，需要紀錄這11個特徵
![](https://i.imgur.com/KGZV4Rb.png)

![](https://i.imgur.com/W6yH2lP.png)


### exp2:
觀察函數產生器 輸出端子訊號(output)＆同步端子訊號(sync)的關係

Draw OUTPUT and SYNC port waveform "in the same graph"
Both channel are DC coupling

*    FG:
        *    $sin$
        *    $frequency=50kHz$
        *    $V_{pp}=2V$
        *    $V_{offset}=0V$
*    OSC(in DC coupling mode):
        *    CH1 -> FG output (draw in the same graph)
        *    CH2 -> FG SYNC (draw in the same graph)
回答問題：
    Ｑ：同步訊號的波形？
    Ａ：方波
    Ｑ：峰對峰值大小？
    

### exp3:
觀察方波特性＋理解耦合功能

1.
*    FG:
        *    $square$
        *    $frequency=100kHz$
        *    $V_{high}=5V$
        *    $V_{low}=0V$
        *    duty cycle=80%（def:高電位出現時間/週期）
*    OSC(DC -> AC):
    *    CH1 set DC
    *    CH2 set AC
    注意通道0位準的不同!
    ![](https://i.imgur.com/cKxPmwY.png)


2.
*    FG:
        *    $square$
        *    $frequency=100kHz$
        *    $V_{high}=5V$
        *    $V_{low}=0V$
        *    duty cycle=20%
*    OSC(DC -> AC):

### exp4:
實際接一個電阻電容電路(RC circuit)，觀察正弦波訊號特性＋理解相位差的概念
![](https://i.imgur.com/UfTVCLP.png)

*    FG:
        *    $sine$
        *    $frequency=3KHz$
        *    $V_{pp}=2V$
        *    $V_{offset}=0V$

*    OSC:
        *    trigger source=CH1
        *    trigger level = 0V
        *    $GND_{CH1}=GND_{CH2}=0V$

可以觀察到輸入節點與輸出結點各有sine wave，波型相似，但是$V_{pp}$不同，而且兩者有相位差。

改變觸發源:trigger source = CH2

回答問題：
    Which channel(node) phase is leading? 
    How much is the phase difference ? (Unit: degree)


麵包版接法:
![](https://i.imgur.com/LU93gzb.png)


---

**BNC纜線**
* 將交流訊號從ＦＧ連接到電路上
* 從電路連接到ＯＳＣ上
* 一端為鱷魚夾 一端為BNC公頭

**Function Generator (FG) 函數產生器**
* Agilent 33210A
* Rigol DG4062

**Oscilloscope (OSC) 示波器**
* 取樣原理
* 觸發
* 耦合