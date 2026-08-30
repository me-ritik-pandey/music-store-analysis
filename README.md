# 🎵 Music Store SQL Analysis

A SQL data analysis project using a fictional music store database to
explore **customers, sales, invoices, artists, tracks, and music
genres**.

The project focuses on solving business questions with SQL and
demonstrates practical use of **JOINs, filtering, aggregation, GROUP BY,
subqueries, CTEs, and window functions**.

## 📌 Project Overview

The Music Store database contains information about:

-   Employees
-   Customers
-   Invoices
-   Invoice line items
-   Tracks
-   Albums
-   Artists
-   Genres
-   Media types
-   Playlists

The main objective is to use SQL to answer business questions and
identify useful insights related to **sales performance, customer
behavior, and music trends**.

## 🗂️ Database Schema

The main relationship used in the analysis is:

``` text
Artist
  ↓
Album
  ↓
Track
  ↓
InvoiceLine
  ↓
Invoice
  ↓
Customer
```

Genres are connected to tracks through `GenreId`.

![Music Database Schema](MusicDatabaseSchema%20%281%29.png)

## 🧩 Project Questions

### Easy Level

1.  Find the most senior employee based on job title.
2.  Determine which countries have the most invoices.
3.  Identify the top 3 invoice totals.
4.  Find the city with the highest total invoice amount for a
    promotional event.
5.  Identify the customer who has spent the most money.

### Moderate Level

1.  Find customers who purchased/listened to Rock music.
2.  Identify the top 10 Rock artists based on track count.
3.  Find all tracks that are longer than the average track length.

### Advanced Level

1.  Analyze customer spending associated with the best-selling artist.
2.  Determine the most popular music genre for each country based on
    purchases.
3.  Identify the top-spending customer for each country.

## 🛠️ SQL Concepts Used

### Basic SQL

-   `SELECT`
-   `WHERE`
-   `ORDER BY`
-   `LIMIT`

### Aggregation

-   `COUNT()`
-   `SUM()`
-   `AVG()`
-   `GROUP BY`
-   `HAVING`

### Joins

-   `INNER JOIN`
-   Joining multiple related tables
-   Following foreign-key relationships

### Advanced SQL

-   Subqueries
-   Common Table Expressions (CTEs)
-   `ROW_NUMBER()`
-   Window functions
-   `PARTITION BY`

## 📁 Project Files

  -----------------------------------------------------------------------
  File                                Description
  ----------------------------------- -----------------------------------
  `Easy Level Queries.sql`            SQL solutions for easy-level
                                      business questions

  `Moderate Level Queries.sql`        SQL solutions involving joins,
                                      filtering, aggregation, and
                                      subqueries

  `Advance Level Queries.sql`         Advanced SQL solutions using CTEs
                                      and window functions

  `MusicDatabaseSchema (1).png`       Database relationship diagram

  `SQL Project instructions.pdf`      Original project questions and
                                      guidelines
  -----------------------------------------------------------------------

## 🔍 Example Query

### Customers Who Purchased Rock Music

``` sql
SELECT customer.email,
       customer.first_name,
       customer.last_name
FROM customer
JOIN invoice
    ON customer.customer_id = invoice.customer_id
JOIN invoice_line
    ON invoice.invoice_id = invoice_line.invoice_id
JOIN track
    ON invoice_line.track_id = track.track_id
JOIN genre
    ON track.genre_id = genre.genre_id
WHERE genre.name = 'Rock'
GROUP BY 1, 2, 3
ORDER BY email;
```

This query follows the relationship:

**Customer → Invoice → Invoice Line → Track → Genre**

and identifies customers associated with Rock music purchases.

## 📊 Business Insights

This project is designed to answer questions such as:

-   Which employees are the most senior?
-   Which countries generate the most invoice value?
-   Which invoices have the highest totals?
-   Which city could be a strong location for a promotional event?
-   Who are the highest-spending customers?
-   Which artists are most popular within the Rock genre?
-   Which tracks are longer than the average track length?
-   Which genres are most popular in different countries?
-   Who is the top-spending customer in each country?

These insights can help a music business understand **customer
purchasing behavior, sales performance, and music preferences**.

## 🎯 Key Learning Outcomes

Through this project, I practiced:

-   Writing SQL queries to solve business problems
-   Working with relational database schemas
-   Joining multiple tables using primary and foreign keys
-   Performing aggregations and grouping
-   Using subqueries for comparative analysis
-   Writing CTEs for complex queries
-   Using window functions for ranking
-   Translating business questions into SQL logic

## 🚀 Future Improvements

Possible extensions to this project include:

-   Creating a dashboard using Power BI or Tableau
-   Adding visualizations for sales and customer trends
-   Calculating monthly and yearly revenue trends
-   Analyzing customer lifetime value
-   Finding the most profitable artists and albums
-   Adding more advanced customer segmentation analysis

## 👤 Author

**Ritik Pandey**

This project was created as part of my SQL and data analytics portfolio
to demonstrate practical SQL skills and business-oriented data analysis.
