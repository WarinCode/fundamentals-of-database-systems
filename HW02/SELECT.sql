USE DB0435;

-- 5.1
SELECT * FROM Teachers;

-- 5.2
SELECT Subject_ID, Subject_Name FROM Subjects;

-- 5.3
SELECT * FROM Subjects ORDER BY Subject_Name;

-- 5.4
SELECT Student_ID, Student_Name, GPA FROM Students ORDER BY GPA DESC;

-- 5.5
SELECT * FROM Majors WHERE Major_ID = 'S05';

-- 5.6
SELECT Subject_ID, Subject_Name, Credit FROM Subjects WHERE Credit >= 3;

-- 5.7
SELECT * FROM Subject_Grades WHERE Subject_ID IN (01418221, 01418112);

-- 5.8
SELECT * FROM Students WHERE Major_ID = 'S06' AND GPA > 2.5;

-- 5.9
SELECT * FROM Students WHERE Major_ID = 'S06' ORDER BY Email;

-- 5.10
SELECT * FROM Subject_Grades WHERE Grade_Num IS NULL;