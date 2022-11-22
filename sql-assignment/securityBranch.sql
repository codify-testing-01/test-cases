CREATE PROCEDURE solution()
BEGIN
	SELECT *
	FROM users
	WHERE attribute LIKE Binary CONCAT ('%_\%%',
	first_name, '\_', second_name, '%\%%')
	ORDER BY attribute;
END