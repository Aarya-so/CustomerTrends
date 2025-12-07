
CREATE DATABASE customer_behavior;
SHOW DATABASES;
USE customer_behavior;

select * from customer limit 20;
select review_rating from customer where review_rating > 3.0;

SELECT gender, SUM(purchase_amount) AS revenue
FROM customer
GROUP BY gender
ORDER BY revenue DESC;

select customer_id,purchase_amount
from customer
where discount_applied = 'Yes' and purchase_amount >= (select AVG(purchase_amount) FROM customer);

select DISTINCT category, ROUND(AVG(review_rating),2) as rating
from customer
group by category
ORDER BY AVG(review_rating) DESC
LIMIT 5;


SELECT subscription_status,
       COUNT(customer_id) AS total_customers,
       ROUND(AVG(purchase_amount),2) AS avg_spend,
       ROUND(SUM(purchase_amount),2) AS total_revenue
FROM customer
GROUP BY subscription_status
ORDER BY total_revenue,avg_spend DESC;

SELECT 
    age_group,
    SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY age_group
ORDER BY total_revenue desc;

SELECT subscription_status,
       COUNT(customer_id) AS repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status;

select Round(SUM(Purchase_EUR),2) as EUR,Round(SUM(Purchase_INR),2) as INR
from customer;



SELECT 
    gender,
    Round(SUM(Purchase_EUR),2) AS total_usd,
    Round(SUM(Purchase_INR),2) AS total_inr
FROM customer
GROUP BY gender;

SELECT 
    season,
    ROUND(SUM(Purchase_EUR),2) AS total_usd,
    ROUND(SUM(Purchase_INR),2) AS total_inr
FROM customer
GROUP BY season
ORDER BY total_usd DESC;











