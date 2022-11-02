---
title: "Study Guide | EEE 105 Module 5"
layout: material
categories:
- coursematerial
group: "EEE 105 1s2223"
---

# {{page.title}}

### UP EEEi | Lawrence Quizon

<hr><br>

# Module Intro 

In this module, we will improve the single-cycle processor by allowing it to work with multiple cycles. Multiple cycles allow us to make simpler instructions faster. Additionally, when we work with multiple cycles, being able to use the same parts of the circuit at different cycles of the same instruction allows us to be reuse many hardware parts, allowing us to be very efficient with our components.  

<hr><br>

## Topic 1: Multi Cycle Datapath Part 1 - R-type Arithmetic, Memory Instructions

We start by discussing the motivation for multi-cycle processors, then implementing it for R-type arithmetic and memory instructions.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/Ctx59Xrp0sU" title="EEE 105 1s2223 | Module 5 - MIPS Multi Cycle Datapath Part 1 | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study Questions**
1. Do we need to add anything to the datapath to take into account immediate addressing R-type instructions?
2. Why did we add the MDR to the datapath? 

<hr><br>

## Topic 2: Multi Cycle Datapath Part 2 - Branches, Exceptions, Interrupts

Let's further discuss how we'll implement the logic for the controller state, and then do some minor modifications to the datapath in order to account for the branch instructions.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/ulFSYsvTBaA" title="EEE 105 1s2223 | Module 5 - MIPS Multi Cycle Datapath Part 2 | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr><br>

**Study Questions**
1. How would we implement blt? bgt?
2. What do you think the ISR for a keyboard press does?

## Quiz

There is no quiz for this module, but problem set 2 is now on UVLe and is due by the start of December.