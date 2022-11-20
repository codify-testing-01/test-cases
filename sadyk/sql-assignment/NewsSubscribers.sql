CREATE PROCEDURE solution()
BEGIN
	SELECT DISTINCT subscriber
    FROM
    (
        SELECT * FROM full_year
        UNION
        SELECT * FROM half_year
    ) AS fh
    WHERE fh.newspaper LIKE '%daily%'
    ORDER BY SUBSTRING_INDEX(subscriber, ' ', 1);
END