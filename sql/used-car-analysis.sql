CREATE DATABASE car_analysis;
USE car_analysis;
SELECT *
FROM cardekho_dataset
LIMIT 10;
SELECT COUNT(*) AS total_cars
FROM cardekho_dataset;
SELECT ROUND(AVG(selling_price),0) AS avg_selling_price
FROM cardekho_dataset;
SHOW COLUMNS FROM cardekho_dataset;
SELECT
    fuel_type,
    COUNT(*) AS total_cars
FROM cardekho_dataset
GROUP BY fuel_type
ORDER BY total_cars DESC;
SELECT
    brand,
    COUNT(*) AS total_cars
FROM cardekho_dataset
GROUP BY brand
ORDER BY total_cars DESC
LIMIT 10;
SELECT
    brand,
    ROUND(AVG(selling_price),0) AS avg_price
FROM cardekho_dataset
GROUP BY brand
ORDER BY avg_price DESC
LIMIT 10;
SELECT
    fuel_type,
    ROUND(AVG(selling_price),0) AS avg_price
FROM cardekho_dataset
GROUP BY fuel_type
ORDER BY avg_price DESC;
SELECT
    brand,
    ROUND(AVG(vehicle_age),1) AS avg_vehicle_age
FROM cardekho_dataset
GROUP BY brand
ORDER BY avg_vehicle_age DESC
LIMIT 10;
SELECT
    brand,
    selling_price,
    CASE
        WHEN selling_price < 500000 THEN 'Budget'
        WHEN selling_price < 1000000 THEN 'Mid Range'
        ELSE 'Premium'
    END AS price_segment
FROM cardekho_dataset
LIMIT 20;
SELECT
    CASE
        WHEN selling_price < 500000 THEN 'Budget'
        WHEN selling_price < 1000000 THEN 'Mid Range'
        ELSE 'Premium'
    END AS price_segment,
    COUNT(*) AS total_cars
FROM cardekho_dataset
GROUP BY price_segment;
SELECT
    fuel_type,
    COUNT(*) AS total_cars,
    ROUND(AVG(selling_price),0) AS avg_price
FROM cardekho_dataset
GROUP BY fuel_type
ORDER BY avg_price DESC;
