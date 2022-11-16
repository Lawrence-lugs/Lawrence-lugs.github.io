---
title: "Study Guide | EEE 105 Module 6"
layout: material
categories:
- coursematerial
group: "EEE 105 1s2223"
---

# {{page.title}}

### UP EEEi | Lawrence Quizon

<hr><br>

# Module Intro 

In this module, we will discuss an overview of how memory is handled in the CPU. Slow memories are cheap, fast memories are expensive. This gives us a motivation for using many different memory types with varying capacity and speed to use in our computers.

<hr><br>

## Topic 1: Memory Basics

We show typical types of memory, the SRAM, the DRAM, and the HDD. We discuss why these memories very with price and speed.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/wLgCpz588HI" title="EEE 105 1s2223 | Module 6 - Memory | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study Questions**
1. Which organization (in slide 8) would result in a faster access time?
2. Is your answer to (1) an example of spatial or temporal locality?
3. Inspect your own device's information. How large is your RAM? What is your secondary memory? How much is your cache?

You can find information on your cache by searching up your processor on wikipedia.

<hr><br>

## Topic 2: Cache

Next, we'll discuss how we design caches. We do not access memory randomly- we access them with specific patterns. Caches are built by taking advantage of these usual memory access patterns. 

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/UsnxURtvtRQ" title="EEE 105 1s2223 | Module 6 - Cache | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr><br>

**Study Questions**
1. For the memory access patterns in slide 3, how many blocks would we need to optimally store all the needed accesses?
2. What could be the problem with FIFO replacement policy?

<hr><br>

## Topic 3: Virtual Memory

Creating the illusion of having infinite memory is ideal for programmers so that they do not have to worry about using (a realistic) amount of memory. This is implemented using virtual memory. We can think of this as a cache, but over secondary memory. However, how do we find the correct physical address when two processes can have the same virtual address? That's where it becomes different.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/qKGvSH5mCG0" title="EEE 105 1s2223 | Module 6 - Virtual Memory | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr><br>

**Study Questions**
1. How is it possible for two processes to try to access the same virtual address but get different data?
2. When I manually set the page size higher (do this at your own risk), my PC becomes extremely slow. What could have been the problem?
3. Can you get a TLB hit but a Page fault?

## Quiz

Only problem set 3 from here on.