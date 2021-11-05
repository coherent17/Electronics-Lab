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
        *    duty cycle=80%
         ![](https://i.imgur.com/KrcSK1w.png)
        （def:高電位出現時間/週期）

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

## Lab3

### exp1:

RC circuit:
![](https://i.imgur.com/Lb9WCxD.png)

#### parameter setting:
*    FG:
        *    $sine$
        *    $V_{pp}=10V$
*    OSC:
        *    CH1 to node in(observe the waveform of FG)
        *    CH2 to node out(observe the waveform pass throught the RC circuit)

#### record:
1. magnitude of $V_{pp}$ and waveform from node out with different frequencies($5kHz$, $10kHz$, $15kHz$)

#### parameter setting:
*    FG:
        *    $square$
        *    $V_{high}=1V$
        *    $V_{low}=0V$
        *    duty cycle = 50%
*    OSC:
        *    CH1 to node in(observe the waveform of FG)
        *    CH2 to node out(observe the waveform pass throught the RC circuit)

#### record:
1. waveform of node in and out
2. using cursor to evaluate the time constant of RC circuit: $\tau=RC$


### exp2:

RL circuit:
![](https://i.imgur.com/a83DMHF.png)

#### parameter setting:
*    FG:
        *    $sine$
        *    $V_{pp}=10V$
*    OSC:
        *    CH1 to node in(observe the waveform of FG)
        *    CH2 to node out(observe the waveform pass throught the RC circuit)

#### record:
1. magnitude of $V_{pp}$ and waveform from node out with different frequencies($100kHz$, $200kHz$, $300kHz$)

#### parameter setting:
*    FG:
        *    $square$
        *    $V_{high}=1V$
        *    $V_{low}=0V$
        *    duty cycle=50%
*    OSC:
        *    CH1 to node in(observe the waveform of FG)
        *    CH2 to node out(observe the waveform pass throught the RC circuit)

#### record:
1. waveform of node in and out
2. using cursor to evaluate the time constant of RL circuit: $\tau=L/R$

### exp3:

three part:
#### part 1(接上喇叭與沒接喇叭波型差別):
![](https://i.imgur.com/zqXYOOc.png)

##### parameter setting:
*    FG:
        *    $sine$
        *    $f=1kHz$
        *    $V_{pp}=2V$
*    OSC:
        *    CH1 to FG

##### record:
record the waveform on the OSC

![](https://i.imgur.com/BD9TWUg.png)

##### parameter setting:
*    FG:
        *    $sine$
        *    $f=1kHz$
        *    $V_{pp}=2V$
*    OSC:
        *    CH1 to the node between FG and speaker

##### record:
record the waveform on the OSC

#### part 2(對喇叭進行XY圖形繪製可以得到電壓對電流的特性曲線):
![](https://i.imgur.com/TY2u5Oo.png)

##### parameter setting:
*    FG:
        *    $sine$, $square$, $ramp$
        *    $f=1kHz$, $f=10kHz$
        *    $V_{pp}=2V$
*    OSC:
        *    CH1 to the node between FG and speaker
        *    CH2 to the node between speaker and resistor

##### record:
1. record the waveform of CH1 and CH2 and the phase difference between them
2. turn OSC to X-Y mode and record the X-Y mode plot
3. Listen the sound of different signal shape

### 電容:
*    透過電場儲存能量
*    Current voltage relation: $I_C(t)=C\frac{dV_c(t)}{dt}$

### 電感:
*    透過磁場儲存能量
*    Current voltage relation: $V_L(t)=L\frac{di_L(t)}{dt}$

### RC circuit:
$𝜏=RC$
![](https://i.imgur.com/6Oqai6E.png)
![](https://i.imgur.com/1BhNsc2.png)
用游標標定 $V_{s}$ 與 0.632$V_{s}$ 之位置，可得time constant
![](https://i.imgur.com/Oq8il2k.png)
![](https://i.imgur.com/AvxE6of.png)

### RL circuit:
$𝜏=L/R$

![](https://i.imgur.com/NyqZeyo.png)
![](https://i.imgur.com/HVh32m8.png)
![](https://i.imgur.com/jYfq8WB.png)
![](https://i.imgur.com/8e518zI.png)


### 單芯線與喇叭連接:
1. 剪15~20公分的單芯線
2. 剝皮
3. 穿過洞之後扭轉
4. 焊槍接觸焊錫接觸融化$Sn$ 接觸要焊接的地方，再用$Sn$去碰觸

## Lab 4

放大器: 
(OP741)
![](https://i.imgur.com/TLFAL8C.png)
（TL082）
![](https://i.imgur.com/qJszpOP.jpg)
![](https://i.imgur.com/g1STMfn.png)
擺放方式：
![](https://i.imgur.com/pRe3Lom.png)


### exp1 Non-inverting Amp. v.s. Inverting Amp.
 (非反向放大器 v.s.反向放大器)
 
* Non-inverting Amp.
![](https://i.imgur.com/LM13obQ.jpg)
    * Part1
        將輸入接地，形成正輸入與副輸入皆為0的狀態
        量取此時輸出電壓
        $V_{in}=0V$
        Record $V_{out}$ $DC$ $value$

    * Part2
        * FG input signal:
            $Sine$
            $f=500Hz$
            $V_{pp}=500mV$
        * record input & output signal 
        ---
* Inverting Amp.
![](https://i.imgur.com/PneLC8J.jpg)
    * Part3
        * FG input signal:
            $Sine$
            $f=500Hz$
            $V_{pp}=500mV$
         * record input & output signal 
    * Part4
        量測反向放大器的輸入阻抗
        * FG input signal:
            $Sine$
            $f=500Hz$
            $V_{pp}=500mV$
            $R_{adjust}=0$～$10 kΩ$
        ![](https://i.imgur.com/oRprsoQ.jpg)
    系統與一個可變電阻串聯為分壓電路 ，輸入一個中間頻率的交流訊號，觀察輸入側與輸出側的電壓大小，因為關係滿足分壓公式$\frac{v_{out}}{v_{in}}=\frac{R_{in}}{R_{x}+R_{in}}$，若刻意選擇讓比值為$\frac{1}{2}$，此時可得到輸入阻抗為可變電阻的大小$R_{in}=R_{x}$
            




### exp2 Voltage Follower 
電壓隨耦器 
> 降低感測器的輸出阻抗，而電壓隨耦器也稱為「單位增益緩衝器」 (unity gain buffer)

連接一個緩衝器
![](https://i.imgur.com/8WE2sHj.jpg)

* part1（不規定寫入結報）
輸入任意訊號，觀察輸入與輸出的變化
* part2
![](https://i.imgur.com/qO0S5LU.jpg)

    * FG input signal:
            $Sine$
            $f=1kHz$
            $V_{pp}=2V$
    * OSC+speaker+FG
    * OSC+FG+buffer+speaker
    * record the waveform shown on the OSC & $V_{pp}$


### exp3 Weighted Adder


![](https://i.imgur.com/DuceXn8.jpg)

* 接出一個類比加法器電路
* 分別以三張波形圖紀錄「in1 & in2」、「in1 & out」、「in2 & out」
* 用雙通道的FG（Rigol）（確認兩輸入訊號對齊為同步訊號）
 * FG input signal:
     * in2:
            $Square$
            $f=100Hz$
            $V_{high}=300mV$
            $V_{low}=0V$
     * in1:
            $Square$
            $f=100Hz$
            $V_{high}=1 00mV$
            $V_{low}=0V$