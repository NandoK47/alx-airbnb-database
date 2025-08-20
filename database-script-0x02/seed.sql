-- Airbnb Sample Data (Seeding Script)

-- Clear existing data (in dependency order)

DELETE FROM Message;
DELETE FROM Review;
DELETE FROM Payment;
DELETE FROM Booking;
DELETE FROM Property;
DELETE FROM "User";

INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '+250788111111', 'host'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '+250788222222', 'guest'),
  ('33333333-3333-3333-3333-333333333333', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pw3', '+250788333333', 'guest'),
  ('44444444-4444-4444-4444-444444444444', 'Diana', 'Williams', 'diana@example.com', 'hashed_pw4', '+250788444444', 'admin');

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('aaaa1111-aaaa-1111-aaaa-1111aaaa1111', '11111111-1111-1111-1111-111111111111', 'Lake House', 'Beautiful house by the lake', 'Musanze, Rwanda', 100.00),
  ('bbbb2222-bbbb-2222-bbbb-2222bbbb2222', '11111111-1111-1111-1111-111111111111', 'City Apartment', 'Modern apartment in downtown Kigali', 'Kigali, Rwanda', 75.00);

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('c1c1c1c1-0000-1111-2222-333344445555', 'aaaa1111-aaaa-1111-aaaa-1111aaaa1111', '22222222-2222-2222-2222-222222222222', '2025-08-01', '2025-08-05', 400.00, 'confirmed'),
  ('d2d2d2d2-0000-1111-2222-333344445555', 'bbbb2222-bbbb-2222-bbbb-2222bbbb2222', '33333333-3333-3333-3333-333333333333', '2025-08-10', '2025-08-12', 150.00, 'pending');

INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('e1e1e1e1-aaaa-1111-aaaa-1111aaaa1111', 'c1c1c1c1-0000-1111-2222-333344445555', 400.00, 'credit_card'),
  ('f2f2f2f2-bbbb-2222-bbbb-2222bbbb2222', 'd2d2d2d2-0000-1111-2222-333344445555', 150.00, 'paypal');

INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('g1g1g1g1-aaaa-1111-aaaa-1111aaaa1111', 'aaaa1111-aaaa-1111-aaaa-1111aaaa1111', '22222222-2222-2222-2222-222222222222', 5, 'Amazing stay, highly recommend!'),
  ('h2h2h2h2-bbbb-2222-bbbb-2222bbbb2222', 'bbbb2222-bbbb-2222-bbbb-2222bbbb2222', '33333333-3333-3333-3333-333333333333', 4, 'Nice apartment but a bit noisy.');

INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m1m1m1m1-aaaa-1111-aaaa-1111aaaa1111', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice, is the Lake House available in September?'),
  ('m2m2m2m2-bbbb-2222-bbbb-2222bbbb2222', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Yes, it is available. Would you like to book it?');

