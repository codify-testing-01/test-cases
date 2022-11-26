CREATE PROCEDURE solution()
BEGIN
	SELECT id, name, surname FROM Suspect 
	WHERE height <= 170 
	AND name LIKE 'B%' 
	AND surname LIKE 'Gre_n'
	ORDER BY id;
END