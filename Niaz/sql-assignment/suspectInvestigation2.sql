CREATE PROCEDURE solution()
BEGIN
SELECT id, NAME, surname FROM suspect
WHERE height <= 170
OR lower(NAME) NOT LIKE 'b%'
OR lower(surname) NOT LIKE 'Gre_n';
END