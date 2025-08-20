# Airbnb Database Seeding Script

This directory contains sample data to populate the Airbnb-like database.

## Files
- **seed.sql** → SQL script with `INSERT` statements for all tables.

## Sample Data Coverage
- **Users**: 4 sample users (host, guests, admin).
- **Properties**: 2 listings hosted by Alice.
- **Bookings**: Reservations made by guests.
- **Payments**: Linked payments for bookings.
- **Reviews**: Ratings and comments from guests.
- **Messages**: Direct messages between host and guest.

## Usage
1. Ensure the database schema has already been created (`schema.sql` from `database-script-0x01`).
2. Run the seed script:
   ```bash
   psql -U username -d database -f seed.sql
