CREATE PROCEDURE solution()
BEGIN
    SELECT DISTINCT subscriber 
    FROM (SELECT * FROM full_year UNION SELECT * FROM half_year) as subs WHERE subs.newspaper LIKE '%Daily%'
    ORDER BY subscriber ASC;
END