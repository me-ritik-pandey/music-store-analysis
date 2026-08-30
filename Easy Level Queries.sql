--Q1: Find the most senior employee based on job title.

SELECT employee_id, first_name, last_name, title FROM employee
ORDER By levels DESC
LIMIT 1;

--Q2: Determine which countries have the most invoices.
SELECT billing_country,SUM(total) as total
FROM invoice
GROUP BY billing_country
ORDER BY total DESC
LIMIT 1;

--Q3: Identify the top 3 invoice totals.
SELECT total
FROM invoice 
ORDER BY total DESC
LIMIT 3;

--Q4: Find the city with the highest total invoice amount to determine the best location for
--a promotional event.
SELECT billing_city, SUM(total) AS total
FROM invoice
GROUP BY billing_city
ORDER BY total DESC
LIMIT 1;

--Q5: Identify the customer who has spent the most money.

SELECT e.customer_id, e.first_name, e.last_name, SUM(i.total) AS total
FROM customer e
JOIN invoice i
ON e.customer_id=i.customer_id
GROUP BY e.customer_id
ORDER BY total DESC
LIMIT 1;