-- Query performance BEFORE indexing
EXPLAIN ANALYZE SELECT * FROM User WHERE email = 'test@example.com';

-- Create indexes to optimize common query paths
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_property_location ON Property(location);

-- Query performance AFTER indexing
EXPLAIN ANALYZE SELECT * FROM User WHERE email = 'test@example.com';

