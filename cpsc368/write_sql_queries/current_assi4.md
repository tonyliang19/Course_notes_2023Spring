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
    
        SELECT bt.genreName
        FROM Book b BookType bt 
        WHERE b.bestseller = 1
        GROUP BY bt. genreName
        HAVING Count(*) >= ALL( SELECT Count(*)    
                                FROM Book b2, BookType bt2
                                WHERE b2.bestseller = 1
                                GROUP BY bt2.genreName)



3. Find the first and last names of all authors who have written more than one book. Your
answer must use an aggregate operator.

        CREATE VIEW authorWrittenOne(id) AS
        SELECT  a.id
        FROM    Author a, Written w
        WHERE   a.id = w.authorID
        GROUP BY id
        HAVING COUNT(a.id) = 1
        
        SELECT firstName, lastName
        FROM    Author a NATURAL INNER JOIN Written w
        WHERE a.id NOT IN (SELECT * FROM authorWrittenOne)

4. Find the first and last names of all authors who have written more than one book. Your
answer must not use an aggregate operator.

        SELECT firstName lastName
        FROM    Author a NATURAL INNER JOIN Written w
        WHERE a.id NOT UNIQUE ( SELECT a.id FROM
                                FROM written w2
                                WHERE a.id = w2.authordID)


5. How many books has each province borrowed? 

        SELECT  COUNT(Distinct b.userID, b.bid), a.province
        FROM    Address a, Borrows b, User u
        WHERE   a.id = u.address() AND b.userID = u.id 
        GROUP BY a.province

6. Each province/territory has run a campaign to encourage residents to use the library
more often. Find the provinces and/or territories that have had an increase in the
number of people who have borrowed a book in 2022 when compared to their average
across previous years

        CREATE VIEW countBefore2022(counts) as
        SELECT   COUNT(DISCTINCT b.bid, b.userID)
        FROM    Borrows br, Book b, User u
        WHERE   b.borrowYear < 2022 AND br.bid = b.isbn AND
                br.userID = u.id
        GROUP BY    b.borrowYear

        SELECT province
        FROM   Address a NATURAL JOIN Borrows br NATURAL    JOIN User u
        WHERE borrowYear = 2022
        GROUP BY a.province
        HAVING COUNT( DISTINCT b.bid, b.userID) > AVG(countBefore2022)