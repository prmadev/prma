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

Free and Open-Source Software (FOSS) is a captivating realm within software development.
What makes FOSS particularly intriguing is its deviation from conventional business goals,
leading to planned longevity and a distinct approach to sustainability.
Let us delve into the unique qualities of FOSS and the factors that contribute to its better suitability for longevity.

## Reasons

### FLOSS business model is better served by longevity  

The common businness models are better served in short terms. 

There are two major approaches, selling, or renting.

Most small to mid-sized software companies, are driven by selling products.
The longivity of those products are an after-thought, a nessecity, not the main goal,
something that is there to gain the trust of consumer.
Once the sell of the new and shiney product has lost its momentum, the next and the next products come.
Selling the new shiney products are reliant on the users' fear-of-missing-out and the loss of functionality of the previous product. 
There comes bloat of useless features, the famous planned obsolescence and resistence against the right to repair.
Longivity is out, endless cycles of replacing trash with trash is in. 

Huge-sized companies, are driven by renting software. Software that you don't own, but you pay subscription fees for continued use of them.
At this point you might think that they might be interested stability.
That they need to keep their subscribers and therefore they try to make an stable product. 
In practice, they have chose to go the other route.
They rely on monopoly (think adobe and autodesk, or microsoft office).
Buying their competitors or massive marketing campains to crush the newcommers.
and when they cannot beat them, they rely on exclusivity of content (think spotify and netflix),
forcing you to purchase them and their competitors alike any ways. 
You end-up using their products for long periods, not because of their product's great quality. But because you simply don't have any other choice.

Subscription model may make sense when you are paying for a service.
And developing the product is not a service. It just is paying for the privilage of using an incomplete product.


On the other hand, companies that are using a pay-for-enterprise-support of open source products (think canonical and redhat) are better behaved.
The longevity is their bread and butter.
If the software is not-broken, their work is cut-out for them.
They don't have to fix more things for each indivdual client.
Longevity is also their proof. They support a software that has already aged and passed the many unstabilities.
Longevity is also their means.  they use many and many different stages of development, alpha, unstable, stable, long-term release.
And then they may pass those features to another distro with more resilient goals. Think REHL.

Sure they may ask for money for bugs fixed, but they are literally selling stability and longivity (think ubuntu pro).

That is not just because these companies are inherently kind. They have no other choice.
They cannot monopolize a product that anyone can make, fork, learn and start a business supporting it. 
They cannot sell the software that another person can fork and add stability to it and sell it for higher price, or free-of-chargeprice, or free-of-charge!
Their only options are making a product that is not too small for it to be useless, or too big that they have a harder time supporting it. 

But business is just only a part of the equasion.

### FLOSS engineers are more interested in quality than quantity

As we have discussed, most common businesses are interested only in the product quality, until it is good enough to sell.

Which means that engineers are pushed and are encoraged to develope faster and
sacrifice quality and stability when it is a hinderence to "beating the competition to market".   
I'm sure I'm not alone in the lack of satisfaction of making instant legacy products.
In leaving a legacy of trash dead software behind me after myself. Of leaving no room for being proud of my work. 

That, leaves engineers who care about quality to find satisfaction in other places.
Like personal projects or contributing to the libraries and things that they are themselves, users of.

The scales of the developement in these sitautions are different. 
An open-source software usually lack latter resources, as such, maintainability is a concern. 
If you allow accumulation of technical debt in an project that you are a maintainer of,
you will pay for it ten folds in a very short while.
The more users you have, the technical debt will bite your ass even more.
The complete opposite of industry's "moving broken stuff, fast" moto.

As such you can see that more successful open-source products end up having harsher and more pedantic maintainers. 

Another important consideration is that open-source softwares are generally a very well recieved item in your resume. 
And as such, just like your resume, they tend to be very polished. They are your first dates. They are where you show case yourself at your best.
Because of that, you end creating your best code and their documentations, in the form of open-source.  

Another important point is that you are transparent, doing unsavory work can make the community around you, agitated. Think intrusive telemetry.  

To sum up there are four reasons:
1. Maintainability cost 
2. Resume 
3. Countering the lack of satisfaction of lower quality software at your daily job
4. And transparency



### FLOSS is more diverse

When it comes to an biologocial ecosystem, the ecosystem is resilient because of the diversity of its members. 
Imagine a moth that eats the branches of maple tree.
If it enters a jungle full of maple tree, it can feast and have endless offsprings.
The moth can finish up all maple trees. Except that some 10% of the trees have decided to go another route.
They developed a variation of their membrane that is toxic to the moth.
They didn't mean to, it just happened as a chance.
Now the moth can try, but it will have a 1 in 10 chance of getting fatally poisoned. 
If it was a one singular moth, that would be the end of it, but imagine 100 moths, 10% have accidentally developed immunity.
Are they super moths? Well, they are bigger and more immune to trees, but they are bigger and more visible to the birds.
This story continues. 

The diversity of approaches in a biological ecosystem matters.
Sex as a means of exchanging random sets of genes,
is probably the result of massive resiliency that biological beings gain as a result of having biologically differnet individuals.
Predatory Microbes are worse off. 

The mechanisms that causes these advantages for a diverse biological ecosystem, are similarly present in the software ecosystem as well.

The needs and threats of a server differ from the ones that a german studet's laptop faces.
While linux seems ubiquotous in the open source desktop game, there are tons of slightly different linux distributions are out there. 
from the different themes, to different preinstalled apps to different package managers to even different models of packaging architecture,
to kernels compiled with different flags and versions.

All this leaves us with no wonder why Microsoft's vast campaign in the 2000s against
the much younger, much less organized and much less resourceful Linux,
failed so miserably that Microsoft itself recently distributed itsown distribution of Linux and spent years developing Windows Subsystem for Linux.  

An ecosystem of people that develop, redevelop and fork from different product
and introduce different solutions are a waste of time for the proprietary scene.
From a the permaculture and permacomputing standpoint though, such an ecosystem is the utopia.


### FLOSS is more robust

FLOSS is also not just a variation generator that each time starts from scratch.
Things are built on top of each other, and with the each layer, the lower layers become more and more critical.
It doesn't matter how many stories you have a distance from, you get really worried about the ground level if something threathens it.
Famously things like curl the kernel and openssl are such examples, that have been started by a person,
but then became part of so many projects that many people just want to contribute to these projects,
because it would be much more expensive not to.

This ofcourse is not always pleasent, think of the pressure that is on the openssl developers.
Imagine they one day get fed up, like the way that many other open-source maintainers have been left overwhelmed, exhausted and broken. 

Yet when such things happen (and they happen), we all hear them, we all sense the danger, and we all try our best to unfuck ourselves.
This is not the case when a proprietary software developer abandons the company. Until some replacement fills the previous guys shoes, 
the users are left unaware, at the mercy of the next black-hat hacker. 

Because of this, many of the foundational open-source softwares has beome so robust that even after decades,
they are still the best tools for the job.

## Fin 

Now dear reader I hope you understand why, someone with interst in permanent things, find the FLOSS world much more ripe than the alternative.
