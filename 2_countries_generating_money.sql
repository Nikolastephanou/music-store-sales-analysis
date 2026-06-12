/*
Question: Which countries are generating the most money for the music store?

Why? management knows where to focus their marketing budget.
*/

SELECT * FROM invoice LIMIT 10;


SELECT
    billing_country country,
    COUNT(invoice_id)  num_orders,
    SUM(total) total_revenue
FROM
    invoice
GROUP BY
    billing_country
ORDER BY
    total_revenue DESC;
    