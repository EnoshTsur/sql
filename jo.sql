CREATE TABLE AUTHOR ( ID INT AUTO_INCREMENT PRIMARY KEY,
FIRST_NAME VARCHAR(30) NOT NULL,
LAST_NAME VARCHAR(30) NOT NULL
)

CREATE TABLE BOOKS ( ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME VARCHAR(30) NOT NULL,
    PRICE DOUBLE NOT NULL,
    AUTHOR_ID INT NOT NULL,
    FOREIGN KEY ( AUTHOR_ID ) REFERENCES AUTHOR(ID)
)


SELECT * FROM my_db.AUTHOR , my_db.BOOKS

SELECT my_db.BOOKS.*, my_db.AUTHOR.FIRST_NAME FROM my_db.BOOKS, my_db.AUTHOR where my_db.BOOKS.AUTHOR_ID = my_db.AUTHOR.ID ## AND my_db.AUTHOR._ID = 1

SELECT * FROM my_db.BOOKS where my_db.BOOKS.AUTHOR_ID IN ( SELECT ID FROM my_db.AUTHOR WHERE ID = 2 ) 

##########################################
### Examples #############################
##########################################
SELECT my_db.BOOKS.* FROM my_db.BOOKS, my_db.AUTHOR 
where books.AUTHOR_ID = author.ID

SELECT my_db.BOOKS.name , my_db.books.PRICE FROM my_db.BOOKS , my_db.AUTHOR 
where ((author.first_name = 'gil' and author.LAST_NAME = 'sasover')
or (author.FIRST_NAME = 'dana' and author.LAST_NAME = 'dvorin')) and books.AUTHOR_ID = author.ID

select my_db.books.NAME, my_db.books.PRICE from my_db.books where my_db.books.PRICE < 20

SELECT my_db.BOOKS.name , my_db.books.PRICE FROM my_db.BOOKS , my_db.AUTHOR 
where ((author.first_name = 'efrat' and author.LAST_NAME = 'rayten')
or (author.FIRST_NAME = 'nimrod' and author.LAST_NAME = 'reshef')) and books.price < 20 and books.AUTHOR_ID = author.ID


SELECT name FROM my_db.BOOKS where AUTHOR_ID IN (
SELECT ID FROM my_db.AUTHOR where first_name = 'gil' and  last_name = 'sasover'
)

SELECT price FROM my_db.BOOKS where AUTHOR_ID IN (
SELECT ID FROM my_db.AUTHOR where age < 98
)

SELECT price FROM my_db.BOOKS where AUTHOR_ID IN (
SELECT ID FROM my_db.AUTHOR where first_name like 'd%' or first_name like '%l'
)
											

SELECT name FROM my_db.BOOKS where AUTHOR_ID IN (
SELECT ID FROM my_db.AUTHOR where first_name like '%r%'
)
##########################################
### Examples #############################
##########################################


SELECT * FROM my_db.books INNER JOIN my_db.author ON my_db.books.AUTHOR_ID = my_db.author.ID
SELECT * FROM my_db.books LEFT JOIN my_db.author ON my_db.books.AUTHOR_ID = my_db.author.ID
SELECT * FROM my_db.books RIGHT JOIN my_db.author ON my_db.books.AUTHOR_ID = my_db.author.ID
SELECT * FROM my_db.books FULL JOIN my_db.author 

