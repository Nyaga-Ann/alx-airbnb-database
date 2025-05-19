# Database Performance Monitoring Report

## Query 1:
```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
CREATE INDEX idx_booking_start_date ON Booking(start_date);

SELECT * FROM User WHERE email = 'example@mail.com';
CREATE INDEX idx_user_email ON User(email);


