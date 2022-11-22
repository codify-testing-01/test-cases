CREATE PROCEDURE solution()
BEGIN
<<<<<<< HEAD
SELECT subscriber FROM full_year WHERE newspaper LIKE '%Daily%' UNION
SELECT subscriber FROM half_year WHERE newspaper LIKE '%Daily%' ORDER BY subscriber;
END
=======
SELECT subscriber FROM full_year WHERE newspaper LIKE '%Daily%' UNION 
SELECT subscriber FROM half_year WHERE newspaper LIKE '%Daily%' ORDER BY subscriber;
END
>>>>>>> b9aa6e7e67eda439c6c1398e4bfba45622509449
