# Write your MySQL query statement below
select Sales.product_id,
Sales.year as first_year,
Sales.quantity,
Sales.price from Sales
where (product_id, year) in (
    SELECT product_id, MIN(year) 
    FROM Sales
    GROUP BY product_id
)