# Airbnb Database Schema

This directory contains the SQL script that defines the schema for the Airbnb-like platform.

## Files
- **schema.sql** → SQL `CREATE TABLE` statements with constraints and indexes.

## Features
- **Normalization**: Schema is normalized to **3NF** (no redundant data, atomic fields).
- **Constraints**:
  - Primary keys (`UUID`).
  - Foreign keys for relationships between tables.
  - Unique constraints (e.g., email).
  - ENUMs for controlled values (roles, booking status, payment methods).
  - CHECK constraint for `Review.rating` (1–5).
- **Indexes**:
  - `User.email` for faster login queries.
  - Foreign key columns (`property_id`, `user_id`, `booking_id`, etc.) for optimized joins.

## Entities
1. **User**
   - Stores guest, host, and admin details.
2. **Property**
   - Stores listings, hosted by users.
3. **Booking**
   - Stores reservations of properties by guests.
4. **Payment**
   - Stores payment details for bookings.
5. **Review**
   - Stores user feedback and ratings for properties.
6. **Message**
   - Stores private messages between users.

## Usage
1. Open your SQL client (e.g., MySQL, PostgreSQL).
2. Run the schema script:
   ```bash
   psql -U username -d database -f schema.sql
