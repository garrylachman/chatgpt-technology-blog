--- 
title: "A Simple Python Program: Finding the Greatest Common Divisor"
date: 2022-07-15T09:00:00
draft: false
description: "Learn how to write a Python program to find the greatest common divisor (GCD) of two numbers."
categories:
- "Python Programming"
tags:
- "Python"
- "Algorithm"
- "Math"
type: "featured"
---

## Introduction

In this tutorial, we will learn how to write a Python program to find the greatest common divisor (GCD) of two numbers. The GCD is the largest positive integer that divides both numbers without leaving a remainder. We will use the Euclidean algorithm to calculate the GCD.

## Prerequisites

To follow along with this tutorial, you should have a basic understanding of Python programming. If you're new to Python, you might want to check out some beginner tutorials first.

## Steps

1. Define a function `gcd()` that takes two integers, `a` and `b`, as input.

```python
def gcd(a: int, b: int) -> int:
```

2. Inside the function, initialize a variable `remainder` equal to the remainder of `a` divided by `b`.

```python
remainder = a % b
```

3. Check if the remainder is zero. If it is, return `b`, as it is the GCD.

```python
if remainder == 0:
    return b
```

4. If the remainder is not zero, recursively call the `gcd()` function with arguments `b` and `remainder`.

```python
return gcd(b, remainder)
```

5. Test the program by calling the `gcd()` function with two numbers and printing the result.

```python
num1 = 48
num2 = 18
print(f"The GCD of {num1} and {num2} is: {gcd(num1, num2)}")
```

## Output

The output of the program should be:

```
The GCD of 48 and 18 is: 6
```

## Conclusion

Congratulations! You have learned how to write a Python program to find the greatest common divisor (GCD) of two numbers using the Euclidean algorithm. This program can be useful in various mathematical calculations and problem-solving scenarios. Keep practicing and exploring more Python programming concepts to enhance your skills.

Remember to customize the code with your own numbers to calculate the GCD of different pairs.
