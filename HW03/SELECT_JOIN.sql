USE DB0435;

/* ��ú�ҹ���駷�� 3 */

-- ��� 1
SELECT Student_ID, Student_Name, Students.Major_ID, Majors.Major_NAME FROM Students 
INNER JOIN Majors ON Students.Major_ID = Majors.Major_ID;

-- ��� 2
SELECT Subject_Grades.Student_ID, Students.Student_Name, Subjects.Subject_Name, Grade_Text, Grade_Num FROM Subject_Grades
INNER JOIN Students ON Subject_Grades.Student_ID = Students.Student_ID
INNER JOIN Subjects ON Subject_Grades.Subject_ID = Subjects.Subject_ID
ORDER BY Students.Student_ID;

-- ��� 3
SELECT DISTINCT Subject_Grades.Teacher_ID, Teacher_Name, Subject_Grades.Subject_ID, Subjects.Subject_Name FROM Subject_Grades
INNER JOIN Teachers ON Subject_Grades.Teacher_ID = Teachers.Teacher_ID
INNER JOIN Subjects ON Subject_Grades.Subject_ID = Subjects.Subject_ID
WHERE Teacher_Name = '��.�ѵê�� ������⪤';

-- ��� 4
SELECT Students.Student_ID, Student_Name, GPA, Students.Major_ID, Major_Name FROM Students
INNER JOIN Majors ON Students.Major_ID = Majors.Major_ID
ORDER BY GPA DESC;

-- ��� 5
SELECT Students.Student_ID, Student_Name, Subject_Name, Grade_Text, Grade_Num FROM Students
RIGHT JOIN Subject_Grades ON Students.Student_ID = Subject_Grades.Student_ID
RIGHT JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID
WHERE GPA IS NULL;

-- ��� 6
SELECT Students.Student_ID, Student_Name, Subject_Name, Grade_Text, Grade_Num FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
INNER JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID
WHERE GPA > 3 AND Students.Student_ID BETWEEN 6230200422 AND 6230200500;

-- ��� 7
SELECT Students.Student_ID, Student_Name, Subjects.Subject_ID, Subject_Name, Grade_Text, Grade_Num FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
INNER JOIN Subjects ON Subjects.Subject_ID = Subject_Grades.Subject_ID
WHERE Grade_Num > 3 AND Subjects.Subject_ID IN (01418221, 01418112);

-- ��� 8
SELECT Students.Student_ID, Student_Name, Subjects.Subject_ID, Subject_Name FROM Students
INNER JOIN Subject_Grades ON Subject_Grades.Student_ID = Students.Student_ID
CROSS JOIN Subjects
WHERE Subjects.Subject_ID = 1418323;

-- ��� 9
UPDATE Subjects SET Subject_Name = 'Technical English 1' WHERE Subjects.Subject_ID = 1355206;

-- ��� 10
DELETE FROM Subjects WHERE Subject_ID = 1418323;