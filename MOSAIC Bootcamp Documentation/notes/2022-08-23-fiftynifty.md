---
title: The Fifty Nifty Two-Transistor Circuit Variations
layout: post
date: '2022-08-23 11:20:52 +0200'
categories:
- learningnotes
---

Notes from MOSAIC Bootcamp talk by Harald Pretl. A celebration of the ingenuity and the creativity of engineers and the versatility of the MOSFET.

|![](\images\2022-08-23-10-13-05.png)|
|:-:|
|*Mosfets can be any of the above circuit elements*|

## Some of the 50 circuits

The most well-known:
1. Inverter
   1. Transconductance stage/voltage amplifier when biased in the middle.
2. Current Mirror
3. Differential Pair
4. Transmission Gate

5. NAND PDN
   1. Cascode CS Stage
   2. Degenerate CS amplifier with Transistor Load
   3. Dual Gate MOSFET mixer
      1. The top transistor modulates the transconductance of the bottom transistor, thus doing a multiplication operation (frequency mixing)

   |![](\images\2022-08-23-10-21-01.png)|![](\images\2022-08-23-10-22-34.png)|![](\images\2022-08-23-10-22-40.png)|![](\images\2022-08-23-10-23-21.png)|
   |:-:|:-:|:-:|:-:|
   ||||

6. Bulk-driven current mirror - *Lowers the required voltage of current mirrors. Dangerous if bulk gets higher voltage than source for NMOS, otherwise for PMOS.*
7. Cross-coupled differential pair but with bulk connection - *biased in saturation*
8. DT-MOS Inverter - *improved current drive at low leakage, basically inverter with gate connected to bulk*
9. CTAT Voltage Generator - *uses M2 as a PN junction by connecting drain to bulk. M1 is just there to drive a current through the PN junction of M2*

   ![](\images\2022-08-23-10-28-35.png)

10. ESD-safe tie-zero - *used to tie unused logic to VDD or GND without direct connection, because MOSFET gates are not allowed to be tied to supply rails.*

      ![](\images\2022-08-23-10-30-13.png)


11. Flipped Voltage Follower - *cascode with M2 tied to upper bias, lowers the output impedance of source follower.*

    ![](\images\2022-08-23-10-33-23.png)

12. Regulated Cascode - *M2 is a CS amplifier, which feeds back to the gate of M1. Thus, the impedance of M1 is reduced by the gain of M2.*

     ![](\images\2022-08-23-10-34-37.png)

13. Floating Level Shift - $$V_p - V_n = V_{GS1}-V_{GS2}$$

    ![](\images\2022-08-23-10-36-27.png)   

14. pA current source - *Fills and flushes Si-SiO2 interface traps by putting M1 in accumulation and inversion repeatedly using a clock signal.*

     ![](\images\2022-08-23-10-37-59.png)

15. Stable AF Ultra Low Voltage Reference - *i simulated this one, it's great. Works with the leakage current of the M1 to bias M2 very very slightly forward. You need to load VRef with very low gate leakage, because this works with very low currents. Also, models for subthreshold slope are not accurate.*

     ![](\images\2022-08-23-10-42-35.png)

      $$V_{REF}=\frac{n_1n_2}{n_1+n_2}(V_{TH2}-V_{TH1})+\frac{n_1n_2}{n_1+n_2}V_Tln(\frac{\mu1C_{ox1}W_1L_2}{\mu2C_{ox2}W_2L_1})$$

16.  PNP $$I_C$$ control - *parasitic BJTs have very poor beta (M1). Since $$I_C=I_{BIAS1}-I_{BIAS2}$$, you can still bias the collector despite having no direct access to it.*

     ![](\images\2022-08-23-10-46-04.png)

17. Bult Current Divider - *two NMOS in an inverter setup divide the output current evenly.*

   The MOSFET comes with a built-in BJT. 

   In FDSOI, the buried oxide is very thin, so you have decent control from the backside of your operation.



