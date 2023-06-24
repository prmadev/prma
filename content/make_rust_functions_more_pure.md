+++
title = "Pure Rust: How to apply Functional Programming Principles To Your Rust Functions"
description = "Brace yourself for a captivating adventure if you're unfamiliar with Functional Programming (FP). In my endeavor, I shall strive to elucidate the practical essence of FP, offering you a deeper understanding of this intriguing paradigm."
date = 2023-03-25
draft = false
slug = "pure-rust-pure-functions"
insert_anchor_links = "heading"

[taxonomies]
categories = ["guides"]
tags = ["programming", "type-system", "functional-programming", "rust"]

+++

If you are not familiar with Functional Programming(FP), you are in for a ride.
I will try to explain Functional Programming(FP) in more practical terms.

## A definition to work with

FP is a **declarative** way of writing a program that consists mostly of **pure functions** that operate on and produce **immutable data**.
That was many other unfamiliar words. Let's make it concrete.

## Making it more concrete

Here is a function in Rust that we will work on:

```rust
fn main() {
  // Calling `calculate_my_lateness` seems like magic.
  // We don't know how it calculates it, and why it is doing that.
  let mut status: bool;
  calculate_my_lateness(&mut status);

  // This sometimes crashes and sometimes, it does not.
  assert_eq!(status, true);
}

// The point of this function is to tell us if we are late
// Ask yourself, how would you write a test for such a function?
fn calculate_my_lateness(status: &mut bool) {
    let current_time = std::time::SystemTime::now();
    let expected_time = std::time::SystemTime::from(SOME_SPECIFIED_TIME);

    status = current_time <= date_time;
}
```

Now, let's make it _pure_ and while we are at it, we introduce pure functions and some principles as well.

### Pure functions return at least one output

That means that if you have a function named `some_function`, you will have at least one argument `some_input` and it will return at least one output `some_output`.

```rust
fn some_function(some_input) -> some_output
```

Why do we do this? When we are calling a function, we are expecting _something_ to happen.
In FP world, the only acceptable _something_ is an output argument.
A lack of output is _symptomatic_ of one of these two unacceptable situations:

1. **Our function does nothing**. In which case, why are we even bothering to write it at all?
2. **Our function is doing a side effect**. Which means that it is changing something other than what is inside the function.
   These functions don't let us know or control what they are doing inside, without making us look at the source code.
   We will get back to this throughout this post.

> Please note the emphasis on _symptomatic_.

So let's make it return the output:

```rust
fn main() {
  let mut status: bool;
  let output = calculate_my_lateness(&mut status);
  //--^^^^^^------------ we have an output now

  assert_eq!(output, true);
  //---------^^^^^^----- which we use here
}

fn calculate_my_lateness(status: &mut bool) -> bool {
    //-notice that we are returning something--^^^^--

    let current_time = std::time::SystemTime::now();
    let expected_time = std::time::SystemTime::from(SOME_SPECIFIED_TIME);

    status = current_time <= date_time;

    status // <- what we are returning
}
```

### Pure functions don't mutate state

As I mentioned before, a function does something when it returns something and changes the state of something outside itself.
We call that _a side effect_.
You may have noticed that our function takes a mutable variable of type `bool` and changes it.
In our first iteration of the function, we needed it. But now, we grew out of it. So let's just delete it.

```rust
fn main() {
  // let mut status: bool;  <- we don't need this

  let output = calculate_my_lateness();
  //--------------------------------^ we don't need to take status any more

  assert_eq!(output, true);
}

fn calculate_my_lateness() -> bool {
    //------------------^^- we don't need to take a mutable variable

    let current_time = std::time::SystemTime::now();
    let expected_time = std::time::SystemTime::from(SOME_SPECIFIED_TIME);

    current_time <= date_time //  <- what we are returning
}
```

Now isn't this better? When I call `calculate_my_lateness()`
I'm not worried about the function changing anything it's not supposed to anymore.
Let's move on.

### Pure functions return output only based on their argument

Which means that when I call `calculate_my_lateness()`, I should not expect it to do something different each time I run it.
Why is that? There are two reasons:

1. **Transparency**: You should know what parameters change the output of a function, without needing to reading the function body.
2. **Testing**: It is hell of a lot easier to test a function that you can just control without needing to change the time of your computer. Won't you say?

