CREATE PROCEDURE solution()
BEGIN
<<<<<<< HEAD
SELECT id, name, surname FROM Suspect WHERE height <= 170
    AND name like 'B%'
    AND surname like 'Gre_n'
ORDER BY id ASC;
END
=======
SELECT id, name, surname FROM Suspect WHERE height <= 170 AND name like 'B%' AND surname like 'Gre_n' ORDER BY id ASC;
END
>>>>>>> b9aa6e7e67eda439c6c1398e4bfba45622509449
