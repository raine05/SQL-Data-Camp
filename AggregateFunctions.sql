--Aggregate Functions
SELECT AVG(budget)
FROM films;

SELECT MAX(budget)
FROM films;

SELECT SUM(budget)
FROM films;

--Combining aggregate functions with WHERE
--Use the SUM function to get the total amount grossed by all films made in the year 2000 or later.
SELECT SUM(gross)
FROM films
WHERE release_year >= 2000;

--Get the average amount grossed by all films whose titles start with the letter 'A'.
SELECT AVG(gross)
FROM films
WHERE title LIKE 'A%';

--Get the amount grossed by the worst performing film in 1994.
SELECT MIN(gross)
FROM films
WHERE release_year = 1994

--Get the amount grossed by the best performing film between 2000 and 2012, inclusive.
SELECT MAX(gross)
FROM films
WHERE release_year >= 2000 AND release_year <= 2012
--WHERE release_year BETWEEN 2000 AND 2012;

--AS aliasing - Aliases are helpful for making results more readable!

--Bad sample
SELECT MAX(budget), MAX(duration)
FROM films;
--For example, in the above example we could use aliases to make the result clearer:
SELECT MAX(budget) AS max_budget,
       MAX(duration) AS max_duration
FROM films;


--Get the title and net profit (the amount a film grossed, minus its budget) for all films. Alias the net profit as net_profit.
SELECT title, (gross- budget) AS net_profit
FROM films;

--Get the title and duration in hours for all films. The duration is in minutes, so you'll need to divide by 60.0 to get the duration in hours. Alias the duration in hours as duration_hours.
SELECT title, (duration / 60.0) AS duration_hours
FROM films;

--Get the average duration in hours for all films, aliased as avg_duration_hours.
SELECT AVG(duration)/60.0 AS avg_duration_hours
FROM films;

