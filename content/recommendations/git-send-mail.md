+++
title = "git-send-mail.io"
author = ["Perma"]
date = 2023-12-29T18:40:31+03:30 
tags = ["git"]
categories = ["recommendations"]
draft = false
slug = "git-send-mail"
+++

Git is an amazing tool, and a massive one at that. Most of us know and agree about that fact.
Sure, there are things that use more interesting approaches to the underlying data structure [^1],
but for the most part, Git offers a world of wonder that no other system has.

As it happens, many developers only use a handful of features of Git, which is a shame, since those features fit much better in a workflow that includes more of Git's features [^2].

One such feature is `git send-email`, which I have been using recently to contribute to the [Pimalaya project](https://pimalaya.org/) [^3]. 
This command lets you send a patch-set [^4] via email to someone or a mailing list. This is how [Linux Kernel development](https://lkml.org/) is done and how [SourceHut](https://sr.ht) [^5] works.

However, this workflow is foreign to most developers.
[Drew DeVault](https://drewdevault.com/) [^6] created a very nice webpage on [git-send-email](https://git-send-email.io), which guides you through using this rather amazing command.

[^1]: I'm referring to Pijul and Darcs. 
[^2]: This, of course, is thanks to the mass adoption of GitHub, which, to be frank, offers a workflow that is probably mostly advantageous to absolute beginners in programming and subpar to full-time developers. Although I can see myself being wrong on this point as well. 
[^3]: Probably one of my upcoming recommendations.
[^4]: Or _a set of commits_, if you will.
[^5]: Another one of my upcoming recommendations.
[^6]: Drew co-created SourceHut, which should also connect some dots for you as well.
