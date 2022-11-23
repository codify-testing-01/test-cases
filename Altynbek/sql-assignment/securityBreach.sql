CREATE PROCEDURE solution()
BEGIN
	SELECT first_name, second_name, attribute
	FROM users
	WHERE attribute LIKE Binary concat ('_%\%', first_name, '\_', second_name, '\%%')
	ORDER BY attribute;
END