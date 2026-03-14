SELECT * FROM airbnb_list

SELECT * FROM airbnb_list 
LIMIT 10

SELECT COUNT(*)FROM airbnb_list;

SELECT room_type,
       ROUND(AVG(price),2) AS avg_price
FROM airbnb_list
GROUP BY room_type
ORDER BY avg_price DESC;

SELECT neighbourhood,
       SUM(price * availability_365) AS estimated_revenue
FROM airbnb_list
GROUP BY neighbourhood
ORDER BY estimated_revenue DESC
LIMIT 5;

SELECT neighbourhood_group,
       COUNT(*) AS total_listings
FROM airbnb_list
GROUP BY neighbourhood_group
ORDER BY total_listings DESC;



