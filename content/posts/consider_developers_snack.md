+++
title = "Consider Developer's Snack"
author = ["Perma"]
date = 2023-06-21T11:43:00+03:30
tags = ["opinion", "permacomputing", "programming"]
categories = ["long"]
slug = "consider_developers_snack"
draft = false
+++

## Intro {#intro}

During my early 20s, I found myself immersed in the world of sustainable architecture as an architecture student. Engaging in various workshops centered around this field, one particular experience stands out as a monumental turning point in my life. It was a workshop conducted by a renowned professor in Iran, where I gained valuable insights.
Within this workshop, we collectively brainstormed strategies to harness heat sources for a four-member family's house, aiming to optimize its thermal efficiency. We considered a range of possibilities, including solar and geothermal heat, as well as the heat generated by the kitchen oven. However, there was one significant heat source that eluded our attention, as pointed out persistently by the professor.

Eventually, he provided us with a clue: "You seem to have overlooked four 37-degree Celsius heaters." It dawned on us that we had forgotten to factor in the heat generated by the family members themselves. Their body heat, a natural source of warmth, had slipped our minds entirely.

Reflecting on a more recent occurrence, a certain paper began circulating, comparing the energy usage footprint of different programming languages. Yet, I couldn't help but notice that the discussions surrounding this paper overlooked a crucial aspect-it solely measured the energy footprint at one specific point in the application's lifecycle.

It is essential to recognize that the energy usage of a programming language extends beyond a mere snapshot analysis. To truly grasp the overall impact, we must consider the entire lifecycle of the application, accounting for factors such as development, deployment, maintenance, and eventual retirement. Only then can we gain a comprehensive understanding of the energy implications associated with different programming languages.

## The Paper, As The Thread We Pull {#the-paper-as-the-thread-we-pull}

The paper, titled "Energy Efficiency Across Programming Languages," delves into the exploration of various problems and their corresponding solutions, which are implemented across multiple programming languages. The researchers conducted an analysis of the electricity consumption associated with each implementation. In essence, the primary focus of the study revolves around determining the relative energy efficiency of different programming languages, with {{< lang "C" >}} emerging as the most efficient and serving as the benchmark for measurement.

```text
C      | 01.00 | ▓
Rust   | 01.03 | ▓
Java   | 01.98 | ▓▓
Python | 75.88 | ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
Perl   | 79.58 | ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
```

These results carry considerable weight, although it is essential to address a common misconception surrounding their implications. Contrary to popular belief, these findings do not unequivocally assert that a {{<lang `C`>}} program is inherently more environmentally sustainable than its {{<dfn `Java`>}} counterpart.

## Consider The Snack {#consider-the-snack}

In the field of sustainability literature, there exists a concept known as {{<dfn `Life-Cycle Assessment`>}}. {{<abbr `LCA`>}} involves evaluating the environmental impact of a product throughout its entire life cycle, encompassing aspects such as raw material extraction, manufacturing, and disposal or recycling.

When applying this concept to the assessment of software life cycles, we realize that there are several significant factors that have been overlooked. Allow me to provide some insights on these important considerations.

Firstly, the authors of the paper have primarily focused on the runtime of a specific set of problems. This means that their applications follow a sequence of starting up, solving the given problem, and then exiting. Consequently, the results obtained are biased towards programming languages that excel at efficient startup and shutdown processes. However, this perspective fails to account for the behavior of servers and long-running processes. Servers, for instance, typically start up once per day or even less frequently and spend extended periods in the computational phase. If a programming language is efficient during the initial startup but requires frequent restarts during runtime, this crucial aspect is overlooked.

But we shouldn't stop there. Another aspect to consider is compilation. While {{<lang `Rust`>}} is indeed an impressive language, its compilation process is significantly more resource-intensive compared to {{<lang `Go`>}}. {{<lang `Rust`>}} yields highly efficient binaries, but the energy expended during the compilation process is also considerably higher.

Furthermore, the improved quality of {{<lang `Rust`>}}'s compiled binaries becomes relevant when we consider the potential presence of bugs and the subsequent need for recompilation. More permissive compilers may result in programs with a higher likelihood of bugs, necessitating additional rounds of debugging, fixing, and retesting. It's important to acknowledge that this discussion goes beyond the developer's running computer and includes factors such as sustenance needs, energy consumption to support their biological functioning during the process of bug fixing, and the overall impact on the environment.

Additionally, the continuous deployment or release cycles, repackaging efforts, and the use of {{<abbr `CI`>}}/{{<abbr `CD`>}} practices all contribute to the _ecological footprint_. Recompilation for each platform targeted, as well as the network costs associated with distributing binaries or source code to different endpoints, also significantly impact the environment.

The problem of compatibility further compounds the issue. Programming languages with runtimes shipped separately from the package, such as {{<lang `Python`>}}, {{<lang `Lua`>}}, and other scripting or {{<abbr `JIT`>}} languages, as well as those based on virtual machines like {{<abbr `JVM`>}}, often require reprogramming or the inclusion of older runtime versions when breaking changes occur. This adds to the complexity and environmental impact of software development and packaging.

Furthermore, poorly designed programs can accumulate significant technical debt over time, resulting in rewriting. Although the language and toolchain themselves may not directly cause this, the ecosystem surrounding languages like {{<lang `JavaScript`>}}, {{<lang `PHP`>}}, and {{<lang `Python`>}}   tends to encourage short-term thinking. In contrast, languages like {{<lang `Rust`>}}, {{<lang `C`>}}, {{<lang `Fortran`>}}, and others that focus on system-level development promote long-term support and are home to projects that have thrived for several decades.

Moreover, the variability in usage patterns must be taken into account. While languages like {{<lang `C`>}}  and {{<lang `Cpp`>}} require substantial energy for compilation across different platforms, languages such as {{<lang `Rust`>}}, {{<lang `Go`>}}, and {{<lang `Java`>}} mitigate the duplication of energy required to support multiple platforms within a single application.

Finally, we must consider the energy expended in the development, maintenance, and support of programming languages. Languages like {{<lang `Rust`>}} offer remarkable expressive capabilities, not merely due to better timing or superior thinking but also as a result of extensive collaborative efforts. Conversely, languages like {{<lang `Elm`>}} undergo minimal changes over time.

It is worth emphasizing that the energy required to learn a language, the environmental consequences of mistakes made during coding (e.g., unintentionally sending a million requests to thousands to different servers), variations in energy usage among developers from different countries, and the decreasing lifespan of hardware are all factors that contribute to the overall consideration.

## Dear Reader {#dear-reader}

The crux of the matter is that complexity pervades these considerations, demanding our thoughtful attention and appropriate mitigation for each aspect. Failing to acknowledge and address each facet places us at risk of optimizing solely for one element while sacrificing the other to the extent of rendering our efforts absurd.

It is important to note that I have deliberately omitted discussions about post-harm mitigation. Our focus has been on reducing harm itself. Exploring the costs associated with bootstrapping and averting catastrophic scenarios would expand beyond the scope of this essay.
