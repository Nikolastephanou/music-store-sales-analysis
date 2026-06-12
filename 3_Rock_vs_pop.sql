/*
Question: which music genres sell the best?
Why? management wants to know which music genres sell the best so they know what kind of albums to buy more of in the future.
*/



SELECT
    genre.name,
    SUM(invoice_line.quantity) quantity
FROM
    genre
LEFT JOIN
    track
ON
    track.genre_id = genre.genre_id
LEFT JOIN
    invoice_line
ON
    invoice_line.track_id = track.track_id
GROUP BY
    genre.genre_id
HAVING
     SUM(invoice_line.quantity) is NOT NULL
ORDER BY
    quantity DESC
LIMIT
    5;