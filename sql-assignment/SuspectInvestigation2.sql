CREATE PROCEDURE solution()
BEGIN
	SELECT id, name, surname
	FROM Suspect
	Where height <= 170 or lower(name) NOT LIKE 'B%' or lower(surname) NOT LIKE 'Gre_n'
	ORDER BY Id;
END