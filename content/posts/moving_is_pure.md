+++
title = "Moving in Rust is Pure"
author = ["Perma"]
date = 2023-04-09T10:44:00+03:30
tags = ["opinion", "rust", "programming", "functional-programming"]
categories = ["long"]
draft = false
slug = "moving_is_pure"
+++

## Intro {#intro}

The act of moving arguments within {{<lang `Rust`>}}'s functions serves as a compelling means to uphold the _purity_ of the function. By embracing this practice, we ensure that the function operates on unique ownership of its inputs, preserving the integrity and _immutability_ of data, which are fundamental tenets of _functional programming_.

## Moving a Variable to a Function in {{<lang `Rust`>}} Doesn't Make It Impure {#moving-a-variable-to-a-function-in-doesn-t-make-it-impure}

So as an introduction, if you don't know {{<lang `Rust`>}}.

In {{<lang `Rust`>}}, we have this concept of _moving_ variables. It is like this:

```rust
//  A variable is made.
let a_variable = some_value;

// It moves into this function.
_ = a_function_that_takes_ownership(a_variable);

// We cannot use a_variable anymore! So, we cannot do this!
let b_variable = a_variable;
```

Now I consider `a_function_that_takes_ownership` to be a _pure function_. However, it raises a possible confusion:

> Doesn't a_function_that_takes_ownership change the state of the outer function? Isn't that a side effect?

I argue that it doesn't. Here is why: a function is not a function call. Ok. let's visualize it.

```text
      ________outer_function_______
--in->|       __inner_f___        |-out->
      | -in-> |          | -out-> |
      |       ------------        |
      -----------------------------
```

So we have two functions. One outer, and one inner.

- Each function should have inputs and an output.
- Other than their outputs, they should not change anything outside their function space.

If these conditions are not met, our function is not _pure_.

### Step 1 {#step-1}

Now consider a variable `[V]`.

```text
      _____________________________
----->| [v]   ____________        |----->
      | ----> |          | -----> |
      |       ------------        |
      -----------------------------
```

### Step 2 {#step-2}

With our outer function, we create a function call for the inner function.

```text
      _____________________________
----->|       ____________        |----->
      | [v]-> |          | -----> |
      |       ------------        |
      -----------------------------
```

### Step 3 {#step-3}

It is no longer in the state space of the outer function. The inner function takes _ownership_ of it.

```text
      _____________________________
----->|       ____________        |----->
      | ----> |   [v]    | -----> |
      |       ------------        |
      -----------------------------
```

Semantically, for the outer function `[v]` was used in the function call and then dropped. Which does not violate our rules. For the inner function, it just got an input and returns an output. So it makes sematic sense.

In practice, it also makes the same guarantees as any other _pure function_: - No null pointers. - No _mutable state_. - No _side effects_.

If the caller `.clone()` our value and make a copy of it and pass that to the inner function, it provides us with no other guarantees, other than more memory usage and slightly longer code.

## Why does it matter? {#why-does-it-matter}

Well, Honestly, it doesn't. I just had to decide if in a _pure function_ I can consume a self, if I want to make it a _pure function_, considering that I cannot make it _const_. This was my thinking output. Now you are the outer function.
