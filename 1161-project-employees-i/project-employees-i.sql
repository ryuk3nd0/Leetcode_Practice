/* Write your T-SQL query statement below */
select P.project_id,
ROUND(SUM(E.experience_years)*1.0/Count(E.employee_id) , 2) as average_years
from Project as P
left join Employee as E 
on P.employee_id = E.employee_id
group by P.project_id