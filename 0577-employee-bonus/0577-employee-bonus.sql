# Write your MySQL query statement below
SELECT 
    e.name,
    CASE 
        WHEN b.bonus IS NULL THEN NULL
        ELSE b.bonus
    END AS bonus 
FROM 
    Employee e
LEFT JOIN 
    Bonus b 
ON 
    e.empId = b.empId

where b.bonus<1000 or b.bonus is null;

