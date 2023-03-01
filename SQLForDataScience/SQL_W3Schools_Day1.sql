#select * from customers
#select customerNumber, customerName, phone, city from customers
#select distinct country,state,city from customers
#select count(distinct state, city) from customers
#select * from customers where country = 'USA' and city = 'Las vegas'
#select * from customers where country = 'USA' or country = 'Australia'
#select * from customers where country = 'USA' and (city = 'San Jose' or city = 'NYC')
#select * from customers where country = 'USA' order by state ASC
#select * from customers where state is null and addressLine2 is null
#update customers set customerName = 'Vinay Babu Gorantla',contactLastName = 'Gorantla', contactFirstName = 'Vinay', state = 'Andhra Pradesh', country = 'India' where customerNumber = 119
#select * from customers where customerNumber = 119
#select min(creditLimit) as Smallest from customers
#select max(creditLimit) as Largest from customers
#select count(country) from customers where creditLimit > 100000
#select avg(creditLimit) from customers
# select * from payments
#select sum(amount) from payments
#select * from customers where country like 'N%'
#select * from customers where country like '%N'
#select * from customers where country like '%n%'
#select * from customers where country like '_n%'
#select * from customers where country like 'a_%'
#select * from customers where country like 'a%a'
#select * from payments order by amount desc
#select max(amount) from payments where amount not in (select max(amount) from payments)
#select * from customers where country in ('India','Australia','USA') order by country asc
#select customerNumber as No, contactFirstName as Name from customers as cust
select orders.orderNumber, orders.orderDate, orders.status
from orders
inner join customers on orders.customerNumber = customers.customerNumber