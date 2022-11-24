CREATE PROCEDURE solution() BEGIN
SELECT
    *
FROM
    users
WHERE
    attribute like binary concat('%_\%', first_name, '\_', second_name, '\%%')
ORDER BY
    attribute;

END