-- 1. Total number of bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- 2. Rank properties by number of bookings using ROW_NUMBER()
SELECT 
    property_id,
    COUNT(*) AS booking_count,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_number_rank
FROM bookings
GROUP BY property_id;

-- 3. Rank properties by number of bookings using RANK()
SELECT 
    property_id,
    COUNT(*) AS booking_count,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_position
FROM bookings
GROUP BY property_id;


