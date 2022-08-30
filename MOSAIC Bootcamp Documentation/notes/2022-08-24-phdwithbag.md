---
title: "PHD with BAG: Thoughts and experiences, Santerri Porrasmaa"
layout: post
date: '2022-08-24 10:00:00 +0200'
categories:
- learningnotes
---

Notes from the MOSAIC bootcamp talk by Santeri Porrasmaa. Discusses the pros and cons of using BAG as a layout generation tool, but it is opinionized.

### A good generator

* Exploits the framework to achieve good analog layout
  * Symmetry
  * Matching
  * Reliability
* Exploits the underlying technology fully
* Reusable

### To write good layouts

* Need to understand what a good analog layout is, and good knowledge of the framework that you're using.
* You also need a working technology definition.
* A fixed topology - *topology iteration is time consuming and difficult. Hand-draw first before writing the generator in order to figure out the best topology.*

### Layout Generator Frameworks
* It takes a long time to master the use of layout generators
* Working examples are great- use the working templates to start, and then adjust the grids there to see what happens. Read the documentation- it's not perfect but it shows you what you can use.
* Reusing PCells - you need to create pins in order to use them with BAG.

### Squeezing the extra 5%: Symmetry and matching
* Symmetry is relatively easy to achieve, since gridding makes making equally distributed wires very easy.
* Regular structures are inherently supported by AnalogBase. However, matching sometimes needs some more work to solve.
* **Example: Interdigitated gates for current mirror.**

![](\images\2022-08-24-10-22-44.png)

### Reliability

* Current draw vs wire width is handled automatically by the technology definition, but that has to be in the technology definition.
* Via problems, needed to code an extra function (connect_helper) to increase the number of via connections.

   This is something that LAYGO2 cannot do (maybe with exploits?) (because of forced directions in metal layers).

![](\images\2022-08-24-10-28-40.png)

* Where do you define the helper functions? - *It's part of the generator at the moment, but it can be transferred.*


### Abutment Problem

Substrates cannot overlap in separate instances because the taps will overlap.

![](\images\2022-08-24-10-37-56.png)

### TheSyDeKick

Verification framework that was developed.

![](\images\2022-08-24-10-45-41.png)

* Simulation testbenches, simulator calls
* parasitic extraction, netlisting, LVS
* postprocessing

## Examples

### ADC Input Buffer

Vendor PCells are pinned and routed on a higher level using BAG.

![](\images\2022-08-24-10-53-06.png)

Empty area away from target space is decoupling capacitor.

### Low voltage cascode current source

Generating different layouts for different channel lengths and getting the final output impedance, and sweeping with sydekick.

![](\images\2022-08-24-11-02-55.png)

![](\images\2022-08-24-11-03-19.png)

### Pseudodifferential Voltage to Time converter

![](\images\2022-08-24-11-04-34.png)























