# 6. Monitor and Refine Database Performance

**Monitoring Tools:**  
- `EXPLAIN ANALYZE`  
- `pg_stat_statements` (PostgreSQL extension)

**Procedure:**  
1. Identify slow queries via `pg_stat_statements`.  
2. Run `EXPLAIN ANALYZE` on each.  
3. Apply recommended indexes or rewrite queries.  
4. Document before/after metrics.

**Example Entry:**
| Query                                   | Before (ms) | After (ms) | Improvement |
|-----------------------------------------|-------------|------------|-------------|
| `SELECT * FROM bookings WHERE user_id=?`| 45          | 5          | 88%         |
