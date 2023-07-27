# Write your MySQL query statement below
select * from 
(select * from Cinema
where mod(id,2)=1 and not description = 'boring') as A
order by A.rating desc