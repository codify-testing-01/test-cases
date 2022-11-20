CREATE PROCEDURE solution()
BEGIN
	SELECT id, name, surname
	FROM Suspect
	Where height <=170 OR name NOT LIKE 'B%' OR surname NOT LIKE 'gre_n' ORDER BY id ASC;
END
