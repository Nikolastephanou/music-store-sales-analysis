/*
Who are the VIP customers ?

Management wants to find the Top 5 customers who have spent the absolute most money across all their historical orders,
so marketing can send them exclusive loyalty rewards.
*/



SELECT
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    SUM(invoice.total) total_spent
FROM
    customer
INNER JOIN
    invoice
ON
    invoice.customer_id = customer.customer_id
GROUP BY
    customer.customer_id
ORDER BY
    total_spent DESC
LIMIT 5;
