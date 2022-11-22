CREATE PROCEDURE solution()
<<<<<<< HEAD
SELECT id, IF (given_answer is NULL, "no answer", IF(given_answer = correct_answer, "correct", "incorrect")) AS checks
FROM answers ORDER BY id;
=======
SELECT id, IF (given_answer is NULL, "no answer", IF(given_answer = correct_answer, "correct", "incorrect")) AS checks FROM answers ORDER BY id;
>>>>>>> b9aa6e7e67eda439c6c1398e4bfba45622509449
