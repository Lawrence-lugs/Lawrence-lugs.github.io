---
title: "Study Guide | EEE 105 Module 7"
layout: material
categories:
- coursematerial
group: "EEE 105 1s2223"
---

# {{page.title}}

### UP EEEi | Lawrence Quizon

<hr><br>

# Module Intro 

We will end the course with by discussing the last part: I/O devices. I/O is used to connect your computer with external devices called "peripherals", like your mouse and keyboard. To communicate with these, we usually treat them as memory to be read. Furthermore, we use communication protols like USB, SATA, PCI (not discussed), UART and SPI to communicate mroe generally with these peripherals.

<hr><br>

## Topic 1: I/O

To connect the concept of I/O with our existing processors, we need to discuss how memory-mapped I/O works and how the CPU is able to interact with I/O devices.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/9WdlNyQ2G-A" title="EEE 105 1s2223 | Module 7 - I/O | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study Questions**
1. What is the advantage of DMA over interrupt-based I/O?
2. Using the knowledge we have from the lecture, how do we make the engineering choice between DMA, interrupts and polling?

<hr><br>

## Topic 2: 

Now that we've seen how the processor can see the I/O devices, let's see how the I/O devices see the processor. Everything is just a voltage on a wire- especially so if you have peripheral devices that are completely separate from your computer. In order to communicate properly, we have to set protocols on how the wires will be used. Let's try to build how we will do this step-by-step. 

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/4OU_IoBXBE8" title="EEE 105 1s2223 | Module 7 - Communication Interfaces | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr><br>

**Study Questions**
1. Is there a limit to how many devices you can interface using UART? SPI?
2. Name two reasons why the USB protocol would use two wires in a differential voltage to encode zeroes or ones.
3. Do research on how your devices communicate with their peripherals (on-chip and off-chip). How does it do it?

The Intel 8259 has for a long time (~1990s) been replaced by the APIC (advanced programmable interrupt controller), which was then replaced by the APICv in 2012. Nowadays, interrupt controllers like these are mainly for distributing workloads to multiple processors, and handling interrupts (e.g. choosing which core to use for the interrupt) are of second nature.

<hr><br>

## Quiz

Problem set 3 is out! Good luck everyone.