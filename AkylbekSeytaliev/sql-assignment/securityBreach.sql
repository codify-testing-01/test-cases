CREATE PROCEDURE solution() BEGIN
SELECT
    *
FROM
    users
WHERE
    attribute REGEXP concat('.+%', first_name, '_', second_name, '%.*')
ORDER BY
    attribute;

END