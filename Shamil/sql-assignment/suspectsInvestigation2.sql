REATE PROCEDURE solution()
BEGIN
SELECT id, name, surname
FROM Suspect
WHERE height <= 170
OR name NOT LIKE 'B%'
OR surname NOT LIKE 'Gre_n'
ORDER BY id;	/* Write your SQL here. Terminate each statement with a semicolon. */
END