+++
title = "Now"
author = ["Perma"]
date = 2023-10-09T16:43:00+03:30
draft = false
description = "This page informs you about what I'm currently focused on." 
+++

{{< note >}}
This page informs you about what I'm currently focused on. Read more about [the concept of now page](https://nownownow.com/about).
{{< /note >}}

## Making the backend of asanbilit.ir

This is an airplane-ticketing system. It has an extremely complex back-end, comprised of many microservices which uses {{<abbr `gRPC`>}}, RabbitMQ+{{<abbr `ProtoBuf`>}}, {{<abbr `REST`>}}, and {{<abbr `SOAP`>}} {{<abbr `API`>}}s, extensively. It has a complex caching system, works with over 20 external {{<abbr `API`>}}s, and incorporates RedisDB, MongoDB and PostgreSQL. It also incorporates, Macaroon tokens. That's a lot of _cool_ technologies. Any other system that has such an architecture, is probably over engineered. I can gurantee that this one is under-engineered, at this point.

This is an airplane-ticketing system. It has an extremely complex back-end, comprised of many microservices that utilize {{<abbr `gRPC`>}}, RabbitMQ with {{<abbr `ProtoBuf`>}}, {{<abbr `REST`>}}, and {{<abbr `SOAP`>}} {{<abbr `API`>}}s extensively. The system features a complex caching system, interacts with with over 20 external {{<abbr `API`>}}s, and integrates RedisDB, MongoDB, and PostgreSQL. Additionally, It also incorporates Macaroon tokens. That's a lot of _cool_ technologies. Any other system with such an architecture is probably over-engineered. I can guarantee that, at this point, this one is under-engineered.

I've been part of a three-person team, likely serving as the co-architect of this system. So, yes, I've had to code every aspect of these technologies. And let me tell you, it was quite a challenging experience! :D

## Making prmait

I have created a rust-binary as a kind of glorified all-encompassing script.
[The code for prmait](https://sr.ht/~prma/prmait/) is hosted on [sourcehut](https://sr.ht/) which is my current favorite code-forge.

Currently, prmait has these functionalities:

- Journal management of my dreams.
- Task manager that is tailored to my needs. 
- Commits and pushes every change to the above. 
- [RiverWM](https://github.com/riverwm/river)'s startup script.

During this, to make it nicer for myself, I had to create a very small parser, and an [effect-system](https://en.wikipedia.org/wiki/Effect_system).
I have other functionalities in mind that I have not yet started working on: 
- Combining thte task manager and journal manager, to make a sort [org-mode](https://orgmode.org/)-ish [bullet journal](https://bulletjournal.com/) for myself, where task schedules and notes live together.
- Create a syndication port, where I put some text, and it makes a [daily blog](/daily) post here, and make another post on [Fosstodon](https://fosstodon.org). 
- Create a parser for a [vidir](https://joeyh.name/code/moreutils/) style interface for bulk editing of tasks and journal entries.



I've developed a Rust binary as a glorified, all-encompassing script. You can find the code for [prmait](https://sr.ht/~prma/prmait/) hosted on [sourcehut](https://sr.ht/), my current favorite code forge.

At present, prmait encompasses the following functionalities:

- A journaling system.
- A task manager tailored to my needs.
- Automatic commits and pushes for every change mentioned above.
- [RiverWM](https://github.com/riverwm/river)'s startup script.

Throughout this process, to enhance the experience for myself, I had to create a very small parser and an [effect system](https://en.wikipedia.org/wiki/Effect_system). I have other functionalities in mind that I haven't started working on yet:

- Combining the task manager and journal manager to create a [bullet journal](https://bulletjournal.com/)-ish [org-mode](https://orgmode.org/) for myself, where task schedules and notes coexist.
- Developing a syndication port that takes entered text, generates a [daily blog](/daily) post here, and publishes another post on [Fosstodon](https://fosstodon.org).
- Creating a parser for a [vidir](https://joeyh.name/code/moreutils/) style interface for bulk editing of tasks and journal entries.
