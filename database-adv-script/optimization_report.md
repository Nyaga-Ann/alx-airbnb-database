# Optimization Report

## Initial Query

The original query joins `Booking`, `User`, `Property`, and `Payment`. It selects many columns, which may slow down execution.

## Performance Analysis

Using `EXPLAIN ANALYZE`, we noticed that the join on `Payment` and selection of all fields increases execution time.

## Optimization Techniques

- Reduced selected fields to only needed ones.
- Ensured indexes exist on:
  - `Booking.user_id`
  - `Booking.property_id`
  - `Payment.booking_id`
- Removed redundant selections.

## Refactored Query

```sql
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
