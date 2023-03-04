# Part 1 Write SQL query to solve:

Template:
    
    SELECT
    FROM
    WHERE
    GROUP BY
    HAVING 

1. Find the Canadian authors who has never not had a bestseller (i.e., all their books are
best sellers).

    
    CREATE VIEW HadBestSeller(authorID) AS
    SELECT w.authorID
    FROM   Book b, Written w
    WHERE  b.bestSeller = 1  AND w.bid = b.isbn
    


    SELECT *
    FROM    Author a NATURAL JOIN HadBestSeller hbs
    WHERE   a.nationality LIKE 'Canada'


2.  Which genre(s) are the most popular amongst the books that have been on a bestseller
list?




