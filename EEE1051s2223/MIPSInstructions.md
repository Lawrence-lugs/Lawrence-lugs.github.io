---
title: "MIPS Instructions | EEE 105 Module 1"
layout: material
categories:
- coursematerial
group: "EEE 105 1s2223"
---

# {{page.title}}

### UP EEEi | Lawrence Quizon

<hr><br>

**MIPS** is a computer architecture used by NEC, Nintendo, Silicon Graphics, Sony, etc.

> As you may observe, these are old.

MIPS is a **RISC**, meaning Reduced Instruction Set Computer. The instructions are few and simple, leading to longer code, but smaller and faster processors.

## Design Principles

1. Simplicity favors regularity
2. Smaller is faster

## MIPS Registers

MIPS has 32 32-bit registers.

![](\images\2022-08-31-11-29-13.png){: style="width:70%;margin:auto;display:block"}

Before you proceed, have a look at [this document](https://www.dsi.unive.it/~gasparetto/materials/MIPS_Instruction_Set.pdf) for a list of all MIPS instructions.

# Instruction Types: By Format

MIPS instructions length is 32 bits

### 1. R-type Instructions (Register Type)

|op|rs|rt|rd|shamt|funct|
|-|-|-|-|-|-|
|6 bits|5 bits|5 bits|5 bits|5 bits|6 bits|

* *op*: Opcode. Specifies the operation.
* *rs*: Register source operand 1.
* *rt*: Register source operand 2.
* *rd*: Register destination operand.
* *shamt*: Shift amount. **Only relevant for shift operations sll srl sla sra**
* *funct*: Selects a specific variant of the operation specified by the opcode.

### 2. I-Type Instruction (Immediate Type)

|op|rs|rt|address|
|-|-|-|-|-|-|
|6 bits|5 bits|5 bits|16 bits|

* *op*: Opcode. Specifies the operation.
* *rs*: Register 1. Function depends on the instruction.
* *rt*: Register 2. Function depends on the instruction.
* *address*: Address offset.

### 3. J-Type Instruction (Jump Type)

|op|address|
|-|-|-|-|-|-|
|6 bits|26 bits|

* *op*: Opcode. Specifies the operation.
* *address*: Address. Specifies a target word address.

## Instruction Types: By Function

### 1. Basic Arithmetic, operations to register

|Instruction|op|rs|rt|rd|shamt|func|
|-|-|-|-|-|-|
|add|0|src reg|src reg|dest reg|0|32|
|sub|0|src reg|src reg|dest reg|0|34|
|and|0|src reg|src reg|dest reg|0|36|
|or|0|src reg|src reg|dest reg|0|37|
|slt (if R1 < R2, R3 = 1)|0|src reg|src reg|dest reg|0|42|
|sll (shift left logical)|0|0|src reg|dest reg|shamt|0|
|srl (shift right logical)|0|0|src reg|dest reg|shamt|2|

Example:
`add $s1, $s2, $s3`

|op|rs|rt|rd|shamt|func|
|-|-|-|-|-|-|
|000000|10010|100111|10001|00000|100000|

### 2. Memory/Data Transfer

* *rs*: Base (address) register for load word and store word
* *rt*: Destination register for load word and store word

|Instruction|Operation|
|-|-|
|`lw $s1,100($s2)`|`$s1=Mem[$s2+100]`|
|`sw $s1,100($s2)`|`Mem[$s2+100]=$s1`|

> Memory is byte-addressable, so 100 bytes is the offset here, not 100 words.

Example:

In C:
```
g = h+A[i];
```
MIPS Assembly:
```
add $t1,$s4,$s4
add $t1,$t1,$t1
add $t1,$t1,$s3
lw $t0,0($t1)
add $s1,$s2,$t0
```

* $s4 is offset (A)
* $s3 is base
* $s2 is h
* $s1 is g

### 3. Program flow decisions "branch instructions" (things that write into PC)

BEQ jumps to label/address `L` if `Rs = Rt`

BNE jumps to label/address `L` if `Rs != Rt`

J jumps to label/address `L`

JR jumps to label/address specified in register `Rs`

**Branch if equal, branch if not equal**

|Instruction|Operation|
|-|-|
|**beq** $s1,$s2,L|if ($s1==$s2) go to L|
|**bne** $s1,$s2,L|if ($s1!=$s2) go to L|

**BEQ and BNE are I-type**

|op|rs|rt|address|
|4|src reg|src reg|(addr offset)/4|
|5|src reg|src reg|(addr offset)/4|

* *op*: Opcode. Specifies the operation.
* *rs*: Operand 1.
* *rt*: Operand 2.
* *address*: Address offset in 4-bit words.

**Jump instructions**

|Instruction|Operation|
|-|-|
|**j** 2500|PC=(2500)*4|
|**jr** $t1|PC=$t1|

**JR (Jump-to-register) is R-type**

|op|rs|rt|rd|shamt|func|
|-|-|-|-|-|-|
|0|src reg|0|0|0|8|


**J is J-type**

|op|address|
|-|-|-|-|-|-|
|0 = jr|addr offset/4 = (jump length in number of addresses)|

Example:

In C:
```
if(i==j) f=g+h;
else f=g-h;
```
MIPS Assembly:
```
    bne $s3,$s4,Else
    add $s0,$s1,$s2
    j Exit
Else: sub $s0,$s1,$s2
Exit:
```