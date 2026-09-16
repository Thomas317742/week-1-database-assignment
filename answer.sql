DROP DATABASE IF EXISTS school_management;

CREATE DATABASE school_management;

USE school_management;


CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(10),
    class_name VARCHAR(50)
);


CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    subject VARCHAR(50)
);


CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);


CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


INSERT INTO students (first_name, last_name, age, gender, class_name)
VALUES
('Thomas', 'Ewoi', 25, 'Male', 'Software Engineering'),
('Mercy', 'Achieng', 22, 'Female', 'Software Engineering'),
('John', 'Loki', 24, 'Male', 'Computer Science');


INSERT INTO teachers (first_name, last_name, subject)
VALUES
('David', 'Otieno', 'Programming'),
('Mary', 'Wanjiku', 'Database Systems');


INSERT INTO courses (course_name, teacher_id)
VALUES
('Python Programming', 1),
('MySQL Database', 2);


INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2026-09-16'),
(1, 2, '2026-09-16'),
(2, 1, '2026-09-16'),
(3, 2, '2026-09-16');