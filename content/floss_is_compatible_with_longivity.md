+++
title = "FLOSS and Longevity sitting in a tree"
description = "Yes, FLOSS is more friendly with making longevity a priority"   
date = 2023-06-14
draft = false
slug = "floss_is_friendly_towards_longivity"
insert_anchor_links = "heading"

[taxonomies]
categories = ["opinion"]
tags = ["permaculture", "longevity", "FLOSS"]
+++

Free/Libre and Open Source Software (FlOSS) is a captivating realm within software development.
What makes FOSS particularly intriguing is its deviation from conventional business goals,
leading to planned longevity and a distinct approach to sustainability.
Let us delve into the unique qualities of FOSS and the factors that contribute to its better suitability for longevity.

## Reasons

### FLOSS business model is better served by longevity  

The common business models are better suited for short-term goals.
There are two major approaches: selling or renting.

Most small to mid-sized software companies are primarily focused on selling products.
The longevity of these products is an afterthought, a necessity rather than the main objective.
It serves to establish consumer trust.
Once the initial excitement of selling a new and shiny product fades, the company moves on to the next one.
The success of selling these new products relies on users' fear of missing out and the perceived loss of functionality in the previous product.
This often leads to the inclusion of unnecessary features, planned obsolescence, and resistance against the right to repair.
Longevity is disregarded as endless cycles of replacing one product with another take precedence.

On the other hand, large companies prioritize renting software.
Instead of owning the software, users pay subscription fees for continued use.
One might assume that these companies would prioritize stability in order to retain their subscribers.
However, in practice, they often choose a different path.
They rely on monopolistic practices, such as acquiring competitors or launching massive marketing campaigns to crush newcomers.
When they fail to eliminate competition, they resort to exclusivity of content,
forcing users to purchase their product along with their competitors'.
Users end up using these products for extended periods not because of their superior quality,
but because they feel they have no other viable options.

The subscription model may make sense when paying for a service,
but it doesn't align with current software development.
Paying subscription for developing and bug-fix of a product is simply paying for the privilege of using an incomplete version of a product.

On the other hand, companies that employ a pay-for-enterprise-support model for open-source products,
like Canonical and Red Hat, tend to have more responsible practices.
Longevity is their main focus.
If the software is not broken, their work is straightforward; they don't need to fix the same issue multiple times for each individual client.
Longevity is both their proof and their means of operation.
They support software that has already withstood numerous instabilities.
They use various stages of development,
such as alpha, unstable, stable, and long-term releases.
These features may then be passed on to other distributions with more resilient goals, such as REHL.

While they may charge for bug fixes,
they are essentially selling stability and longevity (think Ubuntu Pro).
This is not merely because these companies are inherently kind but because they have no other option.
They cannot monopolize a product that anyone can clone, fork, learn from, and start a business supporting.
They cannot sell software that others can fork, enhance, and sell at a higher price or for free.
Their only options are to create a product that is neither too limited to be useless nor too large to be difficult to support.

However, business is just one piece of the puzzle.

### FLOSS engineers are more interested in quality than quantity

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


### FLOSS is more diverse
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

Given this diversity,
it's no surprise that Microsoft's extensive campaign in the 2000s against the relatively young,
less organized, and less resourceful Linux failed so miserably.
In fact, Microsoft has recently released its own Linux distribution and has spent years developing the Windows Subsystem for Linux.

An ecosystem where people develop, redesign, and fork different products,
introducing various solutions, may seem inefficient to the proprietary scene.
However, from a permaculture and permacomputing standpoint, such an ecosystem is utopia.

### FLOSS is more robust

FLOSS  is not merely a generator of variations that start from scratch every time.
It is a system where things are built upon one another,
and as each layer is added,
the lower layers become increasingly critical.
No matter how many stories above ground you are, the ground level becomes a significant concern if something threatens it.
Notable examples of this phenomenon include curl, the kernel, and OpenSSL.
While these projects were initially started by individuals,
they have become integral parts of numerous other projects.
Many people are driven to contribute to these projects because the cost of not doing so would be much higher.

However, it is important to recognize that this process is not always pleasant.
Consider the immense pressure on OpenSSL developers.
If they were to become overwhelmed and exhausted like many other open-source maintainers, the consequences could be significant.

Yet, when such challenges arise (and they do), we all become aware of them.
We sense the danger and collectively strive to find solutions.
This is in stark contrast to the situation when a proprietary software developer abandons a company.
Until a replacement is found, users are left unaware and vulnerable to potential security threats posed by malicious hackers.

Thanks to this collective effort and attention to robustness,
many foundational open-source software programs have remained the best tools for the job even after decades of use.

## Fin 

Now, dear reader,
I hope you grasp why someone with an interest in enduring solutions finds the FLOSS world far more fertile than the alternatives.