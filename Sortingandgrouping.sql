--ORDER BY keyword is used to sort results in ascending or descending order according to the values of one or more columns.
--DESC newest to oldest
SELECT title
FROM films
ORDER BY release_year DESC;

--Get the names of people from the people table, sorted alphabetically.
select name
from people
order by name;

--Get the names of people, sorted by birth date.
SELECT name
FROM people
ORDER BY birthdate;

--Get the title of films released in 2000 or 2012, in the order they were released.
SELECT title
from films
where release_year IN (2000,2012)
order by release_year;

--Get all details for all films except those released in 2015 and order them by duration.
SELECT *
from films
where release_year <> 2015
order by duration;

--Get the title and gross earnings for movies which begin with the letter 'M' and order the results alphabetically.
SELECT title, gross
from films
where title like 'M%'
order by title;

--Sorting multiple columns
SELECT birthdate, name
FROM people
ORDER BY birthdate, name;

--GROUP BY
--allows you to group a result by one or more columns

--Get the release year and count of films released in each year.
SELECT release_year, COUNT (*) 
FROM films
group by release_year;

--HAVING 
--This means that if you want to filter based on the result of an aggregate function, you need another way! That's where the HAVING clause comes in.
--Magagamit lang to pag gusto mag filter ng result

--Time to practice using ORDER BY, GROUP BY and HAVING together.

--Get the release year, budget and gross earnings for each film in the films table.
SELECT release_year, budget, gross
from films;

--Modify your query so that only records with a release_year after 1990 are included.
SELECT release_year, budget, gross
FROM films
WHERE release_year > 1990;

--Remove the budget and gross columns, and group your results by release year.
SELECT release_year
FROM films
WHERE release_year > 1990
GROUP by release_year

--Modify your query to include the average budget and average gross earnings for the results you have so far. Alias the average budget as avg_budget; alias the average gross earnings as avg_gross.
SELECT release_year, avg(budget) as avg_budget, avg(gross) as avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;

--Modify your query so that only years with an average budget of greater than $60 million are included.
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING avg(budget) > 60000000

--Finally, modify your query to order the results from highest average gross earnings to lowest.
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
order by AVG(gross) desc

--Get the country, average budget, and average gross take of countries that have made more than 10 films. Order the result by country name, and limit the number of results displayed to 5. You should alias the averages as avg_budget and avg_gross respectively.
-- select country, average budget, 
SELECT country, avg(budget) as avg_budget,
--     and average gross
avg(gross) as avg_gross
-- from the films table
from films
-- group by country 
group by country
-- where the country has more than 10 titles
--pag magbabago ako sa result use "HAVING"
having count(title) > 10 
-- order by country
order by country
-- limit to only show 5 results
limit 5

--SEQUENCE
SELECT
FROM
WHERE -- cannot be used with aggregate functions
GROUP BY --Aggregate Functions - count(), max(), min(), sum(), avg()
HAVING  -- used aggregate functions
ORDER BY
LIMIT



