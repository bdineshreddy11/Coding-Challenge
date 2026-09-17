create database onlinefood;
use onlinefood;
show tables;
create table customer ( customer_id int primary key ,name varchar(50),city  varchar(50));
create table orders ( order_id int primary key,customer_id int ,restaurant varchar(50),amount decimal(10,2),order_date date ,foreign key (customer_id) references customer(customer_id)) ;
INSERT INTO Customer(customer_id, name, city) VALUES
(1, 'Arjun', 'Bengaluru'),
(2, 'Sneha', 'Hyderabad'),
(3, 'Rahul', 'Chennai'),
(4, 'Priya', 'Bengaluru'),
(5, 'Kiran', 'Mumbai'),
(6, 'Divya', 'Bengaluru'),
(7, 'Vikram', 'Hyderabad'),
(8, 'Asha', 'Chennai'),
(9, 'Manoj', 'Pune'),
(10, 'Swathi', 'Bengaluru'); 
INSERT INTO Orders (order_id, customer_id, restaurant, amount, order_date) VALUES
(101, 1, 'Meghana Foods', 550.00, '2025-01-01'),
(102, 2, 'Paradise Biryani', 780.00, '2025-01-03'),
(103, 3, 'KFC', 420.00, '2025-01-05'),
(104, 1, 'Empire Restaurant', 300.00, '2025-01-08'),
(105, 4, 'Meghana Foods', 950.00, '2025-01-10'),
(106, 6, 'Truffles', 1100.00, '2025-01-11'),
(107, 7, 'Kritunga', 650.00, '2025-01-12'),
(108, 4, 'KFC', 350.00, '2025-01-14'),
(109, 9, 'Burger King', 270.00, '2025-01-15'),
(110, 10, 'Meghana Foods', 1250.00, '2025-01-16');
select  * from customer;
# Tasks 
# 1. List all customers who have placed at least one order.
 select distinct c.customer_id, c.name ,o.restaurant from customer c join orders o on c.customer_id = o.customer_id  
 # 2. Find the total amount spent by each customer.
 select  c.customer_id , c.name ,sum(o.amount) as total_amount  from customer c join orders o on c.customer_id = o.customer_id group by c.customer_id ;
#3. Display the top 3 customers based on total spending.
 select  c.customer_id , c.name ,sum(o.amount) as total_spending  from customer c
 join orders o on c.customer_id = o.customer_id 
 group by c.customer_id  order by sum(o.amount) desc  limit 3;
 #4. Retrieve all orders placed in the last 7 days (from latest order date).
  select * from orders where order_date >= ( select max(order_date ) from orders) - interval 7 day;
  #5 5. Show customers who have never placed an order. 
select c.customer_id ,o.restaurant  from customer c left join orders o on c.customer_id = o.customer_id  where o.restaurant is null 
# 6. Find the restaurant that received the highest number of orders.
 select restaurant , count(restaurant) as total_restaurant from orders group by restaurant  order by count(restaurant) desc limit 1;
 # 7. List customers from “Bengaluru” who spent more than ₹1000.
 select c.customer_id,c.name ,sum(o.amount) as total_amount   from customer c join orders o  on c.customer_id = o.customer_id where c.city ="Bengaluru" group by c.customer_id  having total_amount  >=1000 
# 8. Show the total number of orders placed per city.
 select c.city , count(o.order_id) as total_orders  from customer c join  orders o on c.customer_id = o.customer_id group by  c.city 
 