
CREATE PROCEDURE solution()
BEGIN
SELECT *
FROM expressions
WHERE (operation = '+' AND a+b = c)
    OR (operation = '-' AND a-b = c)
    OR (operation = '*' AND a*b = c)
    OR (operation = '/' AND a/b = c)
ORDER BY id;
END