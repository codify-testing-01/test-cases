CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT * FROM expressions
	WHERE CASE operation
		WHEN '+' THEN a+b
		WHEN '-' THEN a-b
		WHEN '*' THEN a*b
		WHEN '/' THEN a/b
		END = c;
END