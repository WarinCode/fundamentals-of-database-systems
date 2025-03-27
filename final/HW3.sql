/* ¡ÒÃºéÒ¹¤ÃÑé§·Õè×è 3 */

/* 3.1 */
SELECT Student_ID, Student_Name, Students.Major_ID, Major_Name FROM Students
INNER JOIN Majors ON Majors.Major_ID = Students.Major_ID;

/* 3.2 */
SELECT Students.Student_ID, Student_Name, Subject_Name, Grade_Text, Grade_Num FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
INNER JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID
ORDER BY Students.Student_ID;

/* 3.3 */
SELECT DISTINCT Teachers.Teacher_ID, Teacher_Name, Subject_Grades.Subject_ID, Subject_Name FROM Teachers
INNER JOIN Subject_Grades ON Subject_Grades.Teacher_ID = Teachers.Teacher_ID
INNER JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID
WHERE Teacher_Name = '´Ã.©ÑµÃªÑÂ à¡ÉÁ·ÇÕâª¤';

/* 3.4 */
SELECT Student_ID, Student_Name, GPA, Students.Major_ID, Major_Name FROM Students
INNER JOIN Majors ON Majors.Major_ID = Students.Major_ID
ORDER BY GPA DESC;

/* 3.5 */
SELECT Students.Student_ID, Student_Name, Subject_Name, Grade_Text, Grade_Num FROM Students
RIGHT JOIN Subject_Grades ON Students.Student_ID = Subject_Grades.Student_ID
RIGHT JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID
WHERE GPA IS NULL;

/* 3.6 */
SELECT Students.Student_ID, Student_Name, Subject_Name, Grade_Text, Grade_Num FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
INNER JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID
WHERE Grade_Num > 3 AND Students.Student_ID BETWEEN 6230200422 AND 6230200500;

/* 3.7 */
SELECT Students.Student_ID, Student_Name, Subject_Grades.Subject_ID, Subject_Name, Grade_Text, Grade_Num FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
INNER JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID
WHERE Grade_Num > 3 AND Subjects.Subject_ID IN (01418221, 01418112);

/* 3.8 */
SELECT Students.Student_ID, Student_Name, Subject_Grades.Subject_ID, Subject_Name FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
CROSS JOIN Subjects WHERE Subjects.Subject_ID = 1418323;

/* 3.9 */
UPDATE Subjects SET Subject_Name = 'Technical English 1' WHERE Subject_ID = 1355206;

/* 3.10 */
DELETE FROM Subjects WHERE Subject_ID = 1418323;