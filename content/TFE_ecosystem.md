+++
title = "TFE ecosystem"
date = 2023-01-04
draft = true
slug = "tfe-ecosystem"
insert_anchor_links = "heading"

[taxonomies]
categories = ["thoughts"]
tags = ["programming", "type-system"]

+++

# The Type-Function-Event Ecosystem : A set of ideas (and tools) that goes really well together

Software development is full of buzzwords.
Type-Driven Development (TyDD), Functional Programming (FP), Event-Sourcing (ES), Domain Driven Design (DDD), Actor model, Command and Query Responsibility Segregation (CQRS), Asynchronous Messaging, And Rust language.
You may have heard of some of these terms, but what do they mean and how do they relate to each other?
And more importantly, how can they help you create better software?

In this post, I want to introduce you to the TFE Ecosystem: a way to design software with types, functions, and events.
I will explain what these concepts are, how they work together in harmony, and why they can improve your software design.
I will also share some insights and observations that I have gained from using the TFE Ecosystem and some resources that you can use to learn more about it.

The TFE Ecosystem is not a prescriptive idea.
Rather it is an observation of mine on how a few different ideas and tools work astonishing, together.  
It is based on existing principles and practices that have been around for a long time.
It is also fun and rewarding to use.

If you are curious about the TFE Ecosystem and evaluate my reasoning, read on!

## Here is a short introduction to all of these words

 You can skip this section if you are already familiar with them.

### Functional Programming (FP)
If you are not familiar with Functional Programming, you are in for a ride.
I will try to explain functional programming in more practical terms.

#### A definition to work with
FP is a **declarative** way of writing a program that consists mostly of **pure functions** that operate on and produce **immutable data**.

Ok so that was a lot of other unfamiliar words. Let's make it concrete. 

Here is a funcition in Rust:

```rust

fn main() {
  // calling `calculate_my_lateness` seems like magic. 
  // we don't know how it calculates it, and why it is doing that.
  let mut status: bool; 
  calculate_my_lateness(&mut status);

  // this sometimes crashes and sometimes, it does not.
  assert_eq!(status, true)
}

// the point of this function is to reduce  
fn caclulate_my_lateness(status: &mut bool) {
  
    let current_time = std::time::SystemTime::now();
    let expected_time = std::time::SystemTime::from(SOME_SPECIFIED_TIME);

    status = current_time <= date_time;
}

```



### Type-Driven Development (TyDD)

### Event-Sourcing (ES)

### Domain Driven Design (DDD)

### Actor Model

### Command and Query Responsibility Segregation (CQRS)

### Asynchronous Messaging

### and of course, Rust programming language

