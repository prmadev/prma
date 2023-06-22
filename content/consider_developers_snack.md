+++
title = "Consider Developer's Snack When Assessing Software Sustaiability"
description = ""   
date = 2023-06-21
draft = false
slug = "consider_developers_snack"
insert_anchor_links = "heading"

[taxonomies]
categories = ["opinion"]
tags = ["permaculture", "longevity", "FLOSS", "permacomputing"]
+++

A few while ago, there is this paper ------ spreading about comparison of different languages
when it comes to their carbon foot-print.
I have noticed that conversations around this paper are missing an extremely important point:
This paper is just measuring carbon-footprint in just one particular point in the lifecycle of the application. 

## the paper as the thread we pull

The paper is called, “Energy Efficiency Across Programming Languages.” 
It uses some problems and their solutions and implement them across different languages.
They have then checked the electricity usage when running each implementation. 
That is the gist of it.

The result is an defined in ratio of energy usage, with C being most efficient, becoming the unit of measurement.

```
C      | 01.00 | ▓ 
Rust   | 01.03 | ▓
.
.
.
Java   | 01.98 | ▓▓
.
.
. 
Python | 75.88 | ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓  
Perl   | 79.58 | ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
```

These are significant results. And yet, these findings are not doing what many people think they are doing:  
They are are not showing that a C program is more sustainable than a Java one.

## Consider the snack

There is this concept in sustainability literature called, Life-Cycle Assessment (LCA).

It basically is the practice of assessing the footprint of the whole life-cycle of a product,
from the creation/extraction of raw-materials, to the footprint of recyling or disposing of it.

What that means for assessing the life-cycle of a software is that we are missing a lot. 
Let me guide you through some of it. 

To begin with, we are considering the runtime of a particular set of probelms.
What that means is that our applications are 1. Starting up 2. Solving the solution and then... 3. Exiting.
What that means is that these results are pretty much rigged towared the programming languages that are starting up and exiting pretty efficiently. 
That is all fine, until you notice that servers and long running processes don't do that that much.
They start up once perday or longer, and they stay at the second stage for much much much longer than they have spent on starting up.
If a programming language does the second one pretty efficently, but have a runtime that needs to fire up, we are missing it.

Are we done? of course not. Next you should consider the compilation.
Rust is awesome. But Rust's compilation is a much more intensive process than Go's.  
Rust gives you a much more efficent Binary than Go, but in doing so it spends much more energy as well.

But then we should consider that Rust is giving us much better binaries when it compiles. 
Why does that matter?
Well, let us consider that the more permissive a compiler is, the more potential there is that program has bugs that need recompilation.  
Add to that the need for runtime debugging.
And we are just considering the running computer of the developer,
not the foot that developer is eating,
and the energy they are spending to support their biology for the time of finding, fixing and retesting for those bugs.

Then the continued deployment or releases, repackaging, CI/CD,
and recompilation for each platform that targets it, the network cost of sending binary and or sources to each end....
each and all of these, have significant ecological footprints.

Then comes the problem of compatibility. programming languages that have runtimes shipped outside the package,
like python, lua and other scripting and JIT languages and those that are based on virtual machines like JVM,  
on each breaking change, force the programmer and packager to either recompile and update the whole thing,
or include and run the older version of the runtime, seperate from the system. 

Poorly thought out programs also throw all of these expendetures after a few years,
as the result of the huge systematic debt that hinders the development of these programs.
Although a the language and toolchain themselves don't cause this,
the ecosystem of langauges like javascript, php and python encorage this kind of short-term thinking,
while ecosystem of languages like Rust, C, Fortran, and others that sit more on the system-level,
encorage you to think past ten years of support and are ripe with projects that lived for more than a few decades.

Are we done? well, then comes the variability of usage.
While C and C++ take significant energy to compile into different platforms, languages like rust,
go and java remove the duplication of energy needed for supporting multiple platforms per application.

then comes the energy to develop, maintain and support these languages.
Languages like Rust are so amazing and also expressive,
not just as a result of better timing or better thinking,
but rather because of the amount of work being done on them.
while at the same time languages like ELM hardly ever change.

Yes, energy that it takes to learn a language, power off each language at making a mess
(like for example sending a milion request to thousand different servers before you notice the unintended infinit loop),
the differences of energy usage between developers of different countries,
all count.
I don't need to create an exhaustive list to make my point here:
It is not a one dimentional consideration.

## Dear Reader...

My point here, is that things are complex,
we need to consider and mitigate for each aspect accordingly.
If we ignore one aspect, we are in danger of optimizing only for one aspect,
while sacrificing the other aspect to the point of absurdizing our efforts.

I have also avoided things like mitigation after the harm, we only talked about the reducing the harm.
Otherwise, we would need to talk about the price of bootstrapping and avoiding catastrophic scenarios as well.
But that would be out of the scope of this essay.
