/*
In query 4, we found that ROCK is the most prefered genre.

Question: Which are the top-3 cities where ROCK is prefered?

Why? This will tell the marketing team exactly which cities to target for a rock-themed promotional concert event.
*/

/*
genre: genre_id: Pk

invoice: invoice_id: PK, customer_id: FK

invoice_line: invoice_line_id: PK, invoice_id: FK, track_id: PK

track: track_id: PK, genre_id: FK

*/




SELECT
    invoice.billing_city,
    COUNT(invoice.customer_id) AS num_rock_funs
FROM
    invoice
INNER JOIN 
    invoice_line
ON
    invoice_line.invoice_id = invoice.invoice_id
INNER JOIN
    track
ON
    track.track_id = invoice_line.track_id
INNER JOIN
    genre
ON
    genre.genre_id = track.genre_id
WHERE
    genre.name = 'Rock'
GROUP BY
    invoice.billing_city
ORDER BY
    num_rock_funs DESC
LIMIT 3;
--LIMIT 10;


