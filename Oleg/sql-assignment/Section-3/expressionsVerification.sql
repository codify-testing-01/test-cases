
CREATE PROCEDURE solution()
BEGIN
<<<<<<< HEAD
SELECT *
FROM expressions
WHERE (operation = '+' AND a+b = c)
    OR (operation = '-' AND a-b = c)
    OR (operation = '*' AND a*b = c)
    OR (operation = '/' AND a/b = c)
ORDER BY id;
END
=======
SELECT * FROM expressions
WHERE (operation = '+' AND a+b = c)
   OR (operation = '-' AND a-b = c)
   OR (operation = '*' AND a*b = c)
   OR (operation = '/' AND a/b = c)
ORDER BY id;
END
>>>>>>> b9aa6e7e67eda439c6c1398e4bfba45622509449
