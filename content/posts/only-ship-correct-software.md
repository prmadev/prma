+++
title = "Only Ship Correct Software"
author = ["Perma"]
draft = true
slug = "only-ship-correct-software"
+++

There is a famous quote in software development scene.

> Make it work, Make it right, Make it fast.
> -- {{< pers `Kent Beck` >}}

I'm not sure what the original author has meant by saying this.
I am, however, worried that some software engineers take this to be: "Ship what works. Ship what is right. Ship what is fast."
If at each step we ship a product without disclosing the stage we are in, we might be doing a fraudulent activity.

In my job, usually asks us to give them an estimate. Giving estimates is hard process. I usually rely on doubling my estimate of what I initially consider. However, in an startup scene, such a huge buffer is not acceptable. At this point, I usually declare my initial estimates with disclaimers attached. Not surprisingly, I cannot deliver on the latter. The most predictable factors are _unknown unknowns_, or unaccounted problems.
This means that on regular basis, I am thinking of ways to reduce the amount and the effect of these uknown unknown.

One strategy that I have seen being internalize is to ship something, anything rather the nothing.

Recently, I have been working on a service that gives the admins of our online service different privilaged statistics. This means a lot queries. One such query is a paginated list of all `orders`. Each `order` is linked to a row on `prices` prices table.
As part of the data, I should provide a sum total of a field in the prices table, only for orders that meet the filters based on their connected row on orders.
Now, using the current {{<abbr `ORM`>}} we are using on our application, I thought making such an aggregate would be an easy task. However, we ended up figuring out that our {{<abbr `ORM`>}} cannot handle this edge case. And we have to write manual queries for such data. All fine and good. But time it took for two engineers to figure out the bug and come up with solutions was two days.

Now reflecting on this event, I was looking for ways that we could have accounted for, and mitigated such delay. One solution would have been to just deliver in time, only just adding the total of only one page of orders. Not all of the orders.
The product manager would later on notice, and add a bug report. Speaking out of experience, fixing a bug comes with less time pressure than delaying the deliverence of the feature. And I would be on-time, delivering imperfect features.

Why is that? Simply, bugs are accounted for. But delay on the {{<abbr `ETA`>}} is not something that someone in managerial position is comforatble with, even when disclaimers are given.

You can see why having a buggy featureful product is more desireable than a less buggy, but delayed product. In the first case, you still have a least of orders. There are some information there that is not correct. But no worries, we fix them later on.

But a delayed feature means that the whole list of orders is not delivered, or at least part of it is not delivered. We can ship only the working parts of the order, but in such case, the client application also should only expect partial information.

Yet, even though it might be good for bussiness, we are selling users a broken product, knowingly. Which might fall under stealing and fraud, and at least, dishonesty.

Yet, agile manifesto's basterd take has made us believe that it is alright.
