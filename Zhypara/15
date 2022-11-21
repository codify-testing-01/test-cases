CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT id, a, b, operation, c FROM (
		SELECT id, a, b, operation, c,
		CASE
			WHEN operation='+' THEN a+b
			WHEN operation='-' THEN a-b
			WHEN operation='*' THEN a*b
			WHEN operation='/' THEN a/b
		END AS result
		FROM expressions
	) e
	WHERE e.result = e.c
	ORDER BY e.id;
END