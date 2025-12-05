-- Top 5 most rented movies
SELECT 
     m.movie_title, 
     COUNT(*) AS times_rented
FROM rentals AS r
JOIN movies AS m
     ON r.movie_id = m.movie_id
GROUP BY m.movie_title
ORDER BY times_rented DESC
LIMIT 5;

-- How many rentals each customer has
SELECT
     CONCAT(c.first_name,' ',c.last_name) AS customer_name,
     COUNT(*) AS times_rented
FROM rentals AS r
JOIN customers AS c 
     ON r.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY times_rented DESC;


-- Movies rented in the last year
SELECT
     m.movie_title,
     r.rental_date
from rentals AS r
JOIN movies AS m
    ON r.movie_id = m.movie_id
WHERE r.rental_date >= CURDATE() - INTERVAL 1 YEAR
ORDER BY r.rental_date ASC;


-- List customers who never rented anything
SELECT
     CONCAT(c.first_name,' ',c.last_name) AS customer_name
FROM customers AS c
LEFT JOIN rentals AS r
     ON c.customer_id = r.customer_id
WHERE r.rental_id = NULL;
 

-- Total rentals per genre
SELECT
     m.genre,
     COUNT(*) AS times_rented
FROM rentals AS r
JOIN movies AS m
     ON r.movie_id = m.movie_id
GROUP BY m.genre
ORDER BY times_rented DESC;


-- First date each movie was rented
SELECT
     m.movie_title,
     MIN(r.rental_date) AS first_rented_date
FROM rentals AS r
JOIN movies AS m
     ON r.movie_id = m.movie_id
GROUP BY m.movie_title
ORDER BY first_rented_date ASC;