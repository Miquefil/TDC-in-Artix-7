# Time-to-digital Converter using Tapped Delay Lines
--------------------------------------------------------------------
Final degree project for Electronic Engineering
- Author: Miqueas Filsinger
- Universidad Nacional del Sur

# Dudas, Consultas y Anotaciones
1. En los datos estamos recibiendo muchas stamps con valor 0: se puede deber a que existen muchas bubbles, por lo que nunca encuentra un flanco de entrada o de salida.



## Technical Information & Modules:
### Transmission & USART
- Constant speed of 115200 baud
- 8N1, (8 bits of data, 1 stop bit, not parity)
- None type of control used
- Double 0 byte at the start of transmission
![alt text](/images/example_uart.png)

### Modules Instantiation Hierarchy 

```
└── info.md
└── top_tb.v
    └── top.v
        └── TDC.v
            └── defines.v
            └── Coarse.v
            └── Edge.v
            └── Fine.v
            └── DecodeStart.v
            └── DecodeStop.v
            └── merging.v
        └── memory_ctrl.v
        └── uart_tx.v  
        └── TDC_pins.xdc
```

### Pins and Connections
| PACKAGE PIN    | COMPONENT       |Wire Name (top.v)| Note        |
|:--------------:|-----------------|:---------------:|-------------|
|     R3         |     DS2.2       |       clk_p     |     clk     |
|     P3         |     DS2.2       |       clk_n     |     clk     |
|    M26         |     DS2.2       |   led_WriteERR  |     led0    |
|    T24         |     DS3.2       |   led_ReadERR   |     led1    |
|    T25         |     DS4.2       | led_WriteStage  |     led2    |
|    R26         |     DS5.2       |  led_ReadStage  |     led3    |
|    T8          |      J33.1      |      hit_p      | Conector SMA|
|    T7          |      J34.1      |      hit_n      | Conector SMA|
|    P6          |      SW3.3      |   startReading  | Boton Norte |
|    U5          |      SW5.3      |   startWriting  | Boton Este  |
|    U4          |      SW8.3      |      but_rst    |  CPU Reset  |
|    R8          |      SW2.1      |    selector_0   |  fine debug |
|    P8          |      SW2.2      |    selector_1   |  fine debug |


#### UART diagram

![imagen_uart](wave_diagrams/UART.svg)

#### PLL Config
We've used a phase difference of 40°, approximately $\frac{1}{8} \; T_{clk}$ of delay.
![PLL](/images/PLL.png)






## Results & Processing
> [!WARNING]  
> When processing always remember that StopValue result is the falling edge where the hit signal has been captured.


![LVDS](/images/lvds.png)

# Notes
### Fine stamp processing:
For the fine stamp processing, first an edge detector was implemented. For Start or Stop fine stamp, some kind of filter was implemented, which searched for a certain sequence in the delay chain, it may be '1110' for start edge, or '0001' for stop edge. Bubble problems arise naturally in this type of architecture, thus interferring with the edge detector since if a bit is changed no sequence may be detected in the chain. To overcome this we implemented another type of processing architecture, a 'ones counter' architecture. Counting how many ones remain in the delay chain should be a direct way of a counting the edge in the delay chain. For this, a summing tree was implemented [Wang]
![ones counter](/images/ones_counter.png)


