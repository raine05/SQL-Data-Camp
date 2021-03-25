--Filtering results
/*
= equal
<> not equal
< less than
> greater than
<= less than or equal to
>= greater than or equal to
*/

--WHERE 
--Get all details for all films released in 2016.
SELECT * FROM films where release_year = 2016;

--Get the number of films released before 2000.
SELECT COUNT(*)
FROM films
WHERE release_year < 2000

--Get the title and release year of films released after 2000
SELECT title, release_year
FROM films
WHERE release_year > 2000

--Simple filtering of text
--Get all details for all French language films.
SELECT * 
FROM films
WHERE language = 'French'

--Get the name and birth date of the person born on November 11th, 1974. Remember to use ISO date format ('1974-11-11')!
SELECT name, birthdate
FROM people
WHERE birthdate = '1974-11-11'

--WHERE AND
--Get the title and release year for all Spanish language films released before 2000.
SELECT title, release_year
FROM films
WHERE language = 'Spanish' AND release_year < 2000;

--Get all details for Spanish language films released after 2000, but before 2010.
SELECT *
FROM films
WHERE language = 'Spanish' AND release_year > 2000 AND release_year < 2010;

--WHERE AND OR
--returns all films released in either 1994 or 2000
SELECT title
FROM films
WHERE release_year = 1994
OR release_year = 2000;

--Get the title and release year for films released in the 90s.
SELECT title, release_year
FROM films
WHERE release_year >= 1990 AND release_year <= 1999

--Now, build on your query to filter the records to only include French or Spanish language films.
SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000) AND
(language = 'French' OR language = 'Spanish'); 

--Finally, restrict the query to only return films that took in more than $2M gross.
SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
AND (language = 'French' OR language = 'Spanish')
AND (gross > 2000000)

--BETWEEN
--BETWEEN is inclusive, meaning the beginning and end values are included in the results
SELECT title
FROM films
WHERE release_year
BETWEEN 1994 AND 2000; --same lang to dito release_year >= 1994 AND release_year <= 2000;
--mula 1994 hanngang 2000

--Get the title and release year of all films released between 1990 and 2000 (inclusive).
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000;

--Now, build on your previous query to select only films that have budgets over $100 million.
SELECT title, release_year
FROM films
WHERE (release_year BETWEEN 1990 AND 2000)
AND budget > 100000000;

--Now restrict the query to only return Spanish language film
SELECT title, release_year
FROM films
WHERE (release_year BETWEEN 1990 AND 2000)
AND (budget > 100000000)
AND (language = 'Spanish');

--Finally, modify to your previous query to include all Spanish language or French language films with the same criteria as before. Don't forget your parentheses!
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
AND (language = 'Spanish' OR language = 'French');

--WHERE IN 
--para di gagamit ng mahabang or
SELECT name
FROM kids
WHERE age = 2
OR age = 4
OR age = 6
OR age = 8
OR age = 10;

--WHERE IN
SELECT name
FROM kids
WHERE age IN (2, 4, 6, 8, 10);

--Get the title and release year of all films released in 1990 or 2000 that were longer than two hours. Remember, duration is in minutes!
SELECT title, release_year
FROM films
WHERE release_year IN (1990, 2000)
AND duration > 120;

--Introduction to NULL and IS NULL
--NULL represents a missing or unknown value. You can check for NULL values using the expression IS NULL. For example, to count the number of missing birth dates in the people table:
SELECT COUNT(*)
FROM people
WHERE birthdate IS NULL;

--For example, this query gives the names of all people whose birth dates are not missing in the people table.
SELECT name
FROM people
WHERE birthdate IS NOT NULL;

--Get the names of people who are still alive, i.e. whose death date is missing.
SELECT name
FROM people
WHERE deathdate IS NULL;

--Get the number of films which don't have a language associated with them.
SELECT COUNT(films)
FROM films
WHERE language is NULL;

--LIKE and NOT LIKE(%)
--the LIKE operator can be used in a WHERE clause to search for a pattern in a column.
-- --> _ match single character
SELECT name
FROM companies
WHERE name LIKE 'Data%';

SELECT name
FROM companies
WHERE name LIKE 'DataC_mp';

--Get the names of all people whose names begin with 'B'. The pattern you need is 'B%'.
SELECT name
from people
WHERE name LIKE 'B%';

--Get the names of people whose names have 'r' as the second letter. The pattern you need is '_r%'.
SELECT name
from people
WHERE name LIKE '_r%';

--Get the names of people whose names don't start with A. The pattern you need is 'A%'.
SELECT name
FROM people
WHERE name NOT LIKE 'A%';






















