---
title: "The Ultimate MOSAIC Bootcamp 2022 Documentation"
layout: post
date: '2022-08-24 10:00:00 +0200'
categories:
- learningnotes

---
The <b>Modular Open Source Analog IC Design</b> (MOSAIC) bootcamp had a goal to connect all independent parties working on automated analog design frameworks and workflows to "touch base"- to share the ideas and developments that had previously been fragmented and largely independent.

Speakers, contributors, and participants travelled to Linz, Austria from all over the world- Germany, US, Philippines, South Korea, Chile, Netherlands including of course people from other cities in Austria.

<div style="display:grid; grid-template-columns: 29% 71%; grid-template-rows: 40vh;row-gap:10vh;height:40vh">    
<span style="grid-area:1/1">

Seven student participants came on the invitation of Dr. Mirjana Videnovic-Misic to participate in the bootcamp. We were introduced to programmatic analog IC design and layout in the hopes of spreading the use of the paradigm in other organizations.

</span>
<span style="grid-area:1/2">
<img src="\images\2022-08-26-13-49-25.png" style="height:100%;margin-left:auto;margin-right:auto;display:block">
</span>
</div>
<br>

Student Participants:

* Hanyang University - NiftyLab Team
   * Taeho Shin (신태호)
   * Seonghyun Park (박성현)
   * Youngmin Oh (오영민)
* University of the Philippines - Microlab Team
   * Ryan Antonio
   * Lawrence Quizon
* Unibersidad Federico Santa Maria - IC3E Team
   * Aquiles Viza
   * Kevin Pizarro

Offline Participants:

* Silicon Austria Labs
  * Mirjana Videnovic-Misic
  * Martin Koehler
  * Fatemeh Abbassi
  * Khuram Shehzad
* Infineon FAT
  * Christoph Sandner
  * Thomas Brandtner
  * Florian Renneke
  * Matthias Koefferlein
  * Federico Passerini
* Thomas Parry (OS Community)
* Curtis Mayberry (Skyworks)
* Stephan Gether (CISC)
* Benjamin Prausch (Fraunhofer)
* Carinthia University of Applied Sciences
  * Vinayak Hande
  * Osheen Mechail

## Talks

