CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT * FROM users
	WHERE attribute LIKE BINARY CONCAT('_%\%', first_name, '\_', second_name, '\%%')
	ORDER BY attribute;
END