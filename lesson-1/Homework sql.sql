use W3Resource


select * from [Inventory].[Salesman]
where city = 'paris' or city = 'rome'

select * from [Inventory].[Salesman]
where  city not in ('Paris','Rome')

select * from [Inventory].[Salesman]
where commission between 0.12 and 0.14

select * from [Inventory].[Orders]
where (purch_amt between 500 and 4000) and not purch_amt in (948.50, 1983.43)

select * from [Inventory].[Salesman]
where name between 'a' and 'l'

select * from [Inventory].[Salesman]
where name not between 'a' and 'm'

select * from [Inventory].[Customer]
where  cust_name like 'b%'

select * from [Inventory].[Customer]
where cust_name like '%n'

select * from [Inventory].[Salesman]
where name like 'n__l%'

select * from [Inventory].[Customer]
where grade is null

select * from [Inventory].[Customer]
where grade is not null

select * from [dbo].[emp_details]
where emp_lname like 'd%'