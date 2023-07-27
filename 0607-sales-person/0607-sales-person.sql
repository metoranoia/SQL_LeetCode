# Write your MySQL query statement below
select A.name from SalesPerson A
left join Orders B
on A.sales_id = B.sales_id
left join Company C
on B.com_id = C.com_id
group by A.name
having sum(C.name = 'RED') = 0 or sum(B.sales_id is null) > 0