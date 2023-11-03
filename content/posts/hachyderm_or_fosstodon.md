+++
title = "Hachyderm or Fosstodon"
author = ["Perma"]
date = 2022-11-25T22:17:00+03:30
tags = ["opinion", "fediverse"]
categories = ["long"]
draft = false
+++

## Intro {#intro}

Ever since I have moved to the mastodon platform after _the great twitter migration_. I was curious about two main instances.
One being [Fosstodon](https://fosstodon.org), an instance oriented around  {{<abbr `FOSS`>}}, another being [Hachyderm](https://hachyderm.io), an instance that introduces itself as social media for technical professionals.

Eventualy, I decided to go with Fosstodon, as I liked what I was seeing there more.
But I couldn't put my finger on what it was that I liked more about Fosstodon, even though many of my favorite people resided on Hachyderm, the instance owner of the Hachyderm herself, being one examples.


## Initial Theories {#initial-theories}

Initially I thought Hachyderm was more business-oriented. It seemed that people on Hachyderm were more interested about talking about broader technologies like _kubernetes_ and _docker_, while at the same time there was a lot of talk about codes and _programming practices_.

I thought maybe all the programmers on Hachyderm are working with more proprietory and enterprise solutions and as such they were less likely to share details of their daily programming.

But that theory didn't hold true, as there was as much toots in my timeline on Fosstodon about bussiness related stuff as there was on Hachyderm.

Until last night that I realized that maybe what I was seeing was the difference of ideas between operations interested people vs people involved in developing software. And as a backend-developer, I could see more relevant content from the development side.

So I set to examine my assumptions.
Like a good [Bayesian](https://www.lesswrong.com/tag/bayes-theorem).


## APIs, Searches and Methods {#apis-searches-and-methods}

to start with, I looked into different websites that could help me search per-instance results.
That way I could search differnet keywords in each instance and compare the results.
However I could not find such a thing. Every search engine I tried lacked the ability of filtering by instance.

After that, I looked into the Mastodon {{<abbr `API`>}}s myself.
Long-story short, I found [timeline API](https://docs.joinmastodon.org/methods/timelines/#tag) to be particularly useful:

```http
GET /api/v1/timelines/tag/:hashtag HTTP/1.1
```

Using this I could get a list of toots in {{<abbr `JSON`>}} format that had specific hashtags.
And then filter those results to only get the actual url.
I used `curl` to make {{<abbr `API`>}} requests and `jq` to filter-out the keys I was not interested in.

```bash
curl 'https://hachyderm.io/api/v1/timelines/tag/container?&limit=1000' | jq '.[].url' >> hash.json
```

And then, I had to filter out results that were not from Hachyderm or Fosstodon. And Sort each
For filtering `awk` was perfect, and then for sorting the `sort` command is good enough.

```shell
awk '/fosstodon|hachyderm/ {print $0}' hash.json | sort > res-ops
```

I just had to come up with a few keywords that I could associate more with operations and a few for development.

<div class="note">

As you may have noticed, my methodoloy is hardly scientific and and extremly relient on subjective definitions.
My goal was to find a good-enough-for-my-decision result. Not anything more.

</div>

I ended up with these words on differnt sides:

| Operations | Development                          |
|------------|--------------------------------------|
| Kubernetes | Refactor                             |
| Montioring | Debugging                            |
| Docker     | Greenfield                           |
| Container  | Framework                            |
| Terraform  | Compiler                             |
| Deploy     | Interpreter                          |
| Baremetal  | Testing                              |
| Vm         | Ide                                  |
| Admin      | Library                              |
| Server     | DesignPatterns                       |
| _          | LSP                                  |
| _          | <span class="language">NodeJS</span> |
| _          | {{<lang `Rust`>}}                    |
| _          | Auth                                 |

The differnece in their numbers are not important to us, only the proportions of the results of each may be relevant.

<details>
<summary>The eventual code looks like this.</summary>
<div class="details">

```shell
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
</div>
</details>


## The Result {#the-result}

On the ops query we have `32` toots from Fosstodon and `44` toots from Hachyderm.

```text
Fosstodon ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
Hachyderm ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
```

So far Hachyderm seems to have more activity with Operations related hashtags.
On the other hand it could be that people on Hachyderm are generally more talkative than Fosstodon about every part of the stack.
So let's hold development as the control.

On the development queries we have `49` results from Fosstodon and `24` results from Hachyderm.

```text
Fosstodon ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
Hachyderm ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
```

That seems like an staggering differece.&nbsp;[^fn:1]


## Dear Reader {#dear-reader}

I have no idea why this difference is so harsh. But for my purposes I have enough information to update my beliefs to make a decision for now that satisfies my accuracy-requirements for this decision.

[^fn:1]: Staggering differences are often a sign of a weak research. So take this part with a grain of salt.
