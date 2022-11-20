CREATE PROCEDURE solution()
BEGIN
	SELECT id,name,surname from suspect
	WHERE height <= 170 or surname not like 'Gre_n' or name not like 'B%'
	order by id;
END