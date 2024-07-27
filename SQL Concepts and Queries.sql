-- Create a new database named ORG
CREATE DATABASE ORG;

-- Switch to the ORG database
USE ORG;

-- Create a table named Worker
CREATE TABLE Worker (
    WORKER_ID INT NOT NULL PRIMARY KEY IDENTITY,
    FIRST_NAME CHAR(255),
    LAST_NAME CHAR(255),
    SALARY INT,
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(255)
);

-- Insert data into the Worker table
INSERT INTO Worker (FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES 
('John', 'Doe', 50000, '2023-01-15 08:30:00', 'HR'),
('Jane', 'Smith', 60000, '2023-02-20 09:00:00', 'IT'),
('Michael', 'Johnson', 55000, '2023-03-10 10:15:00', 'Finance'),
('Emily', 'Davis', 52000, '2023-04-05 11:30:00', 'Sales'),
('Daniel', 'Brown', 58000, '2023-05-15 12:45:00', 'IT'),
('Jessica', 'Wilson', 53000, '2023-06-20 14:00:00', 'HR'),
('David', 'Martinez', 57000, '2023-07-10 15:15:00', 'Finance'),
('Sarah', 'Anderson', 54000, '2023-08-25 16:30:00', 'Sales'),
('Ryan', 'Garcia', 59000, '2023-09-10 17:45:00', 'IT'),
('Olivia', 'Taylor', 56000, '2023-10-15 18:00:00', 'HR');

-- Select all records from Worker table
SELECT * FROM Worker;

-- Select workers with salary greater than 53000
SELECT * FROM Worker WHERE SALARY > 53000;

-- Select workers in the HR department
SELECT * FROM Worker WHERE DEPARTMENT = 'HR';

-- Select workers with salary between 50000 and 55000
SELECT * FROM Worker WHERE SALARY BETWEEN 50000 AND 55000;

-- Select workers in HR or IT departments
SELECT * FROM Worker WHERE DEPARTMENT IN ('HR', 'IT');

-- Select workers in Finance or Sales departments
SELECT * FROM Worker WHERE DEPARTMENT IN ('Finance', 'Sales');

-- Select Michael Johnson who works in the Finance department
SELECT * FROM Worker WHERE DEPARTMENT = 'Finance' AND FIRST_NAME = 'Michael';

-- Select workers in Finance or Sales departments
SELECT * FROM Worker WHERE DEPARTMENT = 'Finance' OR DEPARTMENT = 'Sales';

-- Select workers not in Finance or Sales departments
SELECT * FROM Worker WHERE DEPARTMENT NOT IN ('Finance', 'Sales');

-- Select workers where salary is NULL (There are none in this dataset)
SELECT * FROM Worker WHERE SALARY IS NULL;

-- Pattern Searching / Wildcard (�%�, �_�)
-- Select all first names from Worker table
SELECT FIRST_NAME FROM Worker;

-- Select first names ending with 'e'
SELECT FIRST_NAME FROM Worker WHERE FIRST_NAME LIKE '%e';

-- Select first names starting with 'J'
SELECT FIRST_NAME FROM Worker WHERE FIRST_NAME LIKE 'J%';

-- Select first names containing 'a' anywhere in the name
SELECT FIRST_NAME FROM Worker WHERE FIRST_NAME LIKE '%a%';

-- Select first names starting with 'D' and are exactly three characters long
SELECT FIRST_NAME FROM Worker WHERE FIRST_NAME LIKE 'D__';

-- Select first names starting with 'J' and are exactly four characters long
SELECT FIRST_NAME FROM Worker WHERE FIRST_NAME LIKE 'J___';

-- Select first names where the second character is 'o'
SELECT FIRST_NAME FROM Worker WHERE FIRST_NAME LIKE '_o%';

-- Select first names ending with 'n' and are exactly four characters long
SELECT FIRST_NAME FROM Worker WHERE FIRST_NAME LIKE '_n_';

-- Retrieve distinct department names from the Worker table
SELECT DISTINCT DEPARTMENT FROM Worker;

-- Aggregate functions with GROUP BY

-- COUNT() with GROUP BY: Counts number of workers per department
SELECT DEPARTMENT, COUNT(DEPARTMENT) AS NumWorkers FROM Worker GROUP BY DEPARTMENT;

-- SUM() with GROUP BY: Calculates total salary per department
SELECT DEPARTMENT, SUM(SALARY) AS TotalSalary FROM Worker GROUP BY DEPARTMENT;

-- AVG() with GROUP BY: Computes average salary per department
SELECT DEPARTMENT, AVG(SALARY) AS AverageSalary FROM Worker GROUP BY DEPARTMENT;

-- MIN() with GROUP BY: Finds minimum salary per department
SELECT DEPARTMENT, MIN(SALARY) AS MinSalary FROM Worker GROUP BY DEPARTMENT;

-- MAX() with GROUP BY: Finds maximum salary per department
SELECT DEPARTMENT, MAX(SALARY) AS MaxSalary FROM Worker GROUP BY DEPARTMENT;

-- Select departments with more than 3 workers
SELECT DEPARTMENT FROM Worker GROUP BY DEPARTMENT HAVING COUNT(DEPARTMENT) > 3;


-- Create Table Account
Create Table Account(
	AccountId INT PRIMARY KEY,
	Name VARCHAR(255),
	Balance INT NOT NULL DEFAULT 0
);





















