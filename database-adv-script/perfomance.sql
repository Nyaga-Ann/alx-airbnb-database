-- Initial complex query with WHERE and AND
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.id
JOIN 
    Property p ON b.property_id = p.id
LEFT JOIN 
    Payment pay ON pay.booking_id = b.id
WHERE 
    p.location = 'Nairobi'
    AND pay.status = 'completed';


-- Refactored query with assumed indexing
EXPLAIN ANALYZE
SELECT 
    b.id, u.name, p.name, pay.amount
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.id
JOIN 
    Property p ON b.property_id = p.id
LEFT JOIN 
    Payment pay ON pay.booking_id = b.id;

