USE DB0435;

-- 1
SELECT COUNT(Student_ID) AS Count_Students,
AVG(GPA) AS Average_GPA FROM Students

-- 2
SELECT Students.Major_ID, COUNT(Students.Major_ID) AS COUNT_Students,
AVG(GPA) AS Average_GPA FROM Students
INNER JOIN Majors ON Students.Major_ID = Majors.Major_ID
GROUP BY Students.Major_ID, Majors.Major_NAME