CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT id, name, surname FROM Suspect
	WHERE height <= 170 OR name NOT LIKE "B%" OR surname NOT LIKE "Gre_n"
	ORDER BY id;
END