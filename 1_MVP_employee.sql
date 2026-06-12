/*
MVP Sales Employee!

Question: Which employee made the most sales?
*/


SELECT 
    employee.employee_id,
    employee.last_name,
    employee.first_name,
    employee.title,
    SUM(invoice.total) as total_invoice
FROM
    employee
LEFT JOIN
    customer
ON
    employee.employee_id = customer.support_rep_id
LEFT JOIN
    invoice
ON
    invoice.customer_id = customer.customer_id
GROUP BY
    employee.employee_id
ORDER BY
    total_invoice;


