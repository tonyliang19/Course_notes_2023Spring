# Assignment 4 Writing and Evaluation SQL Queries

This is a lengthy assignment, due **March 3**!, so do early.

Use the following schema description to answer the questions:


Constraint: all non-primary key attributes have a **NOT NULL** constraint

![](schema.png)


## Part 1 Write SQL query to solve

May use **views** to answer question**

1. Find the Canadian author who has never not had a bestseller (i.e. all their books are best sellers)

> SELECT *
>
> FROM Author a, Book b, Written w
>
> WHERE a.id = w.authorID AND w.bid = b.isbn AND a.nationality LIKE %'Canada'% AND b.bestSeller = 1
