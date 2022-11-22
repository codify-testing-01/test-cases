CREATE PROCEDURE solution()
BEGIN
SELECT id, name, surname
FROM suspect
WHERE height <= 170
AND name LIKE 'B%'
AND surname LIKE 'Gre_n'
ORDER by id;	/* Write your SQL here. Terminate each statement with a semicolon. */
END