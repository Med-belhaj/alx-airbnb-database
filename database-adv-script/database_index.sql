-- Task 3. Create Indexes for Optimization

-- Index on bookings.user_id for faster user-booking joins
CREATE INDEX idx_bookings_user_id
  ON bookings(user_id);

-- Index on bookings.property_id for faster property-booking joins
CREATE INDEX idx_bookings_property_id
  ON bookings(property_id);

-- Index on reviews.property_id for queries filtering by property
CREATE INDEX idx_reviews_property_id
  ON reviews(property_id);

-- Index on bookings.check_in for range queries on dates
CREATE INDEX idx_bookings_check_in
  ON bookings(check_in);
