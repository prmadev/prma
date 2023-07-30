+++
title = "19% of Rustaceans Need To Know This!"
date = 2023-04-09
draft = false
slug = "moving_is_pure"
insert_anchor_links = "heading"
description= "The act of moving arguments within Rust's functions serves as a compelling means to uphold the purity of the function. By embracing this practice, we ensure that the function operates on unique ownership of its inputs, preserving the integrity and immutability of data, which are fundamental tenets of functional programming."

[taxonomies]
categories = ["opinion"]
tags = ["programming", "rust", "functional-programming"]
+++

Or you can also read the title as: I made a [poll](https://fosstodon.org/@Amirography/110152228540156245) and 81% agreed with me. So you probably don't need to read on. 
I know, I hate the title as well. But I couldn't resist. 
So here is another, better title:

## Moving a Variable to a Function in Rust Doesn't Make It Impure

So as an introduction, if you don't know Rust: 
In Rust, we have this concept of moving variables.
It is like this: 

``` rust
//  A variable is made. 
let a_variable = some_value; 

// It moves into this function.
_ = a_function_that_takes_ownership(a_variable);

// We cannot use a_variable anymore! So, we cannot do this!
let b_variable = a_variable; 
  
```
Now I consider `a_function_that_takes_ownership` to be a pure function.
However, it raises a possible confusion:

> Doesn't `a_function_that_takes_ownership` change the state of the outer function?
> Isn't that a side effect?  

I argue that it doesn't. Here is why: a function is not a function call. Ok. let's visualize it. 

```
      ________outer_function_______
--in->|       __inner_f___        |-out->
      | -in-> |          | -out-> |
      |       ------------        |
      -----------------------------
```

So we have two functions. One outer, and one inner.

- Each function should have inputs and an output.
- Other than their outputs, they should not change anything outside their function space. 

If these conditions are not met, our function is not pure.

**Step 1.** Now consider a variable `[V]`.


```
      _____________________________
----->| [v]   ____________        |----->
      | ----> |          | -----> |
      |       ------------        |
      -----------------------------
```
**Step 2.** With our outer function, we create a function call for the inner function. 

```
      _____________________________
----->|       ____________        |----->
      | [v]-> |          | -----> |
      |       ------------        |
      -----------------------------
```
**Step 3.** It is no longer in the state space of the outer function. The inner function takes ownership of it.   

```
      _____________________________
----->|       ____________        |----->
      | ----> |   [v]    | -----> |
      |       ------------        |
      -----------------------------
```

Semantically, for the outer function `[v]` was used in the function call and then dropped. Which does not violate our rules.
For the inner function, it just got an input and returns an output. 
So it makes sematic sense. 
In practice, it also makes the same guarantees as any other pure function:
- No null pointers. 
- No mutable state. 
- No side effects. 

If the caller `.clone()` our value and make a copy of it and pass that to the inner function,
it provides us with no other guarantees, other than more memory usage and slightly longer code.  

## Why does it matter? 

Well, Honestly, it doesn't.
I just had to decide if in a pure function I can consume a `self`, if I want to make it a pure function, considering that I cannot make it `const`.   
This was my thinking output. Now you are the outer function. 


{{ discussion() }}