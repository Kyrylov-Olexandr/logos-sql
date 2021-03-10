CREATE DATABASE school;
USE school;
CREATE TABLE IF NOT EXISTS subject(
	subject_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE,
    koef int NOT NULL
);
CREATE TABLE IF NOT EXISTS classroom (
	classroom_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL UNIQUE,
    seats INT DEFAULT(0),
    FOREIGN KEY (classroom_id) REFERENCES subject(subject_id)
);
CREATE TABLE IF NOT EXISTS teacher (
	teacher_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    date_of_birth DATE NOT NULL,
    lesson_id INT NOT NULL,
    FOREIGN KEY (lesson_id) REFERENCES subject(subject_id)
);
CREATE TABLE IF NOT EXISTS student (
	student_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    date_of_birth DATE NOT NULL,
    class varchar(3) NOT NULL
);
CREATE TABLE IF NOT EXISTS student_teacher (
	student_id INT NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);
-- 1
SELECT (name, surname) FROM teacher WHERE YEAR(date_of_birth) > "1980";
-- 2
SELECT (name, surname) FROM student WHERE name NOT LIKE "В%";
-- 3
SELECT * FROM lesson ORDER BY koef ASC;
-- 4
SELECT * FROM teacher WHERE date_of_birth = (SELECT MAX(date_of_birth) FROM teacher);
-- 5
SELECT COUNT(*) FROM classroom;
-- 6
SELECT SUM(seats) FROM classroom;
-- 7
SELECT (name, surname) FROM student WHERE YEAR(date_of_birth) > "1999" AND YEAR(date_of_birth) < "2006";




