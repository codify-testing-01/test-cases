CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT DISTINCT subscriber
	FROM (
		SELECT subscriber FROM full_year WHERE newspaper LIKE '%Daily%'
        UNION
        SELECT subscriber FROM half_year WHERE newspaper LIKE '%Daily%') as sub
		ORDER BY subscriber;
END