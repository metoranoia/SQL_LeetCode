# Write your MySQL query statement below
select B.name from Employee A
left join Employee B
on A.managerId = B.id
group by B.id
having count(B.id) >= 5