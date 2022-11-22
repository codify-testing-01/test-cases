CREATE PROCEDURE solution()
BEGIN
SELECT name FROM Products ORDER BY price*quantity DESC, name LIMIT 1;
<<<<<<< HEAD
END
=======
END
>>>>>>> b9aa6e7e67eda439c6c1398e4bfba45622509449
