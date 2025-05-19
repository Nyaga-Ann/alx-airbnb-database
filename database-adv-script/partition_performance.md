# Partition Performance Report

## Partitioning Strategy
Partitioned the `Booking` table by the `start_date` column using `RANGE` partitioning by year.

## Query Tested
```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
