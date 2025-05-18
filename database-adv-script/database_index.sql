-- Task 3. Create Indexes for Optimization

-- 3.1 Measure query performance before adding indexes
EXPLAIN ANALYZE
SELECT * 
FROM bookings
WHERE user_id = 1;

EXPLAIN ANALYZE
SELECT * 
FROM bookings
WHERE property_id = 1;

-- 3.2 Create indexes on high-usage columns
CREATE INDEX idx_bookings_user_id
  ON bookings(user_id);

CREATE INDEX idx_bookings_property_id
  ON bookings(property_id);

CREATE INDEX idx_reviews_property_id
  ON reviews(property_id);

CREATE INDEX idx_bookings_check_in
  ON bookings(check_in);

-- 3.3 Measure performance after adding indexes
EXPLAIN ANALYZE
SELECT * 
FROM bookings
WHERE user_id = 1;

EXPLAIN ANALYZE
SELECT * 
FROM bookings
WHERE property_id = 1;
