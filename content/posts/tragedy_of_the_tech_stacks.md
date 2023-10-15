+++
title = "The Tragedy of The Tech-Stacks"
author = ["Perma"]
date = 2023-08-11T12:38:00+03:30
tags = ["software", "programming"]
categories = ["opinion"]
draft = false
+++

## Intro {#intro}

Back in 1958, there was this thinker named <span class="person">Garrett Hardin</span> who kicked off his well-known piece titled "The Tragedy of the Commons" in the following way:

> At the end of a thoughtful article on the future of nuclear war, Weisner and York concluded that "Both sides of the arms race are ... confronted by the dillema of steadily increasing military power and steadily decreasing natonal security. It is our considered our professional judgment that this delimma has not professional technical solution. If the great powers continue to look for solutions in the area of science and technology only, the result will be to worsen the situation.

Then, <span class="person">Hardin</span> goes on to rattle the foundations by delving into a colossal issue - the challenge of population expansion. He breaks it down by saying that when you have a shared resource, and each individual aims to squeeze out the most benefit for themselves, the result is a harm inflicted upon everyone, even the very ones taking those actions.

Now, picture this famous analogy. Imagine a stretch of grassland, claimed by three farmers. Each of them brings their cow out to graze on it daily. Sounds reasonable, right? But then, one fortunate farmer's cow becomes pregnant. This stroke of luck leaves him with two cows, effectively doubling his profits. Observing this triumph, the other farmers follow suit, diving into a spree of buying and breeding cows, aiming to maximize their individual gains. However, this frenzy leads to a rampant grazing that leaves the grassland bare and barren. Ultimately, the once lush grass disappears, and the insatiable appetite of the voracious cows brings about their own starvation. In the end, all the farmers are left with no cows, their initial wealth transformed into a state even worse than before.

He coins it as the "tragedy of the commons." I prefer to see it as a powerful representation of what often dampens the enjoyment across the software terrain for every key player involved: the user, the developer, the <abbr title="Chief Executive Officer">CEO</abbr>, and the investor.

How meta!


## The Clever One, The Frustrated One and The Scared One {#the-clever-one-the-frustrated-one-and-the-scared-one}

Now, let's meet a familiar figure, the one we often encounter, the embodiment of many developers out there. We'll give her a name: Sarah. Sarah's eager to dive into a fresh technology - one that could potentially elevate her current position. So, how does she tackle this? She begins by exploring a domain, and within that, she sets her sights on a specific technology. Let's designate this domain as something imaginary, to prevent any inadvertent offense. How about we refer to it as "Front-End Development"?

For Front-End Sarah finds out a few different contenders in the field. She asks herself, what could the industry be thirsty for? The naive answer she arrives at, is "the most reliable one, the one that is the pleasure to develop and the one that has the most advantages". Oh, Sarah, you impractical idealistic perfectionist, you!

Now, delving into the realm of Front-End, Sarah stumbles upon a handful of potential contenders. She ponders, what might the industry truly crave? Her initial, somewhat naive response is, "The most dependable option, the one that brings joy to the development process, and the one that boasts numerous advantages." Oh Sarah, you, impractical, idealistic, perfectionist you!

Armed with these benchmarks, she opts for the <span class="language">Elm</span> language (yet another mythical being). She proceeds to dive into <span class="language">Elm</span>, driven by her enthusiasm. However, curiosity gets the better of her, and she sneakily glances at the job listings on LinkedIn. To her astonishment, she discovers a mere trio of job opportunities for <span class="language">Elm</span>. This baffles her, leading her to question the accuracy of her initial language assessment.

Seeking insight, she turns to Tom, an exceptional <abbr title="Chief Technology Officer">CTO</abbr> she's acquainted with, to discuss whether <span class="language">Elm</span> lives up to its hype. Much to Sarah's astonishment, Tom echoes her initial convictions regarding <span class="language">Elm</span>. He affirms that, indeed, <span class="language">Elm</span> proves to be an exceptional language, boasting enduring dependability, a well-established ecosystem, and a delightful development journey.

Sarah, now even more puzzled than before, directs her confusion towards Tom, questioning whether he's in the process of recruiting <span class="language">Elm</span> developers. Once again, Tom's response is resolute: "Absolutely not! Where could I possibly locate a pool of <span class="language">Elm</span>-savvy developers? However, we're actively seeking out <span class="language">JavaScript</span> experts!" (once more, a language name sufficiently distanced from any existing real-world instances).

After a brief moment of contemplation, Sarah bursts out, <q cite="sarah"> What about me?</q>

Tom responds with a shake of his head, stating, "Oh, that wouldn't work. You see, for any given application, we require a team of 20 individuals to consistently handle maintenance and bug fixes. Where on earth would we come across 20 <span class="language">Elm</span> developers?"

"Well, shouldn't <span class="language">Elm</span> apps theoretically require significantly less maintenance, given the multitude of bugs that are caught during the initial development stages?" Sarah counters silently within her mind. An idea begins to form, one she opts to keep to herself, "Ah, so maintaining a delicate codebase might indicate a higher demand for fresh <span class="language">JavaScript</span> developers - implying enhanced job security!"

