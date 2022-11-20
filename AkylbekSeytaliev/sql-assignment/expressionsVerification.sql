CREATE PROCEDURE solution()
BEGIN
	SELECT * from expressions
	WHERE (operation='+' AND c=a+b)
        OR(operation='-' AND c=a-b)
        OR(operation='/' AND c=a/b)
        OR(operation='*' AND c=a*b);
END