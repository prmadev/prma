+++
title = "Go vs. Rust's Readability Trade-offs: Better Safe Than Sorry"
description = "I argue that Rust is not less maintainable than Go just because Rust is less readable."   
date = 2023-04-14
draft = false
slug = "readability_tradeoffs"
insert_anchor_links = "heading"

[taxonomies]
categories = ["opinion"]
tags = ["rust", "programming", "go"]

[extra]
+++

Traditionally speaking, Go and Rust are not direct competitors on many fronts.
Each take different trade-offs. But more often than not, you might need to choose one over the other.
It is compared in the niche the other fails. Like low-level system development, which Rust easily rules. 
Or maybe dev-ops tooling which Go is easily good at it. 

However, there are many overlaps in their use case.
Think high-performance web-servers.
In those spaces, we should compare other things. Like readability and maintainability of language.
In this post, I want to share my thoughts on readability.

## TL;DR 

Rust is not less maintainable than Go because Go is less readable.   

## What I do not disagree with

Just to be clear, although I'm making a case for Rust and arguing that readability should not be as much concern,
I would like to make clear that I'm not arguing against these common-sense statements: 
1. Go is more readable.
2. Go has less overhead for people with no previous experience with language.
3. Readability is generally what you want.

## Why readability is good 

English is more readable than any programming language. However, readability is not the only measure that we are using for chosing a language.
Readability and clearity are not inherently good, rather it is a proxy for something else we value: 
A readable code helps us understand the flow of information in order to **understand its logic**, **capture its bugs** and **extend it**, easier.
A line of code is read in many situations: 
1. I want to find out how a piece of code can give rise to a specific runtime bug. 
2. I want to audit it to see if it exposes any specific vulnerability, data-race, etc.
3. I want to add features to it, and I want to know where and how I should plug the new functionality to.
4. I want to make a code more robust, document it and make it more available for other people by refactoring it.
5. I want to review the code of my colleague to see if a set of fresh eyes could capture a new bug, or an inconsistent styling with the rest of the codebase.
6. I want to understand what a code base does. Maybe I'm trying to see if a software is spying on me, or maybe I'm trying to understand the way it calculated my taxes.

These are all noble pursuits. And in all these cases, readability is vital in preventing disasters and better experience in onboarding others.
Go's readability is probably one of its best features. At my current and previous jobs,
I have had to jump into different code bases with different levels of legacy and problematic codebases where junior developers with no-idea of idiomatic ways of coding Go left their projects without any context for the next developer.
Such low quality codes should take forever for one to decode. However, because of the beautifully simple syntax of Go, I could start to be productive and sending PRs in less than a day.
Have you seen a codebase where all the back-end code was coded by a narcissistic lone-wolf meth-addict? Well, I have, and it's an absolute shit-show. Yet, I committed my first edits in 3 hours.
Go is excellent at that. And I can understand how a huge tech company with very quick employee turn-over can give rise to such language.
Kudos to the Go team.

## Rust does not need readability

Not As much, anyway. 
Unlike its name, Rust usually finds a third way.
For example, if you have thought a language should either be performant yet unsafe, or be less-performant and have a mark-and-sweep garbage-collector,
Rust will defy your limits by using a new semantic approach to manage memory which while possesses the speed of manual memory management,
it is yet much more memory safe than most garbage collected languages.

When it comes to readability, Rust is vastly less readable than go, on the other hand, it handles many of the core reasons we need readability using compile-time checks.
Let us consider the situations we have mentioned before.
1. Rust has a very strong emphasis on handling errors and panicking, and exceptions are heavily discouraged. You can use things such as `clippy::expect_used` and `clippy::expect_used` and `clippy::panic` linters to prevent the code from compiling if at any point you have used them. Basically, you can write a total program. 
2. Rust uses many linters and is heavily protected by its compiler against many security bugs. It has a semantic way of preventing memory leaks and data-races. Many of the common audits are not necessary when language itself makes the vulnerability impossible to happen. 
3. Rust has a very extensive and strong type-system. This means that you can be very explicit about the APIs of each package and each crate. This means that the language-server and IDE can easily help you with using those APIs in such a way that, for example, Go with a type-system much smaller, could not.
4. Rust's compiler allows for explicitly making policy about documentation and styling. For example, you can make it impossible for a code to compile if every public API is not documented, or if the document doesn't cover errors. The test runner also checks if the example's in the documentation are not running. This helps in enforcing good documentation practices for the engineering team.
5. Rust's compiler is very hard to convince of compiling. Every line of code should work perfectly. If a code can compile and pass Clippy lints and test runner, there is little left for the reviewer of the code. The reviewer should only concern themselves with the business-logic of the code.
6. The expressiveness of the type system allows for functions that enforce business logic, in their function signature and type constructors. Rust also adopts a declarative naming convention, which helps with communicating intentions. 

All these points mean that most of the needs of readability are either covered by the compiler or the idioms are well enough that you don't have to worry about the complexity of syntax.

Rust's compiler does most of the reading for you, you do the writing, my friend. 

You can compare this approach by saying that rust allows for a compile-time robustness, while Go helps with runtime-maturing.
And hence, Rust is optimized for the time of the writing. Not ad-hoc corrections, which is what Go is excels at.

## How should it affect your decisions

### Where Go's approach excels at

I consider Kubernetes to be the perfect example of a project that Go is perfect for.
A super readable language is great for when massive amounts of unfamiliar engineers need to change the code base constantly, and their changes are examined by themselves.
Such situations come up with projects that are usually providing a thin layer of API over different platforms, and when you expect the project to be truly forked, constantly. 
In such platforms, you expect, and welcome a lot of hit-and-run contributions and you expect the code to be easily changeable.
The code does not need to be perfect at all times, as the users are expected to be perfectly capable of patching the codebase, at least for their own use-case.

### Where Rust's approach excels at

Although I expect it to be controversial, I find web-servers to be the epitome of what Rust is good for. 
I consider Rust to be perfect for a software where you want each deploy to be perfect.
Each commit with Rust can be double-checked by the compiler, Clippy, cargo-audit cargo-deny and many other tools.
Using its expressive type-system you can make functions pure, ensure totality and model data in a way that most other languages can only dream of. 

Now, I know that many people consider Go to be excellent at making web servers.
As a back-end developer who has chosen Go to be my main language for business, I agree with you. Go is splendid for web servers.
But I strongly suggest that you give Rust a try if back-end development in Go is your thing.
You would be extremely surprised at how exceptionally well Rust is at this task.
