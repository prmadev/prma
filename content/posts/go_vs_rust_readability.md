+++
title = "Go Vs Rust readability"
author = ["Perma"]
date = 2023-04-14T23:49:00+03:30
tags = ["rust", "programming", "go", "opinion"]
categories = ["long"]
slug = "go_vs_rust_readability"
draft = false
+++

## Intro {#intro}

Traditionally speaking, {{<lang `Go`>}} and {{<lang `Rust`>}} are not direct competitors on many fronts. Each take different trade-offs. But more often than not, you might need to choose one over the other. It is compared in the niche the other fails. Like low-level system development, which {{<lang `Rust`>}} easily rules. Or maybe dev-ops tooling which {{<lang `Go`>}} is easily good at it.

However, there are many overlaps in their use case. Think high-performance web-servers. In those spaces, we should compare other things. Like readability and maintainability of language. In this post, I want to share my thoughts on readability.

## Tl;DR {#tl-dr}

{{<lang `Rust`>}} is not less maintainable than {{<lang `Go`>}} because {{<lang `Rust`>}} is less readable.

## What I do not disagree with {#what-i-do-not-disagree-with}

Just to be clear, although I'm making a case for {{<lang `Rust`>}} and arguing that readability should not be as much concern, I would like to make clear that I'm not arguing against these common-sense statements:

1. {{<lang `Go`>}} is more readable.
2. {{<lang `Go`>}} has less overhead for people with no previous experience with language.
3. Readability is generally what you want.

## Why readability is good {#why-readability-is-good}

English is more readable than any programming language. However, readability is not the only measure that we are using for chosing a language.

Readability and clearity are not inherently good, rather it is a proxy for something else we value: A readable code helps us understand the flow of information in order to **understand its logic**, **capture its bugs** and **extend it**, easier. A line of code is read in many situations:

1. I want to find out how a piece of code can give rise to a specific runtime bug.
2. I want to audit it to see if it exposes any specific vulnerability, data-race, etc.
3. I want to add features to it, and I want to know where and how I should plug the new functionality to.
4. I want to make a code more robust, document it and make it more available for other people by refactoring it.
5. I want to review the code of my colleague to see if a set of fresh eyes could capture a new bug, or an inconsistent styling with the rest of the codebase.
6. I want to understand what a code base does. Maybe I'm trying to see if a  software is spying on me, or maybe I'm trying to understand the way it calculated my taxes.

These are all noble pursuits. And in all these cases, readability is vital in preventing disasters and better experience in onboarding others.
{{<lang `Go`>}}'s readability is probably one of its best features. At my current and previous jobs, I have had to jump into different code bases with different levels of legacy and problematic codebases where junior developers with no-idea of idiomatic ways of coding {{<lang `Go`>}} left their projects without any context for the next developer.
Such low quality codes should take forever for one to decode. However, because of the beautifully simple syntax of {{<lang `Go`>}}, I could start to be productive and sending PRs in less than a day. Have you seen a codebase where all the back-end code was coded by a narcissistic lone-wolf meth-addict? Well, I have, and it's an absolute shit-show. Yet, I committed my first edits in 3 hours. {{<lang `Go`>}} is excellent at that. And I can understand how a huge tech company with very quick employee turn-over can give rise to such language. Kudos to the {{<lang `Go`>}} team.
