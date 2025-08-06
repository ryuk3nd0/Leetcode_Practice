/* Write your T-SQL query statement below */
SELECT 
    R.contest_id,
    ROUND(COUNT(DISTINCT R.user_id) * 1.0 / 
          (SELECT COUNT(*) FROM Users) * 100, 2) AS percentage
FROM Register AS R
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id ASC;
