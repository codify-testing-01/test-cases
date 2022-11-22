CREATE PROCEDURE solution() BEGIN
SELECT
	id,
	name,
	surname
FROM
	Suspect
WHERE
	surname like 'Gre_n'
	and name like 'B%'
	and height <= 170
ORDER BY
	id;

END