<div style="text-align:center">
<h1> <a href="https://www.youtube.com/playlist?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS"><img src="\images\2022-08-25-10-21-29.png" style="width:25%;height:25%"></a>
</h1>
</div>
<br><br>
<div style="display:grid; grid-template-columns: 50% 50%; grid-template-rows: 15vh 15vh 15vh 15vh 15vh 15vh 15vh 15vh 15vh 15vh 15vh 15vh;column-gap:1vh;row-gap:13vh">
    <div class="wrapper" style="grid-area:1/2;align-self:center">
    <iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/IzJbVG-FHJc" title="Anagen Motivation | Christoph Sandner | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="wrapper" style="grid-area:1/1;align-self:center">
    The bootcamp kicked off with a talk from <b>Christoph Sandner discussing Infineon's motivation for automated analog generation </b>, which they called formerly called Anagen.
    </div>
    <div class="wrapper" style="grid-area:2/2;align-self:center">
    <iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/gqVwUhRU2OQ?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS" title="Democratizing IC Design | Boris Murmann | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="wrapper" style="grid-area:2/1;align-self:center">
    <b>Boris Murmann from Stanford University talked about the advent of open-source IC design </b>, the initiatives being performed for it, its benefits, with the open-sourcing of Skywater's 130nm PDK and soon its 90nm PDK.
    </div>
    <div class="wrapper" style="grid-area:3/1;align-self:center">
    <b>Florian Renneke introduced Infineon's</b> new software framework called the "MOSAIC Orchestra (MOSAIC Framework)" designed to act as a connector to merge the design flows of different analog generation frameworks.
    </div>
    <div class="wrapper" style="grid-area:3/2;align-self:center"><iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/tcUeRRgeEG4?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS" title="Open Source MOSAIC Framework Workshop | Florian Renneke | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="wrapper" style="grid-area:4/1;align-self:center">
    <b>Taeho Shin, Youngmin Oh, and Seonghyun Park</b> discussed LAYGO2's internal workings, from the grid definitions, templates, and PDK abstractions.
    </div>
    <div class="wrapper" style="grid-area:4/2;align-self:center"><iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/RI0rDiXslOE?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS" title="LAYout with Gridded Objects (LAYGO2) | Taeho Shin, Youngmin Oh, Seonghyun Park | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="wrapper" style="grid-area:5/1;align-self:center">
    <b>Jean-Paul Chaput</b> from LIP6 talked about CORIOLIS: a set of tools (including automatic place & route) for programmatic VLSI design with support for digital, analog and mixed-signal designs. 
    </div>
    <div class="wrapper" style="grid-area:5/2;align-self:center"><iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/WoS4USiYLuc?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS" title="CORIOLIS | Jean-Paul Chaput | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="wrapper" style="grid-area:6/1;align-self:center">
    <b>Martin Jan Köhler</b> from Silicon Austria Labs held a workshop on using BAG2 (Berkeley Analog Generator 2) with his new software abstractions to automate some of the workflow. (Multiple Videos)
    </div>
    <div class="wrapper" style="grid-area:6/2;align-self:center"><iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/57lnhDF0c0k?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS" title="BAG2 Part 1 - Virtuoso Template Sample Flow | Martin Jan Köhler | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="wrapper" style="grid-area:7/1;align-self:center">
    <b>Zhaokai Liu</b> from UC Berkeley's Wireless Research Center shared his experiences and methods with using BAG2 and the newer BAG3 with his PHD research and tapeouts.
    </div>
    <div class="wrapper" style="grid-area:7/2;align-self:center"><iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/r13YkVNSFik?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS" title="" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="wrapper" style="grid-area:8/1;align-self:center">
    <b>Santerri Porrasma</b> from Aalto University also shared his experiences with using BAG for his own PHD work, including an introduction to TheSyDeKick (The System Development Kit), a framework made for SoC development.
    </div>
    <div class="wrapper" style="grid-area:8/2;align-self:center"><iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/GnoHu1doMP4?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS" title="PhD work with BAG: Thoughts and experiences | Santeri Porrasma | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="wrapper" style="grid-area:9/1;align-self:center">
    <b>Mehdi Saligane</b> discussed Michigan Integrated Circuits Laboratory's OpenFASoC that performs design automation by generating analog layouts from specifications with other design flows such as to make it compatible with the Verilog design flow with digital P&R and logic synthesis.
    </div>
    <div class="wrapper" style="grid-area:9/2;align-self:center"><iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/wXegh9I5UO8?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS" title="OpenFASoC update | Mehdi Saligane | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="wrapper" style="grid-area:10/1;align-self:center">
    <b>Curtis Mayberry introduced Cascode Labs'</b> Virtue and Softworks. Virtue marries Python and Cadence SKILL code, allowing two-way access of each to the other. Softworks allows Cadence to have new cellview types allowing full design workflows that use Python to be performed entirely inside Cadence. 
    </div>
    <div class="wrapper" style="grid-area:10/2;align-self:center"><iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/5GJbBLpHo6s?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS" title="Virtue & Softworks | Curtis Mayberry, Cascode Labs | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="wrapper" style="grid-area:11/1;align-self:center">
    <b>Harald Pretl</b> from Johannes Kepler University talked about his recent paper Fifty Nifty Two-Transistor Circuit Variations, showing how powerful and useful circuits with two transistors can be. The bootcamp's student participants created generators these two-transistor circuits because of their usefulness and reusability.
    </div>
    <div class="wrapper" style="grid-area:11/2;align-self:center"><iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/jL7MVr5wY5w?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS" title="Fifty Nifty Variations of Two-Transistor Circuit | Harald Pretl | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div class="wrapper" style="grid-area:12/1;align-self:center">
    <b>Mathias Koefferlein</b> held a workshop on using KLayout: a popular tool he developed that started as a GDS viewer but has since gotten powerful editing and scripting features, support for reading and writing many layout filetypes, and its own programming environment. 
    </div>
    <div class="wrapper" style="grid-area:12/2;align-self:center"><iframe style="width:100%;height:181px" src="https://www.youtube.com/embed/5t78kJ991js?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS" title="Producing Layout with KLayout session 1 | Matthias Koefferlein | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
</div>
<br>
<br>
<br>

## Things we made

### 1. [LAYGO2 inside the MOSAIC Orchestrator](https://gitlab.com/mosaic_group/mosaic_framework/mosaic-laygo2/-/tree/sdf_integration)

#### Aquiles, Ryan, Kevin, Lawrence

