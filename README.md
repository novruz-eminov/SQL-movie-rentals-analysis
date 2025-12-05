Movie Rental Analysis | beginner-friendly SQL Portfolio Project
Project Summary
This project analyzes movie rental data to show customer behaviors, identify popular movies,
and provide data-driven business recommendations. Using real-world SQL techniques,
I answered key main questions about rental frequency, customer engagement, and genre performance.

Database Structure
The analysis uses three tables:

customers
customer_id (PRIMARY KEY), first_name, last_name, email_address

 movies
 movie_id (PRIMARY KEY), movie_title, genre

rentals 
rental_id (PRIMARY KEY), customer_id (FOREIGN KEY), movie_id (FOREIGN KEY), rental_date



![ER Diagram](movie_rentals_ER.png)

 ER Diagram

Dataset (fake data created by me)
All movie titles - chosen randomly ass well as fake customer information

Key SQL Skills I Demonstrated
JOIN Operations (INNER, LEFT) to combine related tables
GROUP BY with aggregate functions (COUNT(), MIN())
Filtering using WHERE and HAVING clauses
Date Functions (CURDATE(), INTERVAL)
Result Sorting & Limiting (ORDER BY, LIMIT)
String Manipulation (CONCAT() for customer names)

Case Study: The Business Problems that
a movie rental platforms needed to optimize operations by understanding:
What movies are most popular to guide inventory purchases
Who are the most active customers for loyalty programs
Which genres perform best for marketing focus

Main question the project Answered:
What are the top 5 most rented movies?
How many rentals does each customer have?
Which movies were rented in the last year?
Which customers have never rented anything?
What are the total rentals per genre?
When was each movie first rented?

SQL Queries usde for analytics

-- Top 5 Most Rented Movies
SELECT m.movie_title, COUNT(*) AS times_rented
FROM rentals AS r
JOIN movies AS m ON r.movie_id = m.movie_id
GROUP BY m.movie_title
ORDER BY times_rented DESC
LIMIT 5;

-- Rentals Per Customer
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
       COUNT(*) AS times_rented
FROM rentals AS r
JOIN customers AS c ON r.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY times_rented DESC;

-- Movies Rented in Last Year
SELECT m.movie_title, r.rental_date
FROM rentals AS r
JOIN movies AS m ON r.movie_id = m.movie_id
WHERE r.rental_date >= CURDATE() - INTERVAL 365 DAY;

-- Customers Who Never Rented
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM customers AS c
LEFT JOIN rentals AS r ON c.customer_id = r.customer_id
WHERE r.rental_id IS NULL;

-- Total Rentals Per Genre
SELECT m.genre, COUNT(*) AS times_rented
FROM rentals AS r
JOIN movies AS m ON r.movie_id = m.movie_id
GROUP BY m.genre
ORDER BY times_rented DESC;

--  First Rental Date for Each Movie
SELECT m.movie_title, MIN(r.rental_date) AS first_rented_date
FROM rentals AS r
JOIN movies AS m ON r.movie_id = m.movie_id
GROUP BY m.movie_title
ORDER BY first_rented_date ASC;

Insights
Key Findings:
Popularity : Certain movies consistently outperform others, showing solid customer preferences.
Some customers has more rentals than other customers.this shows that Customers have different engagement levels.
Genre Performance: crime/drama genre show higher rental count compared to others.