#### Ones counter
| in[5] | in[4] | in[3] | in[2] | in[1] | in[0] | ones counted | binary output | LUT_2 (MSB) | LUT_1 | LUT_0 (LSB) |
| ----- | ----- | ----- | ----- | ----- | ----- | ------------ | ------------- | ----------- | ----- | ----------- |
| 0     | 0     | 0     | 0     | 0     | 0     | 0            | 000           | 0           | 0     | 0           |
| 0     | 0     | 0     | 0     | 0     | 1     | 1            | 001           | 0           | 0     | 1           |
| 0     | 0     | 0     | 0     | 1     | 0     | 1            | 001           | 0           | 0     | 1           |
| 0     | 0     | 0     | 0     | 1     | 1     | 2            | 010           | 0           | 1     | 0           |
| 0     | 0     | 0     | 1     | 0     | 0     | 1            | 001           | 0           | 0     | 1           |
| 0     | 0     | 0     | 1     | 0     | 1     | 2            | 010           | 0           | 1     | 0           |
| 0     | 0     | 0     | 1     | 1     | 0     | 2            | 010           | 0           | 1     | 0           |
| 0     | 0     | 0     | 1     | 1     | 1     | 3            | 011           | 0           | 1     | 1           |
| 0     | 0     | 1     | 0     | 0     | 0     | 1            | 001           | 0           | 0     | 1           |
| 0     | 0     | 1     | 0     | 0     | 1     | 2            | 010           | 0           | 1     | 0           |
| 0     | 0     | 1     | 0     | 1     | 0     | 2            | 010           | 0           | 1     | 0           |
| 0     | 0     | 1     | 0     | 1     | 1     | 3            | 011           | 0           | 1     | 1           |
| 0     | 0     | 1     | 1     | 0     | 0     | 2            | 010           | 0           | 1     | 0           |
| 0     | 0     | 1     | 1     | 0     | 1     | 3            | 011           | 0           | 1     | 1           |
| 0     | 0     | 1     | 1     | 1     | 0     | 3            | 011           | 0           | 1     | 1           |
| 0     | 0     | 1     | 1     | 1     | 1     | 4            | 100           | 1           | 0     | 0           |
| 0     | 1     | 0     | 0     | 0     | 0     | 1            | 001           | 0           | 0     | 1           |
| 0     | 1     | 0     | 0     | 0     | 1     | 2            | 010           | 0           | 1     | 0           |
| 0     | 1     | 0     | 0     | 1     | 0     | 2            | 010           | 0           | 1     | 0           |
| 0     | 1     | 0     | 0     | 1     | 1     | 3            | 011           | 0           | 1     | 1           |
| 0     | 1     | 0     | 1     | 0     | 0     | 2            | 010           | 0           | 1     | 0           |
| 0     | 1     | 0     | 1     | 0     | 1     | 3            | 011           | 0           | 1     | 1           |
| 0     | 1     | 0     | 1     | 1     | 0     | 3            | 011           | 0           | 1     | 1           |
| 0     | 1     | 0     | 1     | 1     | 1     | 4            | 100           | 1           | 0     | 0           |
| 0     | 1     | 1     | 0     | 0     | 0     | 2            | 010           | 0           | 1     | 0           |
| 0     | 1     | 1     | 0     | 0     | 1     | 3            | 011           | 0           | 1     | 1           |
| 0     | 1     | 1     | 0     | 1     | 0     | 3            | 011           | 0           | 1     | 1           |
| 0     | 1     | 1     | 0     | 1     | 1     | 4            | 100           | 1           | 0     | 0           |
| 0     | 1     | 1     | 1     | 0     | 0     | 3            | 011           | 0           | 1     | 1           |
| 0     | 1     | 1     | 1     | 0     | 1     | 4            | 100           | 1           | 0     | 0           |
| 0     | 1     | 1     | 1     | 1     | 0     | 4            | 100           | 1           | 0     | 0           |
| 0     | 1     | 1     | 1     | 1     | 1     | 5            | 101           | 1           | 0     | 1           |
| 1     | 0     | 0     | 0     | 0     | 0     | 1            | 001           | 0           | 0     | 1           |
| 1     | 0     | 0     | 0     | 0     | 1     | 2            | 010           | 0           | 1     | 0           |
| 1     | 0     | 0     | 0     | 1     | 0     | 2            | 010           | 0           | 1     | 0           |
| 1     | 0     | 0     | 0     | 1     | 1     | 3            | 011           | 0           | 1     | 1           |
| 1     | 0     | 0     | 1     | 0     | 0     | 2            | 010           | 0           | 1     | 0           |
| 1     | 0     | 0     | 1     | 0     | 1     | 3            | 011           | 0           | 1     | 1           |
| 1     | 0     | 0     | 1     | 1     | 0     | 3            | 011           | 0           | 1     | 1           |
| 1     | 0     | 0     | 1     | 1     | 1     | 4            | 100           | 1           | 0     | 0           |
| 1     | 0     | 1     | 0     | 0     | 0     | 2            | 010           | 0           | 1     | 0           |
| 1     | 0     | 1     | 0     | 0     | 1     | 3            | 011           | 0           | 1     | 1           |
| 1     | 0     | 1     | 0     | 1     | 0     | 3            | 011           | 0           | 1     | 1           |
| 1     | 0     | 1     | 0     | 1     | 1     | 4            | 100           | 1           | 0     | 0           |
| 1     | 0     | 1     | 1     | 0     | 0     | 3            | 011           | 0           | 1     | 1           |
| 1     | 0     | 1     | 1     | 0     | 1     | 4            | 100           | 1           | 0     | 0           |
| 1     | 0     | 1     | 1     | 1     | 0     | 4            | 100           | 1           | 0     | 0           |
| 1     | 0     | 1     | 1     | 1     | 1     | 5            | 101           | 1           | 0     | 1           |
| 1     | 1     | 0     | 0     | 0     | 0     | 2            | 010           | 0           | 1     | 0           |
| 1     | 1     | 0     | 0     | 0     | 1     | 3            | 011           | 0           | 1     | 1           |
| 1     | 1     | 0     | 0     | 1     | 0     | 3            | 011           | 0           | 1     | 1           |
| 1     | 1     | 0     | 0     | 1     | 1     | 4            | 100           | 1           | 0     | 0           |
| 1     | 1     | 0     | 1     | 0     | 0     | 3            | 011           | 0           | 1     | 1           |
| 1     | 1     | 0     | 1     | 0     | 1     | 4            | 100           | 1           | 0     | 0           |
| 1     | 1     | 0     | 1     | 1     | 0     | 4            | 100           | 1           | 0     | 0           |
| 1     | 1     | 0     | 1     | 1     | 1     | 5            | 101           | 1           | 0     | 1           |
| 1     | 1     | 1     | 0     | 0     | 0     | 3            | 011           | 0           | 1     | 1           |
| 1     | 1     | 1     | 0     | 0     | 1     | 4            | 100           | 1           | 0     | 0           |
| 1     | 1     | 1     | 0     | 1     | 0     | 4            | 100           | 1           | 0     | 0           |
| 1     | 1     | 1     | 0     | 1     | 1     | 5            | 101           | 1           | 0     | 1           |
| 1     | 1     | 1     | 1     | 0     | 0     | 4            | 100           | 1           | 0     | 0           |
| 1     | 1     | 1     | 1     | 0     | 1     | 5            | 101           | 1           | 0     | 1           |
| 1     | 1     | 1     | 1     | 1     | 0     | 5            | 101           | 1           | 0     | 1           |
| 1     | 1     | 1     | 1     | 1     | 1     | 6            | 110           | 1           | 1     | 0           |

#### LUT configuration vectors: 
- L0 (LSB):6996966996696996
- L1 : 8117177E177E7EE8
- L2 (MSB): FEE8E880E8808000