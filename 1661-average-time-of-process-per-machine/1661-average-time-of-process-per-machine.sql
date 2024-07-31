# Write your MySQL query statement below
select a.machine_id,
round(avg(b.timestamp - a.timestamp),3) as processing_time 
from Activity a, Activity b 
where
a.machine_id = b.machine_id
AND 
    a.process_id = b.process_id
AND 
    a.activity_type = 'start'
AND 
    b.activity_type = 'end'
GROUP BY machine_id
