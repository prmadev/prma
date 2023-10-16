+++
title = "Rust Skills Transferability"
author = ["Perma"]
date = 2023-10-16T23:04:00+03:30
tags = ["rust", "languages"]
categories = ["daily"]
draft = false
+++

While the skills learned in <span class="language">Rust</span>, like working with the _borrow checker_, may seem limited to <span class="language">Rust</span> itself, the claim of their intransferability is somewhat overstated. Understanding the borrow checker is specific to languages using it, but the approaches it encourages are typically advanced and valued by experienced engineers.
And often, it is evidenced by the patterns that are simplest to implement.
The obvious exception to that is `unwrap()` and `expect()`. Even though the ? operator is an step towards simplifying that process, it is undeniable that the hassel of creating and managing errors is not simpler than the extra 8 characters introduced by the `.unwrap()`
