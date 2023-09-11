+++
title = "FLOSS and Longevity sitting in a tree"
description = "FLOSS is a captivating realm within software development. What makes FLOSS particularly intriguing is its deviation from conventional business goals, leading to planned longevity and a distinct approach to sustainability."   
date = 2023-06-14
draft = false
slug = "floss_is_friendly_towards_longivity"
insert_anchor_links = "heading"

[taxonomies]
categories = ["opinion"]
tags = ["permaculture", "longevity", "FLOSS", "permacomputing"]
+++

<section class="intro">

Free/Libre and Open Source Software (FlOSS) is a captivating realm within software development.
What makes FLOSS particularly intriguing is its deviation from conventional business goals,
leading to planned longevity and a distinct approach to sustainability.

</section>

## Reasons

Let us delve into the unique qualities of FOSS and the factors that contribute to its better suitability for longevity.

### The longevity of the FLOSS business model serves it well  

The common business models are better suited for short-term goals.
There are two major approaches: selling or renting.

Small to mid-sized software companies predominantly prioritize the sale of their products.
The concept of product longevity, while acknowledged as necessary,
assumes a secondary role rather than being a central objective.
Its primary function lies in establishing trust among consumers.
Once the initial excitement surrounding the launch of a new and captivating product subsides,
these companies swiftly shift their attention to the next innovation.
The success of marketing these novel products heavily relies on users' fear of missing out
and the perceived loss of functionality associated with the previous iteration.
Unfortunately, this often leads to the inclusion of unnecessary features,
deliberate planning for obsolescence, and resistance against the right to repair.
In this cycle, longevity takes a backseat as the perpetual replacement of one product with another takes precedence.

Conversely, larger companies place a premium on the rental model for software.
Instead of users owning the software outright,
they opt for subscription-based payment models for continuous usage.
One might assume that these companies would prioritize stability to retain their subscribers.
However, practical implementation often takes a different route.
These companies rely on monopolistic tactics,
such as acquiring competitors or launching extensive marketing campaigns to stifle new entrants.
In cases where competition persists, they resort to content exclusivity,
coercing users to purchase their product alongside competitors' offerings.
Consequently, users find themselves utilizing these products for prolonged periods not due to their exceptional quality,
but rather because they perceive limited alternative options.
The subscription model may make sense when paying for a service,
but it doesn't align with current software development.
Paying subscription for developing and bug-fix of a product is simply paying for the privilege of using an incomplete version of a product.

In contrast, companies adopting a pay-for-enterprise-support model for open-source products,
such as Canonical and Red Hat, exhibit commendable practices.
Their primary emphasis lies on longevity.
If the software is functioning adequately, their tasks are straightforward,
eliminating the need to address the same issue repeatedly for each client.
Longevity serves as both their evidence and modus operandi.
They provide support for software that has already weathered numerous instabilities.
They employ different development stages, such as alpha, unstable, stable, and long-term releases.
These features can subsequently be passed on to other distributions with more robust objectives, such as REHL.

Although these companies may impose charges for bug fixes, their underlying offering revolves around selling stability and longevity (think Ubuntu Pro).
This approach is not driven solely by inherent benevolence but rather stems from a lack of alternatives.
They are unable to monopolize a product that can be cloned, forked, and utilized to initiate independent ventures.
Nor can they vend software that others can fork, enhance, and sell at higher prices or even distribute for free.
Their sole viable course of action entails creating a product that strikes a balance,
avoiding both excessive limitations that render it futile and excessive complexity that complicates support.

However, business is just one piece of the puzzle.

### FLOSS engineers prioritize quality over quantity.

As we discussed, most businesses prioritize product quality only until it reaches a level sufficient for selling.

This often leads to engineers being pushed and encouraged to develop faster,
sacrificing quality and stability when it hinders "beating the competition to market."
I'm sure I'm not alone in feeling dissatisfied with creating instant legacy products and leaving behind a trail of subpar,
useless software. It leaves no room for pride in one's work.

As a result, engineers who value quality find satisfaction in other avenues,
such as personal projects or contributing to libraries and tools they use themselves.

