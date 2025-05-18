# Index Performance Optimization

## Objective
To enhance the performance of queries on the User, Property, Booking, Review, Payment, and Message tables by creating indexes on frequently used columns.

---

## Identified High-Usage Columns

### User Table
- `email`: Frequently queried during login.
- `role`: Used to filter users by type (guest, host, admin).

### Property Table
- `host_id`: Used in JOINs and to filter properties by host.
- `location`: Common in search filters.

### Booking Table
- `property_id` and `user_id`: Common in JOINs.
- `start_date`: Used in date range queries.
- `status`: Used in filtering bookings.

### Review Table
- `property_id` and `user_id`: Common in JOINs or aggregations.

### Payment Table
- `payment_date`: Used to view or sort payment history.

### Message Table
- `sender_id` and `recipient_id`: Queried for inbox and sent messages.

---

## Indexes Created

```sql
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_role ON User(role);

CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_location ON Property(location);

CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);
CREATE INDEX idx_booking_status ON Booking(status);

CREATE INDEX idx_review_property_id ON Review(property_id);
CREATE INDEX idx_review_user_id ON Review(user_id);

CREATE INDEX idx_payment_date ON Payment(payment_date);

CREATE INDEX idx_message_sender_id ON Message(sender_id);
CREATE INDEX idx_message_recipient_id ON Message(recipient_id);
