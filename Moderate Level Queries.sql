--Q1: Find the email, first name, and last name of customers who listen to Rock music.
SELECT customer.email, customer.first_name, customer.last_name
FROM customer
JOIN invoice
ON customer.customer_id=invoice.customer_id
JOIN invoice_line
ON invoice.invoice_id=invoice_line.invoice_id
JOIN track
ON invoice_line.track_id=track.track_id
JOIN genre
ON track.genre_id=genre.genre_id
WHERE genre.name LIKE 'Rock'
GROUP BY 1,2,3
ORDER By email;

--Q2: Identify the top 10 rock artists based on track count.
SELECT artist.name, COUNT(artist.artist_id) AS song_count
FROM artist
JOIN album
ON artist.artist_id=album.artist_id
JOIN track
ON album.album_id=track.album_id
JOIN genre
ON track.genre_id=genre.genre_id
WHERE genre.name LIKE 'Rock'
GROUP BY artist.artist_id
ORDER BY song_count DESC
LIMIT 10;


--Q3: Find all track names that are longer than the average track length.
SELECT name,milliseconds 
FROM track
WHERE milliseconds>(SELECT AVG(milliseconds) FROM track)
ORDER BY milliseconds DESC;