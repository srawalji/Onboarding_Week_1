-- Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000
SELECT FIRST_NAME, LAST_NAME
FROM WORKER
WHERE SALARY >= 50000 AND SALARY <= 100000

-- Write an SQL query to fetch the no. of workers for each department in the descending order.
SELECT DEPARTMENT, COUNT(DEPARTMENT)
FROM WORKER
ORDER BY COUNT(DEPARTMENT) DESC

-- Write an SQL query to fetch intersecting records of two tables.
SELECT * 
FROM WORKER
JOIN TITLE ON WORKER.WORKER_ID = TITLE.WORKER_REF_ID

-- Write an SQL query to determine the 5th highest salary without using TOP or limit method.
WITH TEMP AS (SELECT ROW_NUMBER() OVER (ORDER BY SALARY) AS Row, SALARY 
        FROM WORKER)
SELECT SALARY
FROM WORKER
WHERE Row = 5
