+++
title = "Dishonesty of Optimizing for Developer Time"
author = ["Perma"]
date = 2023-07-31T12:24:00+03:30
tags = ["opinion", "longivity", "permacomputing"]
categories = ["long"]
slug = "dishonesty_of_optimizing_for_developers_time"
draft = false
+++

## Intro {#intro}

Based on some individuals' viewpoints, they emphasize optimizing for developer time or productivity as their main priority, rather than giving top precedence to aspects such as performance, robustness, or correctness.

## The Thesis {#the-thesis}

Their argument revolves around the idea that developers' time is more valuable and expensive than server resources. They often use phrases like "You can always refactor," "You can always optimize for performance," or "We will fix bugs later on" to support their viewpoint. While this perspective may be considered ingenious, it is contingent on proper planning, weighing the trade-offs, and actually acting upon those decisions.

## My Antithesis {#my-antithesis}

However, if this were genuinely the case, more substantial effort would have been invested in refactoring or choosing a more rigorous language than {{<lang `JavaScript`>}}, for example, a language that can significantly boost performance in the long run.

Fixing bugs in backends written in {{<lang `JavaScript`>}}, {{<lang `PHP`>}}, or {{<lang `Python`>}} is certainly feasible, but adding performance improvements can become challenging, if not improbable. More meticulous programming tools automate the process of finding and fixing even the most elusive bugs and come with significant performance optimizations. The ability to make well-founded assumptions about the program allows for better optimization.

This approach often leads to a situation where future engineers, tasked with rewriting the {{<abbr `MVP`>}} program in a more scalable language, face an archeological rediscovery process.

So, if they are not genuinely optimizing for shorter development time, what are they doing?

## Lifting The Veil: The Actual Thesis {#lifting-the-veil-the-actual-thesis}

It appears that they prioritize short-term gains over achieving greater long-term goals.

A language like {{<lang `Rust`>}}, while providing benefits like enhanced safety and reliability, requires significantly more time to produce a binary or {{<abbr `API`>}}s. The manual labor of finding bugs is taken over by the compiler and the language's semantics. If the focus is on developer productivity, then this automation is naturally desirable. However, what one truly desires to convey is "I have this feature, even though it may have some bugs and performance issues, I have it nonetheless."

## The Synthesis {#the-synthesis}

That may be a positively good idea for trying the market to see if there is any for that specific idea, for most software developements though, the actual intention is not experimentation, as the novelty of product and bussiness plan do not warrant a need for experimentaion. rather, having something to sell, as fast as possible. That's for start ups. Where there is both legitimate and illegitimate short-termism. But more established enterprises may have this pairing as well. While there are A/B experimentaions going on, trying different approaches to see which works, middle management might also like the addition of another achievement in their yearly reports.

A rapid way to discern whether it falls under the category of experimentation/prototyping or an {{<abbr `MVP`>}}/achievement-oriented project is to examine whether there is a notably extended period allocated for the program's rewrite compared to its initial development phase.

## Dear Reader {#dear-reader}

Similar to many phenomena, short-termism can indeed have legitimate applications. The reluctance of many to embrace this term is rooted in its improper and illegitimate uses.

Certainly, there are well-intentioned individuals who advocate for developer productivity. However, those with ample experience will acknowledge that long-term developer productivity is not synonymous with low-overhead development, and, more often than not, these two objectives are incompatible.
