CREATE DATABASE FitnessCenterDB;
USE FitnessCenterDB;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);


INSERT INTO Members (id, name, age) VALUES
(5, 'John Doe', 30),
(6, 'Jane Smith', 25),
(7, 'Alice Johnson', 28),
(8, 'Robert Brown', 35);


INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(101, 5, '2024-06-20', 'evening', 'Cardio'),
(102, 6, '2024-06-20', 'morning', 'Strength Training'),
(103, 7, '2024-06-21', 'lunch time', 'Yoga'),
(104, 8, '2024-06-21', 'evening', 'Swimming');


UPDATE WorkoutSessions
SET session_time = 'evening'
WHERE member_id = 6;

SET SQL_SAFE_UPDATES=0;
DELETE From Members
WHERE name='Robert Brown';
SET SQL_SAFE_UPDATES=1;

SELECT * FROM Members