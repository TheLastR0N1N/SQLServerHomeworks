DROP TABLE IF EXISTS #Cart1;
DROP TABLE IF EXISTS #Cart2;

CREATE TABLE #Cart1
(
    Item  VARCHAR(100) PRIMARY KEY
);

CREATE TABLE #Cart2
(
    Item  VARCHAR(100) PRIMARY KEY
);

INSERT INTO #Cart1 (Item) 
VALUES ('Sugar'),('Bread'),('Juice'),('Soda'),('Flour');

INSERT INTO #Cart2 (Item) 
VALUES ('Sugar'),('Bread'),('Butter'),('Cheese'),('Fruit');

select * from #Cart1
select * from #Cart2

SELECT * FROM #Cart1
FULL JOIN #Cart2 ON #Cart1.Item = #Cart2.Item
ORDER BY #Cart1.Item DESC