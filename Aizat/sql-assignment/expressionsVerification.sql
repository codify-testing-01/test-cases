CREATE PROCEDURE solution()
BEGIN
SELECT * FROM expressions
WHERE (operation = '+' && c = a+b)
|| (operation = '-' && c = a-b)
|| (operation = '/' && c = a/b)
|| (operation = '*' && c = a*b);
END