In the first week, the students worked on familiarizing themselves with Infineon's MOSAIC Orchestrator by integrating the first fully open-source design flow into it: LAYGO2 + MAGIC VLSI. 

Through the use of the Orchestrator's task-based cache-enabled designs, the LAYGO2 design flow was made to be faster and more automated. Generator code was made more specific, with less overhead to the designer by lifting common calls to templates and grids and design initializations to a superclass.

By lifting all PDK-related template calls to the Orchestrator's PDK abstraction, the generator code no longer requires particular knowledge of the PDK to create- also possibly enabling generator codes.

MAGIC was also integrated into the Orchestrator as a registered tool, allowing it to transform LAYGO2 designs into mag files handled hierarchically for every task with caching.

### 2. [FiftyNifty Generators using LAYGO2 and virtuoso_template](https://github.com/Lawrence-lugs/MOSAIC-bootcamp-2022-student-generators)

#### Student Participants

After that, the students went on creating LAYGO2+SKY130 generators for the basic two-transistor circuits from the FiftyNifty, and some other basic circuits. See repository here.

**LAYGO2**

1. (Nifty 7) Current Mirror (Kevin)
2. (Nifty 1) Inverter (Lawrence)
3. (Nifty 8) Differential Pair (Ryan)
4. (Nifty 14) Transmission Gate (Lawrence)
5. **NOT NIFTY** 2to1MUX (Lawrence)
6. Seonghyun's 19/50 Nifty Generators (Seonghyun)
   * (Nifty 1) Inverter
   * (Nifty 3) Tie-Zero
   * (Nifty 5) NAND
   * (Nifty 6) NOR
   * (Nifty 7) Current Mirror
   * (Nifty 8) Differential Pair
   * (Nifty 9) Source Follower
   * (Nifty 10) CS Amp
   * (Nifty 11) CS Cascode Amp
   * (Nifty 12) Cascode CG Amp
   * (Nifty 13) CG Amp
   * (Nifty 14) TGate
   * (Nifty 15) 2to1MUX
   * (Nifty 17) CS Amp with Diode Load
   * (Nifty 18) Folded CS Amp with Diode Load
   * (Nifty 19) ClassB PushPull Follower
   * (Nifty 20) Degenerated CS Amp
   * (Nifty 21) Variable Degeneration CS Amp
   * (Nifty 24) PN Bias Voltage Generator

**AnalogBase**

1. (Nifty 1) Inverter, NAND Gate (Taeho)
2. NOR Gate (Seonghyun)
3. Tri-state Inverter, NAND Gate (Youngmin)
4. (Nifty 24, 25) PN, Stable Voltage References (Lawrence)
5. NAND Gate, (Nifty 7, 1) Diff Pair, Inverters (Ryan)
6. (Nifty 7) Sophisticated Current Mirrors (Kevin)

### 3. KLayout and LAYGO2 

#### Ryan, Kevin

By using the LAYGO2 package and framework inside KLayout's scripting environment, students managed to enable KLayout to show previews of LAYGO2 designs and allow it to export to GDS, which may eventually allow a complete LAYGO2 workflow to be automated (say, with the Orchestrator, XSchem and netgen) inside KLayout.

### 4. The open-source BAG2 Template (Temp Name)

#### Matthias Koefferlein, Thomas Parry

By replacing virtuoso-template's existing skill.py, which handles communication with Virtuoso, with a new handler, opensource.py, they were able to port BAG2's SKILL requests workflow to KLayout and XSchem instead.

```
gen make inverter_gen
```

This creates a GDS for KLayout, and a schematic file for XSchem

This enables the use of BAG2 with open-source tools paving the way for open-source IC development with analog generators.

![](\images\2022-08-25-14-58-47.png)

![](\images\2022-08-25-15-01-13.png)

## Section for testimonies

* Boosting the ease of use of these documentation-lacking frameworks.
* Inspired people.
* For CIDR
* Cooperation outside the bubble for IC3E
* Discovering that people want to learn about LAYGO2
* Different POVs from people with different backgrounds (Digital, Software, Analog only, Layout generation people.)
* Kinda like a proto-conference on layout generation, for which everyone has different amounts of progress and different approaches and different software. It's a way to remap in the heads of everyone who wants to work on these things.
* The mosaic orchestrator
  * Troubles with definition of PDK views
  * Need both approaches to work in the same kind of environment, instead of mosaic-laygo2-magic and mosaic-analogbase-virtuoso