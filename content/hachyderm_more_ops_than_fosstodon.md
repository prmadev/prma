+++
title = "Hachyderm's community is more ops-oriented than Fosstodon's"
description = "I explore using some data, the ways that Hachyderm and Fosstodon may be different, community-wise."
date = 2022-11-25
draft = false
slug = "hashyderm_more_ops_than_fosstodon"
insert_anchor_links = "heading"

[taxonomies]
categories = ["thoughts"]
tags = ["fediverse"]

+++

Ever since I have moved to the mastodon platform after "the great twitter migration". I was curious about two main instances. 
One being [Fosstodon](https://Fosstodon.org), an instance oriented around Free and Open-Source Software(FOSS), another being [Hachyderm](https://hachyderm.io), an instance that introduces itself as "social media for technical professionals".

Eventualy, I decided to go with Fosstodon, as I liked what I was seeing there more.
But I couldn't put my finger on what it was that I liked more about Fosstodon, even though many of my favorite people resided on Hachyderm, the instance owner of the Hachyderm herself, being one examples.  

## Initial Theories

Initially I thought Hachyderm was more business-oriented. It seemed that people on Hachyderm were more interested about talking about broader technologies like kubernetes and docker, while at the same time there was a lot of talk about codes and programming practices.
I thought maybe all the programmers on Hachyderm are working with more proprietory and enterprise solutions and as such they were less likely to share details of their daily programming.
But that theory didn't hold true, as there was as much toots in my timeline on Fosstodon about bussiness related stuff as there was on Hachyderm.

Until last night that I realized that maybe what I was seeing was the difference of ideas between Operations interested people vs people involved in developing software. And as a backend-developer, I could see more relevant content from the development side.  

So I set to examine my assumptions.
Like a good [Baysian](https://www.lesswrong.com/tag/bayes-theorem).

## APIs, Searches and Methods

to start with, I looked into different websites that could help me search per-instance results.
That way I could search differnet keywords in each instance and compare the results.  
However I could not find such a thing. Every search engine I tried lacked the ability of filtering by instance.


After that, I looked into the Mastodon APIs myself.  
Long-story short, I found [timeline API](https://docs.joinmastodon.org/methods/timelines/#tag) to be particularly useful: 


```sh
GET /api/v1/timelines/tag/:hashtag HTTP/1.1
```

Using this I could get a list of toots in ``json`` format that had specific hashtags.
And then filter those results to only get the actual url.
I used ``curl`` to make API requests and ``jq`` to filter-out the keys I was not interested in.    

```bash
curl 'https://hachyderm.io/api/v1/timelines/tag/container?&limit=1000' | jq '.[].url' >> hash.json
```

And then, I had to filter out results that were not from Hachyderm or Fosstodon. And Sort each
For filtering ``awk`` was perfect, and then for sorting the ``sort`` command is good enough. 

```bash
awk '/fosstodon|hachyderm/ {print $0}' hash.json | sort > res-ops  
```

I just had to come up with a few keywords that I could associate more with operations and a few for development. 

> As you may have noticed, my methodoloy is hardly scientific and and extremly relient on subjective definitions.
> My goal was to find a good-enough-for-my-decision result. Not anything more. 

I ended up with these words on differnt sides:

|operations|development|
|---|---|
|operations|development|
|kubernetes|refactor|
|montioring|debugging|
|docker|greenfield|
|container|framework|
|terraform|compiler|
|deploy|interpreter|
|baremetal|testing|
|vm|ide|
|admin|library|
|server|designpatterns|
|_|lsp|
|_|nodejs|
|_|rust|
|_|auth|

The differnece in their numbers are not important to us, only the proportions of the results of each may be relevant.

The eventual code looks like this: 

```bash

#! /usr/bin/env bash

# this part gives us a file with results of the OPs-related keywords
curl 'https://hachyderm.io/api/v1/timelines/tag/kubernetes?&limit=1000' | jq '.[].url' > hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/docker?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/container?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/operations?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/terraform?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/deploy?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/baremetal?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/vm?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/monitoring?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/admin?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/server?&limit=1000' | jq '.[].url' >> hash.json &&
awk '/fosstodon|hachyderm/ {print $0}' hash.json | sort > res-ops && 
rm hash.json &&

# this part gives us a file with results of the Devs-related keywords
curl 'https://hachyderm.io/api/v1/timelines/tag/develop?&limit=1000' | jq '.[].url' > hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/refactor?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/greenfield?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/framework?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/compiler?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/interpreter?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/testing?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/ide?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/library?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/development?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/designpatterns?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/lsp?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/nodejs?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/rust?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/auth?&limit=1000' | jq '.[].url' >> hash.json &&
curl 'https://hachyderm.io/api/v1/timelines/tag/debuggin?&limit=1000' | jq '.[].url' >> hash.json &&
awk '/fosstodon|hachyderm/ {print $0}' hash.json | sort > res-develop && 
rm hash.json

```  

## The Result 

On the ops query we have ``32`` results from Fosstodon and ``44`` results from Hachyderm.   

```
Fosstodon: ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
Hachyderm: ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
```

So far Hachyderm seems to have more activity with OPs related hashtags.
On the other hand it could be that people on Hachyderm are generally more talkative than Fosstodon about every part of the stack.
So let's hold development as the control.   

On the development queries we have ``49`` results from Fosstodon and ``24`` results from Hachyderm.   

```
Fosstodon: ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
Hachyderm: ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
```

That seems like an staggering differece.

## Decision

I have no idea why this difference is so harsh. But for my purposes I have enough information to update my beliefs to make a decision for now that satisfies my accuracy-requirements for this decision.


