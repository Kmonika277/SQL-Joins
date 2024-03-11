
--1)Retrieve the data from table 1

SELECT * FROM return_unique;

--2)Find the total return order.

select count(returned) 
FROM return_unique;

--3)Retrieve the data from table 2

SELECT * FROM Orders_unique;

--4) Find the total sales from orders_unique.

Select Sum(Sales) from  Orders_unique;

--Use of Inner Join
--5) Find total revenue lost by the returned orders using inner join.

select city,sum(sales) 
from Orders_unique ou
inner join return_unique ru 
on ou.order_id=ru.order_id
group by city;


--Use of Left Join

select ou.order_id,ru.order_id,ou.sales
from Orders_unique ou
Left join return_unique ru 
on ou.order_id=ru.order_id
where ru.order_id is null

--6)Find total revenue lost by the returned orders using left join.

select sum(sales)
from Orders_unique ou
Left join return_unique ru 
on ou.order_id=ru.order_id;

--Use of Right Join

select ou.order_id,ru.order_id,ru.sales
from return_unique ou
Right join Orders_unique ru 
on ou.order_id=ru.order_id;



--7)Find total revenue lost by the returned orders using Right join

select sum(sales)
from return_unique ou
Right join Orders_unique ru 
on ou.order_id=ru.order_id;

--Use of full outer join

select ou.order_id,ru.order_id,sales
from Orders_unique ou
Full outer join return_unique ru 
on ou.order_id=ru.order_id
where ru.order_id is null;


--8)Find total revenue lost by the returned orders using Full Outer join

select sum(sales)
from Orders_unique ou
Full outer join return_unique ru 
on ou.order_id=ru.order_id;