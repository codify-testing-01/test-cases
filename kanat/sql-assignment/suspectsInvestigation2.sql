CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT id, name, surname
	FROM Suspect
	WHERE height<171 || surname NOT LIKE 'gre_n%' || name NOT LIKE 'b%'
	GROUP BY id;
END