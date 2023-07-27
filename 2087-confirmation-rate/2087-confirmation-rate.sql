# Write your MySQL query statement below
select A.user_id, round(avg(case 
when B.action = 'confirmed' then 1
when B.action = 'timeout' then 0
else 0
end),2) as confirmation_rate
from Signups A
left outer join Confirmations B
on A.user_id = B.user_id 
group by A.user_id