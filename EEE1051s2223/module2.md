---
title: "Study Guide | EEE 105 Module 2"
layout: material
categories:
- coursematerial
group: "EEE 105 1s2223"
---

# {{page.title}}

### UP EEEi | Lawrence Quizon

<hr><br>

# Module Intro 

In this module, you will essentially learn how to implement an ALU. This module covers signed and unsigned integer addition, subtraction, multiplication, division, and floating-point operations. Typically, multiplication, division and floating-point operations are not supported by processors but are rather implemented as combinations of multiple smaller instructions or offloaded to specialized co-processors.

<hr><br>

## Topic 1: Basic Arithmetic

In order to do basic signed addition and subtraction, we must first introduce ways of representing signed numbers. A well-known and efficient way to do this is the 2's complement signed representation.

Watch the lecture below:

<iframe width="726" height="409" src="https://www.youtube.com/embed/CGdwjdNN_Lg" title="EEE 105 | Module 2 - Basic Arithmetic | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study questions:**
1. Why exactly is the 2's complement better than the 1's complement?
2. How do you calculate the presence of arithmetic overflow in combinational logic?
3. Which number in n-bit 2's complement would be its own negative?

<hr><br>

## Topic 2: Multiplication

As we know from math classes, multiplication is basically repeated addition. The basic treatment of multiplication does not change much in binary, but we do have ways of making it faster because binary is so easy to work with.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/AF9TH5evgVI" title="EEE 105 | Module 2 - Multiplication | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study Questions**
1. Given an m-bit and an n-bit operand, what is the largest integer they can multiply into? How many bits is it?
1. What operation is equivalent to multiplying something by 2? by 4? by 8? by 16?
2. What are the two worst case operands (in terms of number of additions) of a booth encoding multiplication?
   1. Hint: I personally call these the 5-type and 10-type numbers.

<hr><br>

## Topic 3: Fast Multiplication

We can make multiplication even faster by (1) Further encoding the booth encoding (2) Making the addition faster. The concept of gate delays is what we use to say that an operation is slow. By using carry-save adders, we can make add operations faster. 

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/7IF5d9XQHxE" title="EEE 105 | Module 2 - Fast Multiplication | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study Questions**
1. What is the logic we might use to produce the addition operands for carry-save multiplication?

<hr><br>

## Topic 4: Division

Division is repeated subtraction, but it looks a little more complicated. Both the restoring and non-restoring algorithms are basically long division where, to check for divisibility, we subtract the divisor from the dividend. If the result is negative, the divisor cannot fit in the dividend, and we use that to conclude a result for each small sub-division.  

Watch the lecture below:

<iframe width="726" height="409" src="https://www.youtube.com/embed/RorBI0l-I60" title="EEE 105 | Module 2 - Division | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study Questions**
1. What operation is equivalent to dividing something by 2? by 4? by 8? by 16?

<hr><br>

## Topic 5: Floating-point

Scientific numbers often aren't integers. For machine learning as well, we always use non-integer numbers. How do we perform operations with these in our computers? Introducing: The iEEE 754 standard! This introduces binary representations for so-called floating point numbers.

Watch the lecture below:

<iframe width="100%" height="500" src="https://www.youtube.com/embed/XYhBP0lRR3k" title="EEE 105 | Module 2 - Floating Point | Lawrence Quizon" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

**Study Questions**
1. Can you give a number that cannot be represented in 32-bit floating point but is not less than or greater than the biggest or smallest positive number?
2. What happens when your add/sub result is 0.00101 * 2^-125? How will it be represented in FP32?

<hr><br>

## Quiz

Check the UVLE for the Module 2 Quiz. Additionally, problem set 1 has also already been uploaded.