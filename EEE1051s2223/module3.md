---
title: "Study Guide | EEE 105 Module 3"
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

<iframe width="726" height="409" src="https://www.youtube.com/embed/CGdwjdNN_Lg" title="EEE 105 | Module 2 - Basic Arithmetic | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr><br>

## Topic 2: Single Cycle Datapath Part 2 - Complete Datapath

As we know from math classes, multiplication is basically repeated addition. The basic treatment of multiplication does not change much in binary, but we do have ways of making it faster because binary is so easy to work with.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/AF9TH5evgVI" title="EEE 105 | Module 2 - Multiplication | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr><br>

## Quiz

Check the UVLE for the Module 2 Quiz. Additionally, problem set 1 has also already been uploaded.