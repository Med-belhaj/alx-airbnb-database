# 5. Partitioning Large Tables

**Partitioning Strategy:**  
- Range partition bookings by year on `check_in`.

**Testing Performance:**  
1. Query bookings for 2025 before partitioning and note execution time.  
2. After partitioning, run the same query:
   ```sql
   SELECT * FROM bookings
   WHERE check_in BETWEEN '2025-01-01' AND '2025-12-31';
