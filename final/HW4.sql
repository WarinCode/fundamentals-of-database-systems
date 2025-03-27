/* การบ้านครั้งที่ 4 */

/* 4.1 */
SELECT COUNT(Student_ID) AS Count_Students, AVG(GPA) AS Average_GPA FROM Students;

/* 4.2 */
SELECT Majors.Major_ID, COUNT(Students.Student_ID) AS Count_Students, AVG(GPA) AS Average_GPA FROM Students 
INNER JOIN Majors ON Majors.Major_ID = Students.Major_ID
GROUP BY Majors.Major_ID;

/* 4.3 */
SELECT Subjects.Subject_ID, Subject_Name, COUNT(Students.Student_ID) AS Count_Students, AVG(Grade_Num) AS Average_Grade FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
INNER JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID
GROUP BY Subjects.Subject_ID, Subject_Name;

/* 4.4 */
SELECT Students.Student_ID, Student_Name, AVG(Grade_Num) AS Average_Grade FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
GROUP BY Students.Student_ID, Student_Name
ORDER BY Students.Student_ID;

/* 4.5 */
SELECT Majors.Major_ID, Major_Name, COUNT(Majors.Major_ID) AS Count_Students, AVG(GPA) AS Average_GPA FROM Students
INNER JOIN Majors ON Majors.Major_ID = Students.Major_ID
GROUP BY Majors.Major_ID, Major_Name;

/* 4.6 */
SELECT Students.Student_ID, Student_Name, AVG(Grade_Num) AS Average_Grade FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
WHERE Student_Name LIKE '%นา%'
GROUP BY Students.Student_ID, Student_Name;

/* 4.7 */
SELECT Subjects.Subject_ID, Subject_Name, COUNT(Student_ID) AS Count_Students, AVG(Grade_Num) AS Average_Grade FROM Subjects
INNER JOIN Subject_Grades ON Subject_Grades.Subject_ID = Subjects.Subject_ID
WHERE Subject_Name LIKE '%Computer%'
GROUP BY Subjects.Subject_ID, Subject_Name;

/* 4.8 */
SELECT Majors.Major_ID, Major_Name, COUNT(Majors.Major_ID) AS Count_Subjects, AVG(Grade_Num) AS Average_Grade FROM Students
INNER JOIN Majors ON Majors.Major_ID = Students.Major_ID
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
WHERE Majors.Major_ID = 'S06'
GROUP BY Majors.Major_ID, Major_Name

/* 4.9 */
SELECT Students.Student_ID, Student_Name, Subject_Grades.Subject_ID, Subject_Name, Grade_text INTO Grades FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
INNER JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID;