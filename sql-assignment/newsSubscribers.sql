CREATE PROCEDURE solution()
BEGIN
	SELECT subscriber FROM full_year WHERE newspaper LIKE '%daily%'
    UNION (SELECT subscriber FROM half_year WHERE newspaper LIKE '%daily%')
    ORDER BY subscriber;
END