-- select * from employee; 
-- select emp_name, birthday, sal from employee;
-- select emp_name as ]‹Æˆõ–¼, birthday as ¶”NŒŽ“ú, sal as ‹‹—^, sal*12 as ”NŽû from employee;
-- select emp_name as ]‹Æˆõ–¼, birthday as ¶”NŒŽ“ú, sal as ‹‹—^, cast(sal*12  as int)as ”NŽû from employee;
-- select emp_name as ]‹Æˆõ–¼, birthday as ¶”NŒŽ“ú, sal as ‹‹—^, (sal*12) ::int as ”NŽû from employee;
-- select emp_name as ]‹Æˆõ–¼, birthday as ¶”NŒŽ“ú, sal as ‹‹—^, (sal*12)::int as ”NŽû, (sal*12*40)::int as ¶ŠU”NŽû40”N from employee;
-- select '’S“–ŽÒ ' ||emp_name|| ' ‚Ì’a¶“ú‚Í ' ||birthday|| ' ‚Å‚·B' as ’a¶“ú from employee;
-- select emp_name, to_char(birthday, 'Day, Month dd, yyyy') from employee;
-- select emp_name, to_char(sal, '9G999G999D99') from employee;
-- select emp_name, birthday, sal, comm, sal+coalesce(comm,0) from employee;
-- \pset null '¹ÞÝ¼¶²µ°¶Þ';
-- select emp_name, birthday, sal, comm, sal+comm from employee;
-- select emp_name,
--     case 
--         when gender=1 then '’j«'
--                       else '—«'
--         end
-- from employee;

-- select emp_name,
--     case gender
--         when 1 then '’j«'
--                       else '—«'
--         end
-- from employee;

-- select emp_name, birthday, sal, comm,
-- sal+case when comm is null then 0 else comm end from employee;

-- select emp_name,sal,comm,
-- sal + case comm
--         when null then 0
--         else comm
--      end as ŒŽŽû 
-- from employee 
-- order by 4 desc;

-- select * from employee order by sal desc limit 3 offset 1;


-- ŽÀK@Select‹å
-- 1.
-- select * from product;

-- 2.
-- select prod_name, cost from product;

-- 3.
-- select prod_name, cost, discount, cost*discount as Š„ˆø‰¿Ši from product;

-- 4.
-- select prod_name, cost, discount,
-- cost*case 
--     when discount is null then 1
--         else discount
--     end 
-- as Š„ˆø‰¿Ši from product;

-- 5.
-- select prod_name, cost, discount,
-- to_char(cost*case 
--     when discount is null then 1
--         else discount
--     end,'99G999D99') 
-- as Š„ˆø‰¿Ši from product;

-- select emp_name, sal from employee
--     where sal >= 2000;

-- select emp_name, sal, gender from employee  where gender =2;
-- select emp_name, sal, gender from employee  where emp_name = 'ˆÀ•” O]';
-- select emp_name, sal, birthday from employee
-- where birthday >= '1980-01-01';

-- select emp_name, sal, birthday from employee
-- where sal between 2000 and 3000;

-- select emp_name, sal from employee
-- where emp_id = 2 or emp_id = 4 or emp_id = 7;

-- select emp_name, sal from employee
--     where sal >= 2000 or gender = 2;

-- select emp_name, sal from employee
--     where ((sal >= 2000 and sal <= 3000) or gender = 2);

-- select emp_name, sal from employee
-- where (sal between 2000 and 3000) ;

-- select *from customer
--     where address not like '“Œ‹ž“s%';

-- select cust_id, cust_name from customer
--     where cust_name like '_“c %Žq';
-- select emp_name, comm from employee
--     where comm is not null;

-- ŽÀK Where‹å
-- 1.
-- select *from product where cost >= 20000;

-- 2.
-- select cust_id, cust_name from customer
--     where fax is null;

-- 3.
-- select sales_no, psales_no, prod_id, price from sales
--     where psales_no between 110 and 119
--     order by price desc;

-- 6.
-- select cust_id, cust_name, tel from customer
--     where tel not like '03%' and tel not like '06%';

-- select 
--     count(*),
--     sum(sal),
--     avg(sal),
--     min(sal),
--     max(sal)
--     from employee;


-- select 
--     count(comm),
--     sum(sal),
--     avg(sal),
--     min(sal),
--     max(sal)
-- from employee;
    
-- select 
--     dept_id,
--     count(*),
--     sum(sal),
--     avg(sal),
--     min(sal),
--     max(sal)
-- from employee
-- group by dept_id
-- order by dept_id;

-- select dept_id, gender, count(*), avg(sal)
--     from employee
--     group by dept_id, gender
--     order by dept_id, gender;

-- select dept_id, gender, count(*), avg(sal)
--     from employee
--     group by dept_id, gender
--     order by gender, dept_id;

select dept_id, sum(sal), avg(sal), min(sal), max(sal)
    from employee
    group by dept_id
    having sum(sal) <= 5000
    order by dept_id;
