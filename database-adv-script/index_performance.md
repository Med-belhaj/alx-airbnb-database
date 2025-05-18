# 3. Implement Indexes for Optimization

**High-usage columns identified:**
- `bookings.user_id`
- `bookings.property_id`
- `reviews.property_id`
- `bookings.check_in`

**SQL Index Commands:**  
Contained in `database_index.sql`.

**Performance Measurement:**  
1. Run `EXPLAIN ANALYZE` on key queries before adding indexes.  
2. Apply the above indexes.  
3. Re-run `EXPLAIN ANALYZE` to observe reduced execution times and lower cost estimates.
