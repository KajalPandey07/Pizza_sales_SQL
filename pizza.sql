-- q1. Retrieve the total number of orders placed.

select count(order_id) as total_orders from orders;


-- q2. Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;
    
    
-- q3. Identify the highest-priced pizza.
 
SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
    order by  pizzas.price desc limit 1;

-- q4.Identify the most common pizza size ordered.

select quantity, count(order_details_id)
from order_details group by quantity;































 
 
 
