SELECT
    p.product_name,
    SUM(o.unit) as unit
FROM
    Products as p JOIN Orders as o USING(product_id)
WHERE
    o.order_date BETWEEN "2020-02-01" AND "2020-02-29" 
GROUP BY
    product_id
HAVING
    unit >= 100
