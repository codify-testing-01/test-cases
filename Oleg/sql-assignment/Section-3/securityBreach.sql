CREATE PROCEDURE solution()
BEGIN
<<<<<<< HEAD
SELECT first_name, second_name, attribute FROM users
WHERE BINARY attribute LIKE  CONCAT('_%', CONCAT('\%',first_name, '\_',second_name,'\%'), '%');
END
=======
SELECT first_name, second_name, attribute FROM users WHERE BINARY attribute 
LIKE  CONCAT('_%', CONCAT('\%',first_name, '\_',second_name,'\%'), '%');
END
>>>>>>> b9aa6e7e67eda439c6c1398e4bfba45622509449
