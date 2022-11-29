CREATE PROCEDURE solution()
BEGIN
SELECT id, name, surname
FROM Suspect
WHERE height <= 170 or LOWER(name) NOT LIKE 'B%' or LOWER(surname) NOT LIKE 'Gre_n'
ORDER BY Id;
END
