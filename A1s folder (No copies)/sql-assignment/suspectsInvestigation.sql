CREATE PROCEDURE solution()
BEGIN
	SELECT id, name, surname
	FROM Suspect
	WHERE height <= 170 AND (name) LIKE 'b%' AND (surname) LIKE 'gre_n' ORDER BY id ASC;
END
