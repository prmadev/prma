+++
title = "The Tragedy of The Tech-Stacks"
description = "In this article, I delve into the reasons behind the stagnation of our tech stacks and explain how this issue isn't isolated; instead, we encounter a similar category of challenges akin to those posed by the nuclear arms race and climate change."
date = 2023-08-11
draft = false
slug = "the-tragedy-of-the-tech-stacks"
insert_anchor_links = "heading"

[taxonomies]
categories = ["opinion"]
tags  = ["software"]

[extra]
+++

Back in 1958, there was this thinker named Garrett Hardin who kicked off his well-known piece titled "The Tragedy of the Commons" in the following way: 
> At the end of a thoughtful article on the future of nuclear war, Weisner and York concluded that "Both sides of the arms race are ... confronted by the dillema of steadily increasing military power and steadily decreasing natonal security. It is our considered our professional judgment that this delimma has not professional technical solution. If the great powers continue to look for solutions in the area of science and technology only, the result will be to worsen the situation."

Then, Hardin goes on to rattle the foundations by delving into a colossal issue – the challenge of population expansion. He breaks it down by saying that when you have a shared resource, and each individual aims to squeeze out the most benefit for themselves, the result is a harm inflicted upon everyone, even the very ones taking those actions.


Now, picture this famous analogy. Imagine a stretch of grassland, claimed by three farmers. Each of them brings their cow out to graze on it daily. Sounds reasonable, right? But then, one fortunate farmer's cow becomes pregnant. This stroke of luck leaves him with two cows, effectively doubling his profits. Observing this triumph, the other farmers follow suit, diving into a spree of buying and breeding cows, aiming to maximize their individual gains. However, this frenzy leads to a rampant grazing that leaves the grassland bare and barren. Ultimately, the once lush grass disappears, and the insatiable appetite of the voracious cows brings about their own starvation. In the end, all the farmers are left with no cows, their initial wealth transformed into a state even worse than before.

He coins it as the "tragedy of the commons." I prefer to see it as a powerful representation of what often dampens the enjoyment across the software terrain for every key player involved: the user, the developer, the CEO, and the investor.

How meta!


## The Clever One, The Frustrated One and The Scared One 

Now, let's meet a familiar figure, the one we often encounter, the embodiment of many developers out there. We'll give her a name: Sarah. Sarah's eager to dive into a fresh technology – one that could potentially elevate her current position. So, how does she tackle this? She begins by exploring a domain, and within that, she sets her sights on a specific technology. Let's designate this domain as something imaginary, to prevent any inadvertent offense. How about we refer to it as "front-end development"?

For fron-end Sarah finds out a few different contenders in the field. She asks herself, what could the industry be thirsty for? The naive answer she arrives at, is "the most reliable one, the one that is the pleasure to develop and the one that has the most advantages". Oh, Sarah, you impractical idealistic perfectionist, you! 

Now, delving into the realm of front-end, Sarah stumbles upon a handful of potential contenders. She ponders, what might the industry truly crave? Her initial, somewhat naive response is, "The most dependable option, the one that brings joy to the development process, and the one that boasts numerous advantages." Oh Sarah, you, impractical, idealistic, perfectionist you!

Armed with these benchmarks, she opts for the Elm language (yet another mythical being). She proceeds to dive into Elm, driven by her enthusiasm. However, curiosity gets the better of her, and she sneakily glances at the job listings on LinkedIn. To her astonishment, she discovers a mere trio of job opportunities for Elm. This baffles her, leading her to question the accuracy of her initial language assessment.

Seeking insight, she turns to Tom, an exceptional CTO she's acquainted with, to discuss whether Elm lives up to its hype. Much to Sarah's astonishment, Tom echoes her initial convictions regarding Elm. He affirms that, indeed, Elm proves to be an exceptional language, boasting enduring dependability, a well-established ecosystem, and a delightful development journey.


Sarah, now even more puzzled than before, directs her confusion towards Tom, questioning whether he's in the process of recruiting Elm developers. Once again, Tom's response is resolute: "Absolutely not! Where could I possibly locate a pool of Elm-savvy developers? However, we're actively seeking out JavaScript experts!" (once more, a language name sufficiently distanced from any existing real-world instances).

After a brief moment of contemplation, Sarah bursts out, "Well, what about me?"


Tom responds with a shake of his head, stating, "Oh, that wouldn't work. You see, for any given application, we require a team of 20 individuals to consistently handle maintenance and bug fixes. Where on earth would we come across 20 Elm developers?"

