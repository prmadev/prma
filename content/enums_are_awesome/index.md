+++
title = "Enums are awesome"
date = 2023-01-04
draft = true
slug = "enums_are_awesome"
insert_anchor_links = "heading"

[taxonomies]
categories = ["thoughts"]
tags = ["programming", "type-system"]
+++

Let's make an event-sourced mini system in rust and go

order comes in, we confirm it, and the person pays for it.

``order_placed`` -> ``order_paid`` -> ``order_fullfilled`` 

## The Aggregate

OrderAggragte will have these variables in it 

### In Go (enumless)

```go 
type OrderAggregate struct {
  orderID    uuid.UUID
  customerID uuid.UUID
  products   []Product // this is an variable length array of products. we will talk about products later on
  status     Status    // we define this bellow: 
 } 

// we have to define a type that can be identified as status. 
// however if you want others to have access to it you will have to
// export it. as such they can use Status(4) into an status, an invalid state
// even when valid, it will look incoherent.
// also the editor's autocomplete (LSP) won't help you find valid options, easily
type Status uint8 

// we define a bunch of valid states
// saying iota + 1 means that on each subsequent const,
// +1 happens, a code generation of some sorts
const ( 
  PLACED Status = iota + 1 // == 1
  PAID  // == 2
  FULLFILLED // == 3
)

```


### In Rust (enumful)

``` rust
pub struct OrderAggregate{
  order_id: uuid,
  customer_id: uuid,
  products:Vec<Products>, // same thing as []Products in go 
  status: Status, // ----> here is the our first perfect usecase for enum 
}

// this way we are telling that out OrderAggregate instance can only have one of these states
enum Status {
  Placed,
  Paid,
  Fullfilled,
}
```

This way we can state that an instance of ``OrderAggregate``.

In one of three State for example: ``Status::Place``.   



## Event types

let us make a list of events  