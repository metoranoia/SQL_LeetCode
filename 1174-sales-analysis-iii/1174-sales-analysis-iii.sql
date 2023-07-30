# Write your MySQL query statement below
select A.product_id, A.product_name from Product A
right join Sales B
on A.product_id = B.product_id
group by product_id
having sum(case when(B.sale_date >= '2019-01-01' and B.sale_date <= '2019-03-31') then '0' else '1' end) = 0