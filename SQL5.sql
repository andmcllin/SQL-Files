--Example 1 pg. 134
select CUSTOMER_NUM, CUSTOMER_NAME, rep.REP_NUM, LAST_NAME, FIRST_NAME
from customer, rep
where customer.REP_NUM = rep.REP_NUM;

--Example 2 pg. 135
select CUSTOMER_NUM, CUSTOMER_NAME, rep.REP_NUM, LAST_NAME, FIRST_NAME
from customer, rep
where customer.REP_NUM = rep.REP_NUM
and CREDIT_LIMIT = 7500;

--Example 3 pg. 136
select ORDER_NUM, order_line.ITEM_NUM, DESCRIPTION, NUM_ORDERED, QUOTED_PRICE, PRICE
from order_line, item
where order_line.ITEM_NUM = item.ITEM_NUM;

--Example 4 pg. 137
select DESCRIPTION
from order_line, item
where order_line.ITEM_NUM = item.ITEM_NUM
and ORDER_NUM = '51623';

--Example 5 pg. 138
select ORDER_NUM, ORDER_DATE
from orders
where exists
(select *
from order_line
where orders.ORDER_NUM = order_line.ORDER_NUM
and ITEM_NUM = 'FD11');

--Example 6 pg. 140
select orders.ORDER_NUM, ORDER_DATE
from orders, order_line, item
where order_line.ORDER_NUM = orders.ORDER_NUM
and order_line.ITEM_NUM = item.ITEM_NUM
and STOREHOUSE = '3';

--Example 7 pg. 142
select CUSTOMER_NUM, orders.ORDER_NUM, ORDER_DATE, SUM(NUM_ORDERED * QUOTED_PRICE) as ORDER_TOTAL
from orders, order_line
where orders.ORDER_NUM = order_line.ORDER_NUM
group by orders.ORDER_NUM, CUSTOMER_NUM, ORDER_DATE
having SUM(NUM_ORDERED * QUOTED_PRICE) > 500
order by orders.ORDER_NUM;

--Example 8 pg. 143
select rep.REP_NUM, LAST_NAME, FIRST_NAME, customer.CUSTOMER_NUM, CUSTOMER_NAME
from rep, customer
where rep.REP_NUM = customer.REP_NUM;

--Example 9 pg. 144
select FIRST.CUSTOMER_NUM, FIRST.CUSTOMER_NAME, SECOND.CUSTOMER_NUM, SECOND.CUSTOMER_NAME, FIRST.CITY
from customer FIRST, customer SECOND
where FIRST.CITY = SECOND.CITY
and FIRST.CUSTOMER_NUM < SECOND.CUSTOMER_NUM;

--Example 10 pg. 147
select ITEM_NUM, NUM_ORDERED, order_line.ORDER_NUM, ORDER_DATE, customer.CUSTOMER_NUM, CUSTOMER_NAME, LAST_NAME 
from order_line, orders, rep, customer
where orders.ORDER_NUM = order_line.ORDER_NUM
and customer.CUSTOMER_NUM = orders.CUSTOMER_NUM
and rep.REP_NUM = customer.REP_NUM
order by ITEM_NUM;

--Example 11 pg. 151
select CUSTOMER_NUM, CUSTOMER_NAME
from customer
where REP_NUM = '15'
union
select customer.CUSTOMER_NUM, CUSTOMER_NAME
from customer, orders
where customer.CUSTOMER_NUM = orders.CUSTOMER_NUM;

--Example 12 pg. 152
select CUSTOMER_NUM, CUSTOMER_NAME
from customer
where REP_NUM = '15'
intersect
select customer.CUSTOMER_NUM, CUSTOMER_NAME
from customer, orders
where customer.CUSTOMER_NUM = orders.CUSTOMER_NUM;

--Example 13 pg. 153
select CUSTOMER_NUM, CUSTOMER_NAME
from customer
where REP_NUM = '15'
and CUSTOMER_NUM not in
(select CUSTOMER_NUM
from orders);

--Example 14 pg. 154
select CUSTOMER_NUM, CUSTOMER_NAME, BALANCE, REP_NUM
from customer
where BALANCE > ALL
(select balance 
from customer
where REP_NUM = '30');

--Example 15 pg. 155
select CUSTOMER_NUM, CUSTOMER_NAME, BALANCE, REP_NUM
from customer
where BALANCE > ANY
(select balance 
from customer
where REP_NUM = '30');

--Example 16 pg. 157
select customer.CUSTOMER_NUM, CUSTOMER_NAME, ORDER_NUM, ORDER_DATE
from customer
inner join orders
on customer.CUSTOMER_NUM = orders.CUSTOMER_NUM
order by customer.CUSTOMER_NUM;

--Example 17 pg. 158
select customer.CUSTOMER_NUM, CUSTOMER_NAME, ORDER_NUM, ORDER_DATE
from customer
left join orders
on customer.CUSTOMER_NUM = orders.CUSTOMER_NUM
order by customer.CUSTOMER_NUM;

--Example 18 pg. 159
select customer.CUSTOMER_NUM, CUSTOMER_NAME, ORDER_NUM, ORDER_DATE
from customer, orders;
