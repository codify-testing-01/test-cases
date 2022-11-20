CREATE PROCEDURE solution()
BEGIN
	SELECT
	id, a, b, operation, c
	FROM expressions
	WHERE case WHEN operation = '+' THEN a + b
				WHEN operation = '-' THEN a - b
				WHEN operation = '/' THEN a / b
				WHEN operation = '*' THEN a * b
	END = c
	ORDER BY id;
END