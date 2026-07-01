/* Write your PL/SQL query statement below */
select max(num) as num from 
(
    select num,count(*)
    from mynumbers 
    group by(num) 
    having count(*) =1
    order by (num)
)t; 