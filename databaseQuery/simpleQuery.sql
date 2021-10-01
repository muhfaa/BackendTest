CREATE TABLE Table1
    (`id` int, `username` varchar(20), `parent` int)
;
    
INSERT INTO Table1
    (`id`, `username`, `parent`)
VALUES
    (1, 'Ali',2),
    (2, 'Budi',0),
    (3, 'Cecep', 1)
;


SELECT t1.id, t1.username, t2.username AS parentUserName
FROM table1 AS t1
LEFT JOIN table1 AS t2 ON t1.parent = t2.id
ORDER BY t1.id
