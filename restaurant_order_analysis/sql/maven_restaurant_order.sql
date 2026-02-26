SELECT count(*) from menu_items mi ;

SELECT * from menu_items mi ;

--Least And most expensive
SELECT 
MIN(price) AS minimum_price,
MAX(price) AS maximum_price
from menu_items;

--For All items
SELECT * from menu_items mi 
ORDER BY price;

-- Italian dishes
SELECT * from menu_items mi 
WHERE category ='Italian'
ORDER by price;

--Least and most expensive Italian dishes
SELECT * from menu_items mi 
WHERE category ='Italian'
ORDER by price Desc;

--How many dishes in each category
SELECT category,count(menu_item_id) AS num_dishes
from menu_items mi 
GROUP BY category;

--What is avg Dish price for each category
SELECT category,Round(AVG(price ),2) AS dish_price
from menu_items mi 
GROUP BY category;

--Objective 2
-----Order details
SELECT * from order_details od ;

--what is the date range of the table
SELECT * from order_details od 
ORDER BY od.order_details_id ;

SELECT MIN(order_date),MAX(order_date) from order_details od ;

--How many orders were made in the date range
SELECT count(DISTINCT order_id) from order_details od;

--How many items were ordered within the range
SELECT count(item_id ) from order_details od ;

--Which orders had most  items
SELECT order_id,COUNT(item_id) AS num_items
from order_details od
GROUP by od.order_id 
ORDER By num_items ;

--HOw many had more than 12 items
SELECT count(*)
from

(SELECT order_id,COUNT(item_id) AS num_items
from order_details od
GROUP by od.order_id 
Having num_items>12) AS num_orders;

--Objective 3
--Combine the menu and order tabes into a single table
SELECT * from order_details AS od
Left JOIN menu_items AS mi 
ON od.item_id = mi.menu_item_id;

--What Are the least and most ordered items? What categories were they in?
SELECT item_name,category,count(order_details_id ) as num_purchases 
from order_details AS od
Left JOIN menu_items AS mi 
ON od.item_id = mi.menu_item_id
Group by item_name,category
Order by num_purchases;

--What were the top 5 orders that spent most money
SELECT order_id,sum(price) As total_spent
from order_details AS od
Left JOIN menu_items AS mi 
ON od.item_id = mi.menu_item_id
Group by item_name ,category
Order by od.order_id 
LIMIT 5;

--View the details od the highest spend order.What insights can you gather
SELECT category,count(item_id) AS num_items
from order_details AS od
Left JOIN menu_items AS mi 
ON od.item_id = mi.menu_item_id
Where order_id=440
Group by category;

-- View Top 5 highest spent orders 
SELECT order_id,category,count(item_id) AS num_items
from order_details AS od
Left JOIN menu_items AS mi 
ON od.item_id = mi.menu_item_id
Where order_id IN (440,2075,1957,330,2675)
Group by order_id,category;