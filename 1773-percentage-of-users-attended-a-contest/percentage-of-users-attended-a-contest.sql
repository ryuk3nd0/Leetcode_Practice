/* Write your T-SQL query statement below */

DECLARE @total_users INT;
SELECT @total_users = COUNT(*) FROM Users;

SELECT 
    R.contest_id,
    ROUND(COUNT(DISTINCT R.user_id) * 1.0 / @total_users * 100, 2) AS percentage
FROM Register AS R
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id ASC;