"Well, shouldn't Elm apps theoretically require significantly less maintenance, given the multitude of bugs that are caught during the initial development stages?" Sarah counters silently within her mind. An idea begins to form, one she opts to keep to herself, "Ah, so maintaining a delicate codebase might indicate a higher demand for fresh JavaScript developers – implying enhanced job security!"

Feeling rather clever, she decides to validate her hunch by perusing the (imaginary) yellow pages, named Glassdoor. And lo and behold, an endless scroll unveils a plethora of distinct job listings, all centered around JavaScript.


Well, Sarah learns javascript and all her beliefs gets validated, she becomes a very wealthy engineer, with a great job security, with each company she enters trying to keep her, year-after-yer, while other companies trying to persuade her by higher and higher offers. Or at least that was the boring version of this post that did not start with the word "tragedy". 

Instead, she uncovers that her counterparts, much like herself, had also been quite *clever*. A multitude of newcomers gravitated towards the language flaunting the highest job listings. Each job opening faced a surplus of around a hundred contenders. The "victor," so to speak, emerges as the individual boasting the most qualifications and the most modest salary expectation. Or should we even label them as victors, considering that the instant they dare to dream a little bigger, a fresh job listing crops up, promptly displacing them with the next eager contender.

Tom, our trusty CTO, worn out from the cycle of on-boarding one low-budget, novice developer after another, vents his frustrations to the CEO. The CEO engages in discussions with the investors, who share the same dissatisfaction due to their profits being eroded by an inefficient workforce. They call upon the CEO to devise a remedy for this predicament.

The CEO returns with a strategy to shift from JavaScript to Elm technology. The investors, content with the proposal, take a brief pause to deliberate. A few days later, they rejoin the conversation, expressing a notable apprehension. "Elm is practically unheard of! None of our rivals employ this language. That's a substantial gamble we're not prepared to take!"


Arash, the CEO, CTO, CFO, Product Manager, and the visionary founder of a fledgling startup, confronts the very same imaginative quandary of selecting a technology stack.
Given the inherent high-stakes nature of startups, Arash adopts a prudent approach by examining the practices of more established corporations, such as those overseen by individuals like Tom in his role as CTO, in order to identify a tried-and-true trajectory.

## The Lose-Lose-Lose situation

At every juncture, every individual optimized their decisions for personal gain. At each instance, a superior option was presented, and they acknowledged the benefits it offered. Nevertheless, they settled for the inferior alternative (for the sake of avoiding any unnecessary debate, let's refrain from mentioning that the hypothetical lesser choice was JavaScript, naturally). As a result, each person finds themselves in a less advantageous position than if they had collectively embraced the superior alternative. This impact ripples beyond individuals, extending to the entire ecosystem, hindered by the precarious edifice of abstractions left behind by the swiftly growing number of predecessors.

So, why did they all fall short of enhancing their own lives and the lives of others? Was it the technology's flaw? Or did the ecosystem falter? You're astute enough to deduce the answer; after all, you had the wit to discern the languages I implicitly referred to in my hypothetical scenarios.

## The Solution 

I must admit, I'm uncertain. The nuclear arsenal continues to expand, even though the era of the Cold War has long passed. Thankfully, our world hasn't been ravaged by nuclear conflict. Rather, it's the interplay of mutually assured destruction and the realization by the leaders of those two nations that not embracing an alternative risk could lead to dire consequences. This, at least, has placed us in a relatively improved state.

Simultaneously, we find ourselves grappling with Garrett Hardin's preoccupation – the persistent challenges of overpopulation and looming environmental catastrophes. Evidently, the far-reaching peril of not embracing an alternative is of such extended duration that it transcends the immediate concerns of the very generation opting against alternatives. The burden of their choices is instead borne by their descendants: "Fuck those brats."

In the world of software, the tempo is notably faster, the stakes less dire compared to earlier circumstances, and the individuals engaged are often more honest than politicians and notably smarter than the average voter.

However, the remedy doesn't entail adhering to an oddly precise series of ritualistic maneuvers. It's a more daunting challenge. Just as Garrett Hardin titled his article, the solution remains much the same:
> The population problem has no technical solution; it requires a fundamental extension of in morality.



# Dear Readers...

I know! The gastly claim of "to improve developer experience we first should grow an ethical sense", seems absurd. 
Yet I see no specifically little amount of gradual change, where at least some one on the whole chain did not bite the bullet and risk it. 


{{ discussion() }}

