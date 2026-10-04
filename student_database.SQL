CREATE DATABASE StudentDB1;
SHOW DATABASES;
USE StudentDB1;
SELECT DATABASE();
CREATE TABLE Students (
Student_ID INT PRIMARY KEY,
Student_Name VARCHAR(50),
Age INT,
Gender VARCHAR(10),
Department VARCHAR(50),
City VARCHAR(50),
Marks DECIMAL(5,2),
Attendance INT
);
SHOW TABLES;
DESCRIBE Students;
INSERT INTO Students
(Student_ID, Student_Name, Age, Gender, Department, City, Marks, Attendance)
VALUES
(101,'Rahul',20,'Male','BCA','Pune',78.5,92),
(102,'Priya',21,'Female','BBA','Mumbai',88.0,95),
(103,'Amit',22,'Male','BCom','Delhi',65.0,82),
(104,'Neha',20,'Female','BCA','Surat',91.0,98),
(105,'Rohan',23,'Male','MBA','Vadodara',72.0,75),
(106,'Sneha',21,'Female','BSc','Ahmedabad',85.5,91),
(107,'Arjun',20,'Male','BCA','Indore',69.0,83),
(108,'Pooja',22,'Female','MBA','Jaipur',94.0,99),
(109,'Karan',21,'Male','BBA','Nagpur',81.0,88),
(110,'Anjali',20,'Female','BCom','Nashik',76.0,84);
SELECT *
FROM Students;
SELECT Student_Name, Marks
FROM Students;
SELECT Student_Name, Department
FROM Students;
SELECT DISTINCT Department
FROM Students;
SELECT DISTINCT City
FROM Students;
SELECT *
FROM Students
WHERE Department = 'BCA';
SELECT *
FROM Students
WHERE Marks > 80;
SELECT *
FROM Students
WHERE Attendance > 90;
SELECT *
FROM Students
WHERE City = 'Mumbai';
SELECT *
FROM Students
WHERE Gender = 'Female';
SELECT *
FROM Students
WHERE Marks >= 90;
SELECT *
FROM Students
WHERE Marks < 70;
SELECT *
FROM Students

ORDER BY Marks ASC;
SELECT *
FROM Students
ORDER BY Marks DESC;
SELECT *
FROM Students
ORDER BY Student_Name ASC;
SELECT *
FROM Students
ORDER BY Attendance DESC;
SELECT *
FROM Students
LIMIT 5;
SELECT *
FROM Students
ORDER BY Marks DESC
LIMIT 3;
SELECT COUNT(*) AS TotalStudents
FROM Students;
SELECT SUM(Marks) AS TotalMarks
FROM Students;
SELECT AVG(Marks) AS AverageMarks
FROM Students;
SELECT MAX(Marks) AS HighestMarks
FROM Students;
SELECT MIN(Marks) AS LowestMarks
FROM Students;
SELECT *
FROM Students

WHERE Student_Name LIKE 'A%';
SELECT *
FROM Students
WHERE Student_Name LIKE '%a';
SELECT *
FROM Students
WHERE Student_Name LIKE '%h%';
SELECT *
FROM Students
WHERE Marks BETWEEN 70 AND 90;
SELECT *
FROM Students
WHERE Age BETWEEN 20 AND 22;
SELECT *
FROM Students
WHERE City IN ('Mumbai', 'Pune');
SELECT *
FROM Students
WHERE Department IN ('MBA', 'BCA');
SELECT Department,
COUNT(*) AS TotalStudents
FROM Students
GROUP BY Department;
SELECT Gender,
AVG(Marks) AS AverageMarks
FROM Students
GROUP BY Gender;
SELECT City,
COUNT(*) AS TotalStudents

FROM Students
GROUP BY City;
SELECT Department,
AVG(Marks) AS AverageMarks
FROM Students
GROUP BY Department
HAVING AVG(Marks) > 80;
UPDATE Students
SET Marks = 95
WHERE Student_ID = 101;
UPDATE Students
SET City = 'Vadodara'
WHERE Student_ID = 103;
SELECT Student_ID, Student_Name, Marks, City
FROM Students
WHERE Student_ID IN (101,103);
DELETE FROM Students
WHERE Student_ID = 110;
SELECT *
FROM Students
WHERE Student_ID = 110;
ALTER TABLE Students
ADD COLUMN Email VARCHAR(100);
DESCRIBE Students;
CREATE TABLE Departments (
Department VARCHAR(50) PRIMARY KEY,
HOD VARCHAR(50)
);
INSERT INTO Departments (Department, HOD)
VALUES
('BCA','Dr. Shah'),
('BBA','Dr. Mehta'),
('BCom','Dr. Patel'),
('MBA','Dr. Rao'),
('BSc','Dr. Singh');
SELECT
s.Student_Name,
s.Department,
d.HOD
FROM Students AS s
INNER JOIN Departments AS d
ON s.Department = d.Department;
CREATE VIEW TopStudents AS
SELECT Student_Name, Marks
FROM Students
WHERE Marks > 85;
SELECT * 
FROM TopStudents;
SELECT Student_Name,
Marks,
RANK() OVER (ORDER BY Marks DESC) AS Student_Rank
FROM Students;
SELECT Student_Name, Marks, Attendance
FROM Students
WHERE Marks >= 80
AND Attendance >= 90;
SELECT Student_Name, Marks, Attendance
FROM Students
ORDER BY Marks DESC, Attendance DESC
LIMIT 1;
SELECT Department,
MAX(Marks) AS HighestMarks
FROM Students
GROUP BY Department;
SELECT City,

AVG(Marks) AS AverageMarks
FROM Students
GROUP BY City
ORDER BY AverageMarks DESC;
SELECT Student_Name, Marks
FROM Students
WHERE Marks > (
SELECT AVG(Marks)
FROM Students
)
ORDER BY Marks DESC;
