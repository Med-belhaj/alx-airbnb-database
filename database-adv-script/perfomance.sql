-- Task 4. Initial Complex Query for Performance Testing

-- 4.1 Measure performance of initial query using EXPLAIN ANALYZE
EXPLAIN ANALYZE
SELECT
  b.id               AS booking_id,
  u.first_name       AS user_first,
  u.last_name        AS user_last,
  p.title            AS property_title,
  pay.amount         AS payment_amount,
  pay.payment_date
FROM bookings AS b
JOIN users AS u
  ON b.user_id = u.id
JOIN properties AS p
  ON b.property_id = p.id
LEFT JOIN payments AS pay
  ON b.id = pay.booking_id
WHERE b.check_in >= '2025-01-01'
  AND b.check_out <= '2025-12-31';
