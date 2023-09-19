SELECT Name FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT Name FROM students WHERE Age = 30 AND Gender = 'F';
SELECT Points FROM students WHERE Name = 'Alex';
INSERT INTO students (Name, Age, Gender, Points)
VALUES ('Janaa',23, 'F', 0);
UPDATE students SET Points = Points + 20 WHERE ID = 2;
UPDATE students SET Points = Points - 10 WHERE ID = 1;
