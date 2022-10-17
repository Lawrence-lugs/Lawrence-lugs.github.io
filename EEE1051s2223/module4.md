---
title: "Study Guide | EEE 105 Module 4"
layout: material
categories:
- coursematerial
group: "EEE 105 1s2223"
---

# {{page.title}}

### UP EEEi | Lawrence Quizon

<hr><br>

# Module Intro 

In this module, you will learn how to implement a single-cycle processor. For starters, remember how a finite state machine works. A processor is essentially a large finite state machine, whose state variables are its register file and the data memory together called the "architectural state". Its inputs are the instruction memory and the program counter. Whatever you put into the instruction memory is the input, and it influences how the state variables of the processor evolve.

<hr><br>

## Topic 1: Single Cycle Datapath Part 1 - R-type Instructions

We first start by learning how instructions are fetched from memory, and then we will study how we can build a datapath that supports R-type arithmetic instructions.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/TAL1jQCEAGY" title="EEE 105 1s2223 | Module 4 - MIPS Single Cycle Datapath Part 1 | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study Questions**
1. What do we need to add or change in the datapath to support AND and OR instructions?
2. To support the immediate addressing instructions ADDI and SUBI, what do we need to add to the datapath?

<hr><br>

## Topic 2: Single Cycle Datapath Part 2 - Complete Datapath: Loads and Branches

A processor that can only do ADD and SUB instructions isn't very useful. We need to support the memory and branch instructions to create a more useful processor. To do this, we need to add a few more things to the datapath.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/ZFXjTXpn9_k" title="EEE 105 1s2223 | Module 4 - MIPS Single Cycle Datapath Part 2 | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr><br>

**Study Questions**
1. If a MUX introduces 2ns of delay to the datapath and $$T_{SU}=1ns$$, what is now the maximum allowable clock frequency for this single-cycle processor?
2. If we were to merge the instruction memory and the data memory into one, what would we need to change? Can this processor still work in one cycle? 

## Quiz

In light of the upcoming reading break (Oct 24-28), there is no quiz for this module! Please await the problem set to be released during module 4.