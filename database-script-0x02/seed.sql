-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
  ('u1', 'Ann', 'Nyaga', 'ann@example.com', 'hashedpass1', '0712345678', 'guest'),
  ('u2', 'Philip', 'Wambura', 'philip@example.com', 'hashedpass2', '0798765432', 'host'),
  ('u3', 'Admin', 'User', 'admin@example.com', 'hashedadmin', '0700111222', 'admin');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('p1', 'u2', 'Beach House', 'Beautiful beach house with ocean view', 'Mombasa', 8000.00),
  ('p2', 'u2', 'Mountain Cabin', 'Rustic cabin in the hills', 'Naivasha', 6500.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b1', 'p1', 'u1', '2025-05-10', '2025-05-12', 16000.00, 'confirmed'),
  ('b2', 'p2', 'u1', '2025-06-01', '2025-06-04', 19500.00, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay1', 'b1', 16000.00, 'paypal'),
  ('pay2', 'b2', 19500.00, 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('r1', 'p1', 'u1', 5, 'Amazing stay! Loved the view and the host.'),
  ('r2', 'p2', 'u1', 4, 'Quiet and cozy place.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m1', 'u1', 'u2', 'Hi, is the beach house available in June?'),
  ('m2', 'u2', 'u1', 'Yes, it is. You can book anytime.');
