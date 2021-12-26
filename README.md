# 電子實驗(一)期末考重點整理

[TOC]

## 1. Instruments-DC
### 考慮三用電表內電阻的電阻量測:
![](https://i.imgur.com/CJJOkTB.png)

### 限流:
*    Why 限流?
    
    在V_supply固定下，倘若Load很小，那麼會吸引大電流通過負載，會燒毀。

*    How to 限流?

    GW Power Supply(旋鈕設定):
    1.兩極短路:槍型接頭插在(+)(-)
    2.給一點點小電壓
    3.再調整所需要的限流大小(注意到CC的燈號仍然維持紅燈)
    4.開路才能調整電壓，拔掉槍型接頭，再轉動電壓旋鈕到所需要的數值

    BK Power Supply(按鍵設定):
    1.開啟左下方的電源
    2.How to change channel?(Local鍵)看螢幕上的小箭頭
    3.設定電壓:按V-Set 輸入所需電壓(或旋轉旋鈕)，+ Enter 
    4.限流:按I-Set 輸入所需電流，+Enter
    5.輸出電壓或電流:按On/Off鍵，屏幕上出現CV
    6.若發生短路(抵達限流條件)，會逼逼叫。

*    限流原理:
    ![](https://i.imgur.com/r1Lqm4Y.png)

## 2. Instruments-AC
*    BNC Cable
    ![](https://i.imgur.com/pcdnr4m.png)
*    OSC(僅在poedge會去取樣)
    ![](https://i.imgur.com/3OFOLk7.png)
*    Trigger
    ![](https://i.imgur.com/eHVfpkR.png)
    ![](https://i.imgur.com/aA29TlX.png)
*    Coupling:
    AC coupling濾直流，DC coupling啥都不幹
    ![](https://i.imgur.com/psM5oW1.png)


## 3. Basic Component

### RC circuit:
![](https://i.imgur.com/auK2d8z.png)
![](https://i.imgur.com/dCUDdTa.png)

### RL circuit:
![](https://i.imgur.com/XXsU00d.png)
![](https://i.imgur.com/3MPHEmp.png)


## 4. Operational Amplifier

![](https://i.imgur.com/DHqYnCH.png)
![](https://i.imgur.com/STiJSVF.png)
![](https://i.imgur.com/xkYegWU.png)
![](https://i.imgur.com/HMRKkTl.png)
![](https://i.imgur.com/nHIj0Tc.png)
![](https://i.imgur.com/NGJ7oT8.png)
![](https://i.imgur.com/BwTXIku.png)
![](https://i.imgur.com/ahW7deZ.png)
![](https://i.imgur.com/xQtXvpd.png)

## 6. Diode

![](https://i.imgur.com/OgW17Sb.png)
* 半波整流器(Half-wave Rectifier)：
![](https://i.imgur.com/PjR8gSh.jpg)
![](https://i.imgur.com/64aLmux.png)
☆含濾波電容（filter capacitor）的峰值整流器（Peak Rectifier）
![](https://i.imgur.com/6bVbBDq.jpg)
$\Delta t$：導通時段（conductive interval）
$V_{r}$：ripple voltage
* 全波整流器 Full-wave Rectifier）
![](https://i.imgur.com/ZnETcqp.jpg)
    * C大 Ripple小
    * R大 Ripple小
![](https://i.imgur.com/ZltEIzI.jpg)

---
* Experiment 1: Measure Cut-in Voltage of the Diode

用X-Y mode 求 1N4148/LED/Zener I-V curve


INVERT CH2 SIGNAL
![](https://i.imgur.com/F31ZEWk.png)
![](https://i.imgur.com/bLVU0wD.jpg)

* Experiment 2: The Characteristics of Halfwave Rectifier

    * R大 Ripple小
    * C大 Ripple小
* Experiment 3: Clamp circuit
* 


## 7. Multivibrator

## 8. DC-DC Converter

## 9. IR Transmitter and Receiver

### 基本紅外光無線收發電路
![](https://i.imgur.com/pbq9jTL.png)
輸入的直流電壓先經過LED 的voltage drop 後，發出紅外光的直流訊號，而後透過光電晶體將光子轉為光電流是為$I_{B}$。而後透過該電晶體將Base 端電流放大從Emitter 端出去，從而將無線的訊號可視化在示波器上。使我們能夠確定該光電晶體是確實有接收到LED 所發出的紅外光訊號。

![](https://i.imgur.com/ExoKe6b.png)
將輸入的直流電壓改為有直流成分的交流電輸入，當$V_{S}$的電壓增加時，流經LED的電流變大，因此在接收端可以接受到較強的訊號，造成通過$R_{2}$的電流較大，因此$V_{out}$也會增加。透過以上分析可以說明$V_{S}$與$V_{out}$為同向，會同時增加或減少。

### BJT共射極放大電路:
![](https://i.imgur.com/WhUvpHZ.png)

隨著$V_s$的變大，流進BJT的$I_c$也會隨之增加，這表示$V_{cc}$在經過diode的時候降壓會更多，使得$V_c$會較小，因此$V_s$與$V_c$是為反向的關係。同樣的，流出BJT的$I_e$也會變多，這表示$V_s$與$V_e$為反向的關係。

### IR transmitter and receiver整體電路
![](https://i.imgur.com/DxbLeNY.png)

![](https://i.imgur.com/X4ykpCE.png)



## Midterm Project

Zenor voltage regulator
![](https://i.imgur.com/Y1BhRBx.png)
![](https://i.imgur.com/xQGyHFf.png)

### 期中專題電路分解:

*    Power Transformer:
![](https://i.imgur.com/MIiTrxn.png)

*    Diode Rectifier
![](https://i.imgur.com/lQbHS1v.png)
![](https://i.imgur.com/DwFQM7M.png)
*    Filter
![](https://i.imgur.com/3PhKms1.png)

## Final Project

*    麥克風需要先加上偏壓才能工作
![](https://i.imgur.com/7Umwo08.png)

*    Audio Jack
![](https://i.imgur.com/3iL50Pg.png)
Tip 為尖端，Ring 為中間區段，分別代表不同聲道的輸出，末端的Sleeve為接地
![](https://i.imgur.com/2NlTlSP.png)
![](https://i.imgur.com/A2QqO8c.png)
![](https://i.imgur.com/4mrJZil.png)

*    雷射收發電路
![](https://i.imgur.com/n3YpMD4.png)
左邊的發射端是使用加法電路，而後透過雷射將其傳輸到光二極體，將光子轉為光電流，而後透過反向放大器轉為電壓輸出，因此為Transimpedance Amplifier(將輸入電流轉為輸出電壓)

*    雷射及光電晶體的腳位
![](https://i.imgur.com/cEbBbGp.png)