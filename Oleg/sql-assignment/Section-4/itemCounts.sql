CREATE PROCEDURE solution()
BEGIN
<<<<<<< HEAD
SELECT item_name, item_type, count(*) as item_count FROM availableItems
GROUP BY item_name, item_type ORDER BY item_type, item_name;
END
=======
SELECT item_name, item_type, count(*) as item_count FROM availableItems GROUP BY item_name, item_type ORDER BY item_type, item_name;
END
>>>>>>> b9aa6e7e67eda439c6c1398e4bfba45622509449
