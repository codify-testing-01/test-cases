CREATE PROCEDURE solution()
BEGIN
    SELECT id, name, surname 
  FROM Suspect 
  WHERE height <= 170 
  OR name not LIKE'B%' 
  OR surname not LIKE 'Gre_n'
  ORDER BY id;
END