The dynamics of development in these situations differ.
Open-source software often lacks the same level of resources,
making maintainability a crucial concern.
Allowing technical debt to accumulate in a project one maintains can result in paying a hefty price, even in a short period.
The more users a project has,
the more the burden of technical debt becomes apparent—quite the opposite of the industry's "move broken things, fast" mentality.

Consequently, successful open-source products tend to have meticulous and uncompromising maintainers.

Another important aspect to consider is that open-source software greatly enhances one's resume.
Similar to a resume, open-source projects showcase an individual's best work.
They are like first dates, where you present yourself at your best.
Consequently, open-source projects motivate developers to create their finest code and documentation.

Furthermore, transparency is a vital aspect of open-source projects.
Engaging in dubious practices, such as intrusive telemetry, can agitate the surrounding community.

In summary, there are four main reasons:
1. The cost of maintainability
2. The positive impact on one's resume
3. Counteracting the lack of satisfaction caused by lower quality software in daily work
4. Embracing transparency


### FLOSS exhibits a greater degree of diversity.

When it comes to a biological ecosystem, its resilience stems from the diversity of its members.
Let's imagine a scenario involving a moth that feeds on maple tree branches.
In a jungle filled with maple trees, the moth can feast and reproduce endlessly.
However, there's a twist.

Around 10% of the maple trees have developed a variation of their membrane that is toxic to the moth, purely by chance.
Now, if the moth tries to feed on these trees, it has a 1 in 10 chance of being fatally poisoned.
If there were only a single moth, it would be the end of its lineage.
However, imagine a population of 100 moths, and 10% of them have accidentally developed immunity.
These "super moths" may be larger and more resistant to the trees,
but they are also more visible to predators like birds.
And so, the cycle continues.

The diversity of approaches within a biological ecosystem is crucial.
In the context of biological beings,
the exchange of random sets of genes through sexual reproduction likely emerged as a means to enhance resilience.
Microbes that prey on others, on the other hand, face a more challenging situation, as the result.

These advantageous mechanisms resulting from diversity are also present in the software ecosystem.

The needs and threats faced by a server differ from those faced by a German student's laptop.
While Linux is ubiquitous in the open-source desktop realm,
there are numerous slightly different Linux distributions available.
These variations encompass different themes,
preinstalled applications, package managers,
and even packaging architecture models.
Additionally, there are kernels compiled with different flags and versions.

Given this remarkable diversity,
it comes as little astonishment that Microsoft's ardent campaign during the 2000s against the comparably youthful,
less cohesive, and resource-limited Linux met with abysmal failure.
Strikingly, in a twist of events,
Microsoft has lately unveiled its very own Linux distribution and dedicated years to crafting the Windows Subsystem for Linux.

To the proprietary realm, an ecosystem characterized by the development,
redesign, and forking of diverse products, yielding a multitude of solutions, may appear inherently inefficient.
Yet, from the perspective of permaculture and permacomputing, such an ecosystem manifests as nothing short of utopia.

### FLOSS demonstrates a higher level of robustness.

FLOSS transcends being a mere generator of independent variations that begin anew each time.
It represents a system where progress builds upon existing foundations, with each subsequent layer amplifying the importance of the underlying ones.
Irrespective of how many stories above the ground one ascends, the ground level remains a paramount concern if its integrity is jeopardized.
Prominent examples of this phenomenon can be observed in projects like curl, the kernel, and OpenSSL.
Although these initiatives were initially initiated by individuals, they have evolved into integral components of numerous other undertakings.
The driving force compelling many individuals to contribute to these projects stems from the realization that the cost of abstaining from participation would be significantly greater.

However, it is important to recognize that this process is not always pleasant.
Consider the immense pressure on OpenSSL developers.
If they were to become overwhelmed and exhausted like many other open-source maintainers, the consequences could be significant.

Yet, when such challenges arise (and they do), we all become aware of them.
We sense the danger and collectively strive to find solutions.
This is in stark contrast to the situation when a proprietary software developer abandons a company.
Until a replacement is found, users are left unaware and vulnerable to potential security threats posed by malicious hackers.

Thanks to this collective effort and attention to robustness,
many foundational open-source software programs have remained the best tools for the job even after decades of use.

## Dear reader... 

Now, esteemed reader,
I trust you comprehend the rationale behind why individuals with a penchant for enduring solutions
find the realm of FLOSS far more fertile than its alternatives.

{{ discussion() }}