Let's do it in two steps this time.

#### Step one: Don't use global variables

you may have noticed `SOME_SPECIFIED_TIME`.
This is a variable we use to make a `SystemTime` which we compare current time with to know if we are late or not.
The problem here is these two:

1. We need to write a new function, each time we have a new meeting.
2. We also don't know what time current time is being compared to, unless we first read the function, and then find out what it uses as `SOME_SPECIFIED_TIME`.

```rust
fn main() {
  let output = calculate_my_lateness(SystemTime::from(SOME_SPECIFIED_TIME));
  //---------------------------------^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^-
  // now the caller is supposed to provide the time

  assert_eq!(output, true);
}

fn calculate_my_lateness(late_as_of: SystemTime) -> bool {
    //-------------------^^^^^^^^^^^^^^^^^^^^^^-----------

    let current_time = std::time::SystemTime::now();

    current_time <= late_as_of
}
```

#### Step Two: don't use functions with side effects inside your function

Imagine that you have a non-alcoholic drink, if you add another non-alcoholic drink to it, it is still non-alcoholic.
But if you add an alcoholic drink to it, it will not remain non-alcoholic anymore.
A pure function is only pure, if all the functions that are being called in it, are pure.
And `std::time:SystemTime::now()` is definitely not pure.
Now, at some point we need to get the current time, but we don't need to do that where it is hidden from the caller.

```rust
fn main() {
  let output = calculate_my_lateness(
                   SystemTime::from(SOME_SPECIFIED_TIME),
                   SystemTime::now(),//<------ we provide the time
  );

  assert_eq!(output, true);
}

fn calculate_my_lateness(late_as_of: SystemTime, target_time: SystemTime ) -> bool {
    //-------------------------------------------^^^^^^^^^^^^^^^^^^^^^^^-----------
    target_time <= late_as_of
}
```

Now the nice thing here is that we can easily test this function now!

```rust
// main and calculate_my_lateness are not shown here. Don't be alarmed.

#[cfg(test)]
mod tests {
    use super::calculate_my_lateness;
    use std::time::SystemTime;

    #[test]
    fn being_late_works() {
        let res = calculate_my_lateness(
            SystemTime::from(A_TIME),
            SystemTime::from(A_TIME_THAT_IS_AFTER_LATE_TIME),
        );
        assert_eq!(res, true)
    }

    #[test]
    fn being_early_works() {
        let res = calculate_my_lateness(
            SystemTime::from(A_TIME),
            SystemTime::from(A_TIME_THAT_IS_BEFORE_LATE_TIME),
        );
        assert_eq!(res, false)
    }
}
```

Imagine doing this with the first function!

#### One more step

OK, I lied... Somewhat. Have you noticed the one glaring, lack of transparency and control here?
It's the `<=`. You may need to read the function here, if you have this simple question:

> If I call the function exactly, at the precise moment that I specified to be `late_as_of`, will return true, or false?

Now, not answering this question using the function signature,
won't make my function less pure,
but still, it is a much nicer experience for the caller to be able to rely on their IDE's autocomplete to tell them what happens.
But how the hell should we do that? Easy! We take a comparator function as input!

```rust
fn main() {
  let output = calculate_my_lateness(
                   SystemTime::from(SOME_SPECIFIED_TIME),
                   SystemTime::now(),
                   |late, target| target > late, // here the caller passes the function
                                                 // you can also provide a few different functions yourself to make it easier for the caller
  );

  assert_eq!(output, true);
}

fn calculate_my_lateness(
    late_as_of: SystemTime,
    target_time: SystemTime,
    comparer: fn(SystemTime, SystemTime) -> bool, // magic happens here
) -> bool {
    comparer(late_as_of, target_time)
}
```

Now the caller is providing us we have everything we need. We did not hide one single thing.

### Isn't this just more work for caller?

Well, yes. Yes, it is... if calling functions without understanding them is the only work that the caller of our function is doing.
Otherwise, our caller knows everything they need using their language server, can change everything they need, have the assurance of our tests and don't need to crawl through our source code, and they will face much fewer bugs where they don't know where it came from.
It may seem unnecessary for this simple function, but imagine much more complex functions.

