-- CREATE TABLE students(
-- id serial PRIMARY KEY,
-- 	name VARCHAR(50),
-- 	lastname VARCHAR(50),
--      course INTEGER
-- );

-- INSERT INTO students(id, name, lastname, course)
-- VALUES(1, 'Ivan', 'Petrov', 1),
-- 	  (2, 'Sergey', 'Ivanov', 2),
-- 	  (3, 'Maria', 'Sidorova', 3);


-- SELECT *
-- FROM students
-- WHERE course = '1';

-- SELECT *
-- FROM students 	
-- ORDER BY course ASC
-- LIMIT 1;

-- UPDATE students
-- SET lastname = 'Sergeevich'
-- WHERE id = 1;

-- UPDATE students
-- SET lastname = 'Mikhalich';


-- CREATE TABLE Teachers (
--     teacher_id SERIAL PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     email VARCHAR(100)
-- );
                                       /*Relationship between tables*/
-- CREATE TABLE Courses (
--     course_id SERIAL PRIMARY KEY,
--     course_name VARCHAR(100),
--     teacher_id INT REFERENCES Teachers(teacher_id)
-- );




-- SELECT
--     s.id AS student_id,
--     s.name AS student_name,
--     c.course_name,
--     CONCAT(t.first_name, ' ', t.last_name) AS teacher_name
-- FROM students s
-- JOIN courses c ON c.course_id = c.course_id
-- JOIN teachers t ON c.teacher_id = t.teacher_id;

-- SELECT
--     t.teacher_id,
--     CONCAT(t.first_name, ' ', t.last_name) AS teacher_name,
--     c.course_name
-- FROM teachers t
-- JOIN courses c ON t.teacher_id = c.teacher_id;

-- SELECT
--     s.id AS student_id,
--     s.name AS student_name,
--     c.course_name
-- FROM students s
-- JOIN courses c ON c.course_id = c.course_id;

-- CREATE TABLE friends(
-- id SERIAL PRIMARY KEY,
-- 	name VARCHAR(50), 
-- 	lastname VARCHAR(50),
-- 	age INTEGER
-- );

-- INSERT INTO friends(id, name, lastname, age)
-- VALUES(1, 'Murod', 'Hamidov', 17),
--       (2, 'Komron', 'Sodiqov', 20),
-- 	  (3, 'Firdavs', 'Babaev', 18),
-- 	  (4, 'Shakhzod', 'Abdullaev', 19);

-- SELECT id, AVG(age) AS average_age
-- FROM friends
-- GROUP BY id;

-- CREATE TABLE gpa(
-- id SERIAL PRIMARY KEY,
-- 	student VARCHAR(50),
-- 	score INTEGER
-- );

-- INSERT INTO gpa(id, student, score)
-- VALUES(1, 'Shakhzod', 5),
--       (2, 'Gholib', 4),
-- 	     (3, 'Murod', 3),
-- 	     (4, 'Husein', 2);

-- SELECT student, score
-- FROM gpa
-- WHERE score > (SELECT AVG(score) FROM gpa);

-- SELECT *
-- FROM gpa
-- WHERE score >= 3;

-- CREATE TABLE kbtu_student(
-- id SERIAL PRIMARY KEY,
-- 	student VARCHAR(50), 
-- 	course INTEGER,
-- 	grades INTEGER
-- );

-- INSERT INTO kbtu_student(id, student, course, grades)
-- VALUES(1, 'Aibek', 4, 100),
--       (2, 'Aigerim', 3, 95),
-- 	  (3, 'Nursultan', 1, 70),
-- 	  (4, 'Aliya', 2, 40),
-- 	  (5, 'Zhanna', 1, 10);

-- CREATE VIEW student_course_grades AS
-- SELECT
--     id,
--     student,
--     course,
--     grades
-- FROM kbtu_student;

-- SELECT
--     course,
--     AVG(grades) AS average_score
-- FROM student_course_grades
-- GROUP BY course;

-- DROP TABLE courses 
-- DROP TABLE friends
-- DROP TABLE  gpa
-- DROP TABLE  kbtu_student
-- DROP TABLE  students
-- DROP TABLE  teachers