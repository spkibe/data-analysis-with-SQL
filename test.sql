SELECT * --select all variables
FROM dataset_1
limit 5;


SELECT COUNT(*) --count number of rows in the dataset
FROM dataset_1;


--distinct types education
SELECT DISTINCT education as types_of_education
from dataset_1;

-- GENDER VALUE COUNTS
SELECT 
	gender,
	COUNT (*) AS count
FROM dataset_1
GROUP BY gender;

-- eDUCATION VALUE COUNTS
SELECT 
	education ,
	COUNT (*) AS count
FROM dataset_1
GROUP BY education;


--filter for males in the dataset
SELECT *
FROM dataset_1
WHERE gender = 'Male';


--filter for gender = male and marital_status = single
SELECT *
FROM dataset_1
WHERE gender = 'Male' AND maritalStatus = 'Single';

--filter for females with degree or masters
SELECT *
FROM dataset_1
WHERE gender = 'Female' AND 
	education  = 'Bachelors degree' or education = 'Graduate degree (Masters or Doctorate)';

-- GENDER VALUE COUNTS for indi
SELECT 
	gender,
	COUNT (*) AS count
FROM dataset_1
WHERE education  = 'Bachelors degree'
GROUP BY gender;

-- Agregation
SELECT destination, time,
	   AVG(temperature) as avg_temp,
	   SUM(temperature) as sum_temp,
	   Count(temperature) as count_temp
FROM dataset_1
GROUP BY destination, time
ORDER BY time;


--filtering with like
SELECT passanger, education
FROM dataset_1
WHERE education LIKE 'S%'; --education start with S

SELECT passanger, education
FROM dataset_1
WHERE education LIKE '%l'; -- education end with l

SELECT passanger, age
FROM dataset_1
WHERE age BETWEEN 20 and 25;

-- subquery FROM
SELECT passanger, destination
FROM (SELECT Passanger , destination
	  FROM dataset_1
	  WHERE Passanger = 'Alone')
	  
-- Subuquery in select always return a single value
SELECT weather, time, temperature,
		(SELECT AVG(temperature) FROM dataset_1) as avg_temp
FROM dataset_1;

--CTEs



