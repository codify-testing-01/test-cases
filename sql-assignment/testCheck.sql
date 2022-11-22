CREATE PROCEDURE solution()
    SELECT id, IF ( given_answer is NULL, 'no answer',
    if (given_answer = correct_answer, 'correct', 'incorrect')) AS checks
    FROM answers
    ORDER BY id;
