SELECT Name FROM students;

SELECT * FROM students WHERE Age > 30;

SELECT Name FROM students WHERE Age = 30 AND Gender = 'F';

SELECT Points FROM students WHERE Name = 'Alex';

INSERT INTO students (Name, Age, Gender, Points)
VALUES ('Janaa',23, 'F', 0);

UPDATE students SET Points = Points + 20 WHERE ID = 2;

UPDATE students SET Points = Points - 10 WHERE ID = 1;

---------Create table

CREATE TABLE Graduate (
    gradID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
    Gender TEXT,
    Points INTEGER,
    gradDate TEXT
);

---------- Move data from 'students' to 'graduate' 

INSERT INTO graduates (Name, Age, Gender, Points, gradDate)
SELECT Name, Age, Gender, Points, '08/09/2018' AS gradDate
FROM students
WHERE Name = 'Layal';

---------- Remove Layal's record from 'students'
DELETE FROM students WHERE Name = 'Layal';

-----------create a table and make a join
CREATE TABLE Info AS 
SELECT employees.name , employees.Company, companies.date
FROM employees 
INNER JOIN companies
ON employees.company = companies.name"

--------------

SELECT name FROM Info
WHERE date < 2000

--------------

SELECT Company FROM employees
WHERE Role = "Graphic Designer

----------------
SELECT * from students
ORDER BY Points DESC
LIMIT 1 ;

---------------

SELECT AVG(points) AS average_points
FROM students;

-----------

SELECT COUNT(*) AS num_students
FROM students
WHERE Points = 500;

------------

SELECT Name
FROM students
WHERE Name LIKE '%s%';

-----------

SELECT *
FROM students
ORDER BY Points DESC;

-------------
