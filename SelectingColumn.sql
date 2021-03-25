--Selecting columns
--Onboarding | Tables
SELECT name
FROM people;

-- Try running me!
SELECT'DataCamp <3 SQL'
AS result; --pag gusto ko mag name 

--pag fields yun yung columns

--SELECTing single columns
SELECT title FROM films;

--SELECTing multiple columns
SELECT * FROM films; -- pag lahat 

SELECT title,release_year
FROM films;

--SELECT DISTINCT 
--DISTINCT ay yung mga unique values yung mga walang duplicate
SELECT DISTINCT country FROM films;

--Learning to count 
--The COUNT statement lets you do this by returning the number of rows in one or more columns.
SELECT COUNT(*)
FROM people;
--Count the number of (non-missing) birth dates in the people table.
SELECT COUNT(birthdate)
FROM people;
--Count the number of unique birth dates in the people table.
SELECT COUNT(DISTINCT birthdate)
FROM people;
--Count the number of unique languages in the films table.

