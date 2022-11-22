CREATE PROCEDURE solution()
BEGIN
SELECT DISTINCT subscriber
FROM (SELECT * FROM full_year 
UNION SELECT * FROM half_year) AS u
WHERE u.newspaper LIKE '%Daily%'
ORDER BY subscriber;
END