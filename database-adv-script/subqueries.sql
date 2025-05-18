-- 1. Non-correlated subquery: properties with average rating > 4.0
SELECT
  p.id         AS property_id,
  p.title      AS property_title
FROM properties AS p
WHERE (
  SELECT AVG(r.rating)
  FROM reviews AS r
  WHERE r.property_id = p.id
) > 4.0;


-- 2. Correlated subquery: users who have made more than 3 bookings
SELECT
  u.id,
  u.first_name,
  u.last_name,
  (
    SELECT COUNT(*)
    FROM bookings AS b
    WHERE b.user_id = u.id
  ) AS booking_count
FROM users AS u
WHERE (
  SELECT COUNT(*)
  FROM bookings AS b
  WHERE b.user_id = u.id
) > 3;
