USE DB0435;

-- ข้อ 1
SELECT COUNT(Student_ID) AS Count_Students, AVG(GPA) AS Average_GPA FROM Students;

-- ข้อ 2
SELECT Students.Major_ID, COUNT(Students.Major_ID) AS COUNT_Students,
AVG(GPA) AS Average_GPA FROM Students
INNER JOIN Majors ON Students.Major_ID = Majors.Major_ID
GROUP BY Students.Major_ID, Majors.Major_NAME;

-- ช้อ 3
SELECT Subjects.Subject_ID, Subjects.Subject_Name, 
COUNT(Students.Student_ID) AS Count_Students,
AVG(Grade_Num) AS Average_Grade FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
INNER JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID
GROUP BY Subjects.Subject_ID, Subjects.Subject_Name;

-- ข้อ 4
SELECT Students.Student_ID, Student_Name, 
AVG(Grade_Num) AS Average_Grade FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
GROUP BY Students.Student_ID, Student_Name
ORDER BY Students.Student_ID;

-- ข้อ 5
SELECT Majors.Major_ID, Major_Name, 
COUNT(Students.Student_ID) AS Count_Students,
AVG(GPA) AS Average_GPA FROM Majors
INNER JOIN Students ON Students.Major_ID = Majors.Major_ID
WHERE Majors.Major_ID = 'S05'
GROUP BY Majors.Major_ID, Major_NAME;

--	ข้อ 6
SELECT Students.Student_ID, Student_Name, 
AVG(Grade_Num) AS Average_Grade
FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
WHERE Student_Name LIKE '%นา%'
GROUP BY Students.Student_ID, Student_Name;

-- ข้อ 7
SELECT Subjects.Subject_ID, Subject_Name, 
COUNT(Subject_Grades.Student_ID) AS Count_Students,
AVG(Grade_Num) AS Average_Grade
FROM Subjects
INNER JOIN Subject_Grades ON Subject_Grades.Subject_ID = Subjects.Subject_ID
WHERE Subject_Name LIKE '%Computer%'
GROUP BY Subjects.Subject_ID, Subject_Name;

-- ข้อ 8
SELECT Majors.Major_ID, Major_Name,
COUNT(Subject_Grades.Subject_ID) AS Count_Subjects,
AVG(Grade_Num) AS Average_Grade FROM Majors
INNER JOIN Students ON Students.Major_ID = Majors.Major_ID
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
WHERE Majors.Major_ID = 'S06'
GROUP BY Majors.Major_ID, Major_Name;

-- ข้อ 9
SELECT Students.Student_ID, Student_Name, Subjects.Subject_ID,
Subject_Name, Grade_Text INTO Grades FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
INNER JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID;
