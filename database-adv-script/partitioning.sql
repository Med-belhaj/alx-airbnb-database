-- Task 5. Table Partitioning on Booking Table

-- 5.1 Define parent bookings table with partitioning scheme
CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  property_id INT NOT NULL,
  check_in DATE NOT NULL,
  check_out DATE,
  total_price NUMERIC
) PARTITION BY RANGE (check_in);

-- 5.2 Create yearly partitions
CREATE TABLE bookings_2025 PARTITION OF bookings
  FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

CREATE TABLE bookings_2026 PARTITION OF bookings
  FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

-- 5.3 Indexes on partitions
CREATE INDEX idx_bookings_2025_user_id
  ON bookings_2025(user_id);

CREATE INDEX idx_bookings_2026_user_id
  ON bookings_2026(user_id);
