#############
# DATA_BASE #
#############
CREATE DATABASE IF NOT EXISTS my_db;


#############
# TABLES ####
#############
CREATE table my_db.USERS ( ID INT(6) AUTO_INCREMENT PRIMARY KEY,
FIRST_NAME VARCHAR(30) NOT NULL,
LAST_NAME VARCHAR(30) NOT NULL,
AGE INT(3) NOT NULL,
BIRTH_DATE DATE NOT NULL );

##############
# INSERT #####
##############
INSERT INTO my_db.users (FIRST_NAME, LAST_NAME, BIRTH_DATE)
VALUES ('Enosh', 'Tsur', '1990-03-24' );

##############
# SELECT #####
##############
SELECT FIRST_NAME, LAST_NAME FROM my_db.users;
SELECT * FROM my_db.users;
SELECT DISTINCT FIRST_NAME FROM my_db.users
### WHERE ###
SELECT * FROM my_db.users WHERE FIRST_NAME = 'Enosh'
SELECT * FROM my_db.users WHERE FIRST_NAME = 'ENOSH' OR FIRST_NAME = 'KOBI'
SELECT * FROM my_db.users WHERE FIRST_NAME = 'ENOSH' AND LAST_NAME = 'TSUR'
SELECT * FROM my_db.users WHERE BIRTH_DATE BETWEEN '1989-01-01' AND '2020-01-01'
SELECT * FROM my_db.users WHERE AGE < 21
SELECT * FROM my_db.users WHERE BIRTH_DATE < '1990-01-01'
SELECT * FROM my_db.users WHERE FIRST_NAME IN ('ENOSH', 'KOBI', 'YANIV')
SELECT * FROM my_db.users WHERE NOT FIRST_NAME = 'Enosh'
SELECT * FROM my_db.users WHERE FIRST_NAME != 'Enosh'
-------------------------------------------------------------------------------
WHERE FIRST_NAME LIKE 'a%'	Finds any values that start with "a"
WHERE FIRST_NAME LIKE '%a'	Finds any values that end with "a"
WHERE FIRST_NAME LIKE '%or%'	Finds any values that have "or" in any position
WHERE FIRST_NAME LIKE '_r%'	Finds any values that have "r" in the second position
WHERE FIRST_NAME LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
WHERE FIRST_NAME LIKE 'a%o'	Finds any values that start with "a" and ends with "o"
------------------------------------------------------------------------------------------------------------
### ORDER BY ###
SELECT * FROM my_db.users order by FIRST_NAME
SELECT * FROM my_db.users order by FIRST_NAME, LAST_NAME
SELECT * FROM my_db.users order by FIRST_NAME DESC
SELECT * FROM my_db.users order by FIRST_NAME DESC, LAST_NAME DESC
SELECT * FROM my_db.users order by FIRST_NAME ASC

################
# UPDATE #######
################
SET SQL_SAFE_UPDATES = 0; (IN ORDER TO UPDATE BY ANY KEY)
UPDATE my_db.users SET FIRST_NAME = 'Koby' WHERE FIRST_NAME = 'KOBI' AND LAST_NAME = 'COHEN'
UPDATE my_db.users SET FIRST_NAME = 'Avneros', LAST_NAME = 'GEORGE' WHERE ID = 2

################
# DELETE #######
################
DELETE FROM my_db.users WHERE FIRST_NAME = 'Kobi'
DELETE FROM my_db.users WHERE ID = 3



