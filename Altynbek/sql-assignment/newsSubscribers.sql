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
	WHERE newspaper LIKE '%Daily%') full
	ORDER BY subscriber;
END