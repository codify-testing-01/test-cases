CREATE PROCEDURE solution()
BEGIN
SELECT WEEKDAY(mischief_date) as weekday, mischief_date, author, title FROM mischief
ORDER BY weekday, FIELD(author,"Huey", "Dewey","Louie"), mischief_date, title;
<<<<<<< HEAD
END
=======
END
>>>>>>> b9aa6e7e67eda439c6c1398e4bfba45622509449
