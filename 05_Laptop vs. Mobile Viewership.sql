-- Assume you're given the table on user viewership categorised by device type where the three types are laptop, tablet, and phone.
-- Write a query that calculates the total viewership for laptops and mobile devices where mobile is defined as the sum of tablet and phone viewership. 
--Output the total viewership for laptops as laptop_reviews and the total viewership for mobile devices as mobile_views.
SELECT 
SUM(CASE WHEN device_type IN ('laptop') THEN 1 ELSE 0 END) AS laptop_reviews,
SUM(CASE WHEN device_type IN ('phone', 'tablet') THEN 1 ELSE 0 END) AS mobile_views
FROM viewership;

