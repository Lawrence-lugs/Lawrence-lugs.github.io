---
title: "Study Guide | EEE 105 Module 1"
layout: material
categories:
- coursematerial
group: "EEE 105 1s2223"
---

# {{page.title}}

### UP EEEi | Lawrence Quizon

<hr><br>

# Module Intro 

In this module, you will learn the basics about what a computer is, what computer instructions are, MIPS, and details of MIPS instructions.

This 2-week module is divided into 4 subtopics. Some topics have quizzes- so make sure to do them.

<hr><br>

## Topic 1: Computers ([handout](https://lawrence-lugs.github.io/EEE1051s2223/computers.html))

A **computer** is a machine that has inputs and outputs. It accepts input information, such as a mouse stroke, processes this information, and produces some resulting output information.

Of computers, digital computers are the most common and widespread kind. This course will be concerned mostly on the organization and workings of digital von-neumann architecture computers.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/cbFV3Ma0QVo" title="Computers | Module 1 | EEE 105 1s2223" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study questions:**
1. What do you think qualifies as a computer?
2. Try to describe what happens when you press the keys on your keyboard.
3. What happens when your computer doesn't have an OS?
4. What is the BIOS?
5. Where does the GPU come into play?

<hr><br>

## Topic 2: Instructions 

**Instructions** are how we tell digital computers what to do. 

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/nOpuYUXChFs" title="Instructions | Module 1 | EEE 105 1s2223" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study Questions**
1. How do you think instructions are stored in memory?
2. What design choices would go into designing a computer?
3. Does a computer architecture and its instructions need to be co-designed?

<hr><br>

## Topic 3: MIPS Instructions I ([handout](https://lawrence-lugs.github.io/EEE1051s2223/MIPSInstructions.html))

**MIPS** is a simple and popular computer architecture. It is a **reduced instruction set computer (RISC)**, meaning it has fewer and simpler instructions.

Instructions are fed to digital computers in **binary form**. To be human readable, this **binary form** can be translated one-to-one into a language called **assembly**; which may differ per computer architecture.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/J8h3Pnn0CK0" title="MIPS Instructions I | Module 1 | EEE 105 1s2223" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

For a list of all MIPS instructions, refer to [this document](https://www.dsi.unive.it/~gasparetto/materials/MIPS_Instruction_Set.pdf).


**Study Questions**
1. When you declare ```int a = 1```, how does that translate to an address in physical memory?
2. How many types of instruction encoding are there for MIPS?
3. How long are the instructions for an x86 computer? for an x86_64 computer? Apple M1?

**Important Notes**
When referencing memory:
* BEQ and BNE use address offset relative to the NEXT instruction > e.g. if address = -3, they go to the code 2 lines before the branch.
    ```
    it goes to me
    addi $2,$3,0x0004
    beq $2,$3,-3
    ```
* J uses absolute addresses (/4).
    ```
    0x00400000 : it goes to me
    0x00400004 : opcode = 2, address = 0x100001
    ```
<hr><br>

## Topic 4: MIPS Instructions II

The registers in MIPS have "suggested" usages. For example, $1 ($at) is used by **pseudoinstructions**, which you can think of as compound instructions- more than one but written with one line.

The other names for the register purposes are related to **procedures**, which will be discussed in the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/83N1AhAAWC4" title="MIPS Instructions II | Module 1 | EEE 105 1s2223" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study Questions**
1. Are the frame pointer and stack pointer automatically updated when you call a procedure?
2. List down the things you need to do when you call a procedure.

<hr><br>

## Outcomes

At this point you should:
1. Know how digital computers are organized
2. Be able to explain how a keypress is translated to a change in the computer output.
3. Be able to translate high-level code into MIPS assembly equivalents.

<hr><br>

## Quiz

Check the UVLE for the Module 1 Quiz.