-- ======================================
-- 📌 Sample SQL Queries
-- ======================================

-- 1️⃣ Create a table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);

-- 2️⃣ Insert sample data
INSERT INTO Students (student_id, name, age, department) VALUES
(1, 'Alice', 20, 'Computer Science'),
(2, 'Bob', 21, 'Mathematics'),
(3, 'Charlie', 22, 'Computer Science'),
(4, 'David', 20, 'Physics');

-- 3️⃣ Select all records
SELECT * FROM Students;

-- 4️⃣ Filter with WHERE
SELECT name, age FROM Students WHERE department = 'Computer Science';

-- 5️⃣ Sorting
SELECT * FROM Students ORDER BY age DESC;

-- 6️⃣ Aggregation
SELECT department, COUNT(*) AS student_count
FROM Students
GROUP BY department;

-- 7️⃣ Update a record
UPDATE Students
SET age = 23
WHERE name = 'Charlie';

-- 8️⃣ Delete a record
DELETE FROM Students WHERE student_id = 4;

-- 9️⃣ Create another table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    department VARCHAR(50)
);

-- Insert courses
INSERT INTO Courses (course_id, course_name, department) VALUES
(101, 'DBMS', 'Computer Science'),
(102, 'Algorithms', 'Computer Science'),
(201, 'Linear Algebra', 'Mathematics'),
(301, 'Quantum Physics', 'Physics');

-- 🔟 Inner Join Example
SELECT s.name, c.course_name
FROM Students s
JOIN Courses c ON s.department = c.department;

-- 1️⃣1️⃣ Subquery Example
SELECT name FROM Students
WHERE student_id IN (SELECT student_id FROM Students WHERE age > 20);
