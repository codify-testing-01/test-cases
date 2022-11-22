CREATE PROCEDURE solution() BEGIN
SELECT
    subscriber
FROM
    full_year
WHERE
    newspaper like '%Daily%'
UNION
SELECT
    subscriber
FROM
    half_year
WHERE
    newspaper like '%Daily%'
ORDER BY
    subscriber;

END