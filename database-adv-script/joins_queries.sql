-- 1. INNER JOIN: all bookings and the users who made them
SELECT
  b.id        AS booking_id,
  b.property_id,
  b.user_id,
  u.first_name,
  u.last_name,
  b.check_in,
  b.check_out,
  b.total_price
FROM bookings AS b
INNER JOIN users AS u
  ON b.user_id = u.id;


-- 2. LEFT JOIN: all properties and their reviews (including properties with no reviews)
SELECT
  p.id           AS property_id,
  p.title        AS property_title,
  r.id           AS review_id,
  r.user_id      AS reviewer_id,
  r.rating,
  r.comment,
  r.created_at   AS review_date
FROM properties AS p
LEFT JOIN reviews AS r
  ON p.id = r.property_id;


-- 3. FULL OUTER JOIN: all users and all bookings, even if unlinked
-- Note: PostgreSQL supports FULL OUTER JOIN. If using MySQL, simulate with UNION of LEFT + RIGHT.
SELECT
  u.id         AS user_id,
  u.email,
  b.id         AS booking_id,
  b.property_id,
  b.check_in,
  b.check_out
FROM users AS u
FULL OUTER JOIN bookings AS b
  ON u.id = b.user_id
ORDER BY u.id NULLS LAST, b.id NULLS LAST;
