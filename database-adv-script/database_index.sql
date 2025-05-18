-- Index on email to optimize login and lookups
CREATE INDEX idx_user_email ON User(email);

-- Index on role to quickly filter guests, hosts, or admins
CREATE INDEX idx_user_role ON User(role);

-- Index on host_id for filtering properties by host
CREATE INDEX idx_property_host_id ON Property(host_id);

-- Index on location to improve search/filtering
CREATE INDEX idx_property_location ON Property(location);

-- Index on property_id for faster joins in Booking and Review
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_review_property_id ON Review(property_id);

-- Index on user_id for faster joins in Booking and Review
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_review_user_id ON Review(user_id);

-- Index on start_date to support range queries and sorting
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Index on status to improve filtering by booking status
CREATE INDEX idx_booking_status ON Booking(status);

-- Index on payment_date for payment history queries
CREATE INDEX idx_payment_date ON Payment(payment_date);

-- Indexes for messaging performance
CREATE INDEX idx_message_sender_id ON Message(sender_id);
CREATE INDEX idx_message_recipient_id ON Message(recipient_id);
