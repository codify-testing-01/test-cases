CREATE PROCEDURE solution()
BEGIN
SELECT *
FROM (
	SELECT subscriber
	FROM full_year
	WHERE newspaper LIKE '%Daily%'
	UNION
	SELECT subscriber
	FROM half_year
	WHERE newspaper LIKE '%Daily%') FULL
	ORDER BY subscriber;	/* Write your SQL here. Terminate each statement with a semicolon. */
END