## Making things nicer: A spicy problem

So we have all this power and transparency.
But the elephant is in it room: We have a very shitty API.
Let's make it nicer using a technique called currying (hence the "spicy" pun).
What it means is: as well as taking functions as argument, we can return functions.
That way, our `calculate_my_lateness` function can become a function-maker.
Let me make it more concrete.

### Consider the use case

Let us suppose that we want to find time in our list of times that is not late.
Currently, we have to call the whole function, repeatedly, and include every argument.

```rust
// we are in main, don't be alarmed
let output_time1 = calculate_my_lateness(
    SystemTime::from(SOME_SPECIFIED_TIME),
    SystemTime::from(FIRST_TIME), //<------ we provide the time
    |late, target| target > late,
);

let output_time2 = calculate_my_lateness(
    SystemTime::from(SOME_SPECIFIED_TIME),
    SystemTime::from(SECOND_TIME), //<------ we provide the time
    |late, target| target > late,
);

let output_time3 = calculate_my_lateness(
    SystemTime::from(SOME_SPECIFIED_TIME),
    SystemTime::from(THIRD_TIME), //<------ we provide the time
    |late, target| target > late,
);

// etc...
```

This is not great.
Here, We can just make a function that only takes our target time.

```rust
fn calculate_my_lateness(
    late_as_of: SystemTime,
    // target_time: SystemTime <------------ we don't need to take this argument anymore
    comparer: fn(late_as_of: SystemTime, target_time: SystemTime) -> bool,
) -> fn(target_time: SystemTime) -> bool {
     //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^---- notice that we are now returning a function

    |target_time: SystemTime| -> bool { comparer(target_time, late_as_of) }
    //^^^^^^^^^^^^^^^^^^^^^^           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    //         |                this is where the calculation of lateness happens
    // we are taking target time here
 }
```

You might ask, "well, how does this help?"

```rust
// we are in  main

// now our late_before_time_x is not of type bool,
// rather it is of type Fn(SystemTime) -> bool
let late_before_time_x = calculate_my_lateness(
    SystemTime::from(SOME_SPECIFIED_TIME),
    |late, target| target > late,
);

// So we can just:
let first_result = late_before_time_x(FIRST_TIME);
let second_result = late_before_time_x(SECOND_TIME);
let third_result = late_before_time_x(THIRD_TIME);
// ...much less boilerplate
```

### Why `const` just won't do

Veteran rustaceans among the readers of this blog might ask: "why not just use `const` to mark that functions are pure?"
Well dear veteran, if you can make a function `const`, do every one a favor and actually do it.
In fact, I regularly use `clippy::missing_const_for_fn` lint and suggest you to use it as well.
But that does not guarantee that our functions are pure, or that every pure function can be `const`.
Here are my reasons:

1. `const` functions can take `&mut something` as their arguments. Taking mutable references is definitely not very pure-function-y.
2. You cannot `const` trait methods in stable rust, as of now. And considering that every function call inside a `const` function should be `const` as well, you are extremely limited, without any reasons that have to do with pure functions.
3. Many libraries don't to use `const` on the functions that are `const`. Again, limitation without pureness reasons.

## Making things declarative

There is this often repeated old joke from Phil Karlton that says:

> There two hard problems in programming
>
> 1. Cache invalidation
> 2. Naming things
>    And here we are concerned with the second one.

- In the **imperative** universe, we usually name our functions using _verbs_. Think `calculate_my_lateness`.
- In the **declarative** universe we are concerned with our output, we use _nouns_. Think `lateness_calculator`.

This makes the intent of our function clear.
How it is implemented under-the-hood is not what matters to the caller.
They only care about what they get out of it.
If you now are thinking that you cared about that part before, consider the things that we just can answer by seeing the arguments that our function takes.
We don't need to rely on our function name anymore to tell use how the function is calculating lateness.
We only need to know what it's intention is.

## Bye without iterators?

In this post, I just preferred to focus on the heart of functional programming: pure declarative functions.
However, functional programming brings with it a set of extremely useful tools, patterns, etc. most well known are iterators, maps, folds, filters and....
Honestly, they are well explained in other resources. My only suggestion would be to check out [`itertools`](https://docs.rs/itertools/latest/itertools/) crate.
