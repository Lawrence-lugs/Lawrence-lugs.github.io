---
title: "Computers | EEE 105 Module 1"
layout: material
categories:
- coursematerial
group: "EEE 105 1s2223"
---

# {{page.title}}

### UP EEEi | Lawrence Quizon

A **computer** is a machine that has inputs and outputs. It accepts input information, such as a mouse stroke, processes this information, and produces some resulting output information.

![](\images\2022-08-30-16-37-44.png){: style="width:70%;margin:auto;display:block"}

### Computer Blocks

We can break down a computer into basic internal blocks as follows:

![](\images\2022-08-30-16-37-55.png){: style="width:70%;margin:auto;display:block"}

The **input** is some module that takes in some physical data, like mouse movement, keypress, or temperature and transforms it into computer-readable digital data. The **output** takes in some digital data and transforms it into something that humans can interpret and appreciate, like pixels on a monitor, or a 7-segment display. 

![](\images\2022-08-30-16-39-07.png){: style="width:70%;margin:auto;display:block"}

The **CPU/processor** transforms digital input data to digital output data.
The **arithmetic and logic unit (ALU)** contains functional units for performing operations on digital data, usually arithmetic operations (+,-,*,/).
The control unit controls the processor. It reads instructions and tells the ALU what to do in order to transform input data into the desired output data.

**Memory** stores digital data through time and space.
It can also store instructions, which are commands that govern the transfer and processing of information within the computer.

There are two classes of memory:
1. Primary Storage
    Quick to read and write, usually small ~4-16GB. **This is your RAM.**
2. Secondary Storage
    Relatively slow reads and writes, usually large ~128GB - 1TB. **This is your disk (SSD/Flash/Hard).**

> Note that the above are simplified definitions, since computers exist that do not have to use digital data, or need specifically the above blocks such as quantum computers and analog computers.

Memory, for our purposes, can be thought of as a big table. 

| Address | Data                      |
| ------- | ------------------------- |
| 1       | 0111 - 1100 - 0000 - 0100 |
| 2       | 0000 - 1110 - 0000 - 0111 |
| 3       | 0000 - 0101 - 0000 - 0110 |
| 4       | 0000 - 0100 - 0001 - 0001 |
| …       | …                         |
| 1023    | 0001 - 0000 - 0011 - 0000 |
| 1024    | 0000 - 0010 - 0000 - 0000 |

Data is accessed by providing the memory an address, and the corresponding data comes out.

### How a computer works

We take a simplified example: how does mouse movement end up as cursor movement? 

In the figure below:
1. A mouse encodes its x,y position and its velocity in a digital format and writes it into memory.
2. CPU reads the instruction telling it to process the mouse data, takes the mouse data from memory, and calculates the new corresponding pixel values.
3. CPU writes the processed pixel values into memory.
4. The monitor reads the pixel values in memory 60 times per second (for a 60FPS monitor). 

![](\images\2022-08-30-16-43-06.png){: style="width:70%;margin:auto;display:block"}

### Memory and Processor

Now let's take a deeper look into what happens between the memory and the processor.

1. The processor first reads the instruction on address 8. It follows it, storing the value 1024 into internal register R1.
2. The processor reads the instruction on address 9. Value 123 goes into R3.
3. The processor reads instruction on address 10, and adds R1 and R2, places the result in R3.
4. The processor reads the instruction on 11, storing the value in R3 into address 668.

> How does the processor know which instruction to read? A: Instructions are read in sequence. The current address is stored in the PC, and is incremented by one address everytime an instruction is run.

![](\images\2022-08-30-17-03-36.png){: style="width:70%;margin:auto;display:block"}

### C to Machine Language

The very first programmers used to write things in pure binary language. Binary values corresponded to specific things that the instructor needed to do:

``` 
0001 0001 0010 0011
ADD  R1   R2   R3    (human language equivalent)
```

Eventually, it became possible to write directly in the human language equivalent- now known as **assembly code**. The translator from assembly to binary machine code is called the **assembler**.

```
LOAD R1,Mem[666]
LOAD R2,Mem[667]
ADD R3,R1,R2
STORE Mem[668],R3
```

This is still hard to write in, so people made **higher-level languages** like C and C++. Human logic translates better to these higher-level languages than it does to assembly. The translator from higher-level languages to assembly is called the **compiler**.

```
int a;
a = 1024
int b;
b = 123
c = a + b;
# no need to think about the memory locations anymore 
```

### Bus Structures

To facilitate communication between all the components, bus structures are sometimes used.

For example, a single bus structure can take input from one block and pass its output to another block. However, only one input and one output can be active with a single bus.

![](\images\2022-08-30-17-17-33.png){: style="width:70%;margin:auto;display:block"}

### Quiz

Follow the link below to the UVLE