Feeling rather clever, she decides to validate her hunch by perusing the (imaginary) yellow pages, named Glassdoor. And lo and behold, an endless scroll unveils a plethora of distinct job listings, all centered around <span class="language">JavaScript</span>.

Well, Sarah learns <span class="language">JavaScript</span> and all her beliefs gets validated, she becomes a very wealthy engineer, with a great job security, with each company she enters trying to keep her, year-after-yer, while other companies trying to persuade her by higher and higher offers. Or at least that was the boring version of this post that did not start with the word "tragedy".

Instead, she uncovers that her counterparts, much like herself, had also been quite _clever_. A multitude of newcomers gravitated towards the language flaunting the highest job listings. Each job opening faced a surplus of around a hundred contenders. The "victor," so to speak, emerges as the individual boasting the most qualifications and the most modest salary expectation. Or should we even label them as victors, considering that the instant they dare to dream a little bigger, a fresh job listing crops up, promptly displacing them with the next eager contender.

Tom, our trusty <abbr title="Chief Technology Officer">CTO</abbr>, worn out from the cycle of on-boarding one low-budget, novice developer after another, vents his frustrations to the <abbr title="Chief Executive Officer">CEO</abbr>. The <abbr title="Chief Executive Officer">CEO</abbr> engages in discussions with the investors, who share the same dissatisfaction due to their profits being eroded by an inefficient workforce. They call upon the <abbr title="Chief Executive Officer">CEO</abbr> to devise a remedy for this predicament.

The <abbr title="Chief Executive Officer">CEO</abbr> returns with a strategy to shift from <span class="language">JavaScript</span> to <span class="language">Elm</span> technology. The investors, content with the proposal, take a brief pause to deliberate. A few days later, they rejoin the conversation, expressing a notable apprehension. "<span class="language">Elm</span> is practically unheard of! None of our rivals employ this language. That's a substantial gamble we're not prepared to take!"

Arash, the <abbr title="Chief Executive Officer">CEO</abbr>, <abbr title="Chief Technology Officer">CTO</abbr>, <abbr title="Chief Financial Officer">CFO</abbr>, Product Manager, and the visionary founder of a fledgling startup, confronts the very same imaginative quandary of selecting a technology stack. Given the inherent high-stakes nature of startups, Arash adopts a prudent approach by examining the practices of more established corporations, such as those overseen by individuals like Tom in his role as <abbr title="Chief Technology Officer">CTO</abbr>, in order to identify a tried-and-true trajectory.


## The Lose-Lose-Lose situation {#the-lose-lose-lose-situation}

At every juncture, every individual optimized their decisions for personal gain. At each instance, a superior option was presented, and they acknowledged the benefits it offered. Nevertheless, they settled for the inferior alternative (for the sake of avoiding any unnecessary debate, let's refrain from mentioning that the hypothetical lesser choice was <span class="language">JavaScript</span>, naturally). As a result, each person finds themselves in a less advantageous position than if they had collectively embraced the superior alternative. This impact ripples beyond individuals, extending to the entire ecosystem, hindered by the precarious edifice of abstractions left behind by the swiftly growing number of predecessors.

So, why did they all fall short of enhancing their own lives and the lives of others? Was it the technology's flaw? Or did the ecosystem falter? You're astute enough to deduce the answer; after all, you had the wit to discern the languages I implicitly referred to in my hypothetical scenarios.


## The Solution {#the-solution}

I must admit, I'm uncertain. The nuclear arsenal continues to expand, even though the era of the Cold War has long passed. Thankfully, our world hasn't been ravaged by nuclear conflict. Rather, it's the interplay of mutually assured destruction and the realization by the leaders of those two nations that not embracing an alternative risk could lead to dire consequences. This, at least, has placed us in a relatively improved state.

Simultaneously, we find ourselves grappling with <span class="person">Garrett Hardin</span>'s preoccupation -- the persistent challenges of overpopulation and looming environmental catastrophes. Evidently, the far-reaching peril of not embracing an alternative is of such extended duration that it transcends the immediate concerns of the very generation opting against alternatives. The burden of their choices is instead borne by their descendants: <q cite="Current Generation">Fuck those brats.</q>

In the world of software, the tempo is notably faster, the stakes less dire compared to earlier circumstances, and the individuals engaged are often more honest than politicians and notably smarter than the average voter.

However, the remedy doesn't entail adhering to an oddly precise series
of ritualistic maneuvers. It's a more daunting challenge. Just as
<span class="person">Garrett Hardin</span> titled his article, the solution remains much the same:

> The population problem has no technical solution; it requires a fundamental extension of in morality.


## Dear Reader {#dear-reader}

I know! The gastly claim of <q cite="me">to improve developer experience we first should grow an ethical sense</q>, seems absurd. Yet I see no specifically little amount of gradual change, where at least some one on the whole chain did not bite the bullet and risk it.
