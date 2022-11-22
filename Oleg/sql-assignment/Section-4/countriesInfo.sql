CREATE PROCEDURE solution()
BEGIN
SELECT COUNT(name) as number, AVG(population) as average, sum(population) as total FROM countries;
END
