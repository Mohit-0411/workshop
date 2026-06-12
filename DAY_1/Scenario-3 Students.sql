CREATE TABLE students
(
    student_id    INT PRIMARY KEY AUTO_INCREMENT,
    full_name     VARCHAR(100) NOT NULL,
    grade         INT          NOT NULL,
    marks         INT CHECK (marks BETWEEN 0 AND 100),
    district      VARCHAR(50),
    gender        CHAR(1),
    enrolled_year INT
);

INSERT INTO students (full_name, grade, marks, district, gender, enrolled_year)
VALUES ('Aayush Sharma', 9, 85, 'Lalitpur', 'M', 2021),
       ('Sita Thapa', 8, 92, 'Kathmandu', 'F', 2022),
       ('Rohit Sharma', 10, 75, 'Pokhara', 'M', 2019),
       ('Pooja Shrestha', 7, 88, 'Bhaktapur', 'F', 2023),
       ('Niranjan Jha', 9, 60, 'Kathmandu', 'M', 2020),
       ('Bipana Sharma', 11, 95, 'Chitwan', 'F', 2024),
       ('Manish Rai', 10, 82, 'Biratnagar', 'M', 2022),
       ('Deepika Joshi', 8, 45, 'Kathmandu', 'F', 2021),
       ('Kiran Rajbanshi', 9, 78, 'Jhapa', 'M', 2023);

SELECT *
FROM students;

SELECT full_name, marks AS obtained_marks
FROM students;

SELECT *
FROM students
WHERE grade IN (8, 9, 10)
  AND marks >= 80;

SELECT *
FROM students
WHERE full_name LIKE '%Sharma%';

SELECT full_name, district, enrolled_year
FROM students
WHERE (enrolled_year BETWEEN 2020 AND 2023)
  AND district <> 'Kathmandu';