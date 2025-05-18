-- Task 5. Table Partitioning on Booking Table

-- Example: Range partitioning by year on check_in date (PostgreSQL)
CREATE TABLE bookings_2025 PARTITION OF bookings
  FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Ensure partitioned table inherits same constraints/indexes
CREATE INDEX idx_bookings_2025_user_id
  ON bookings_2025(user_id);
