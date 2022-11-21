CREATE PROCEDURE solution()
BEGIN
SELECT id, NAME, surname
FROM suspect
WHERE height <=170 AND NAME LIKE 'B%' 
AND surname LIKE 'Gre_n'
ORDER BY id;
END