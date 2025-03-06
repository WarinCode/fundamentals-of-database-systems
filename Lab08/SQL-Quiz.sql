-- ข้อ 1
SELECT ID, Title, FirstName, LastName, Major FROM students 
WHERE Major = 'S09' ORDER BY FirstName, ID;

-- ข้อ 2
SELECT CS_CODE, COURSE_NAME, B_CRE_LEC, B_CRE_LAB FROM courses
WHERE B_CRE_LAB = 0 ORDER BY B_CRE_LEC DESC;

-- ข้อ 3
SELECT DISTINCT courses.CS_CODE, COURSE_NAME, SM_SEM, SM_YR FROM enrollments
INNER JOIN courses ON courses.CS_CODE = enrollments.CS_CODE;

--ข้อ 4 
SELECT CS_CODE, SM_YR, SM_SEM, ID, FirstName, LastName FROM students
INNER JOIN enrollments ON enrollments.STD_ID = students.ID ORDER BY CS_CODE;

-- ข้อ 5
SELECT ID, FirstName, LastName, CS_CODE, SM_YR, SM_SEM FROM students
LEFT JOIN enrollments ON enrollments.STD_ID = students.ID WHERE CS_CODE IS NULL;

-- ข้อ 6
SELECT courses.CS_CODE, COURSE_NAME, COUNT(students.ID) AS NUM_STUDEBTS FROM courses
INNER JOIN enrollments ON enrollments.CS_CODE = courses.CS_CODE
INNER JOIN students ON students.ID = enrollments.STD_ID
GROUP BY courses.CS_CODE, COURSE_NAME ORDER BY courses.CS_CODE 

-- ข้อ 7
SELECT ID, FirstName, LastName, COUNT(CS_CODE) AS NUM_COURSES FROM students
INNER JOIN enrollments ON enrollments.STD_ID = students.ID
GROUP BY ID, FirstName, LastName ORDER BY ID; 

-- ข้อ 8
SELECT ID, FirstName, LastName, COUNT(COURSE_NAME) AS NUM_COURSES,
SUM(B_CRE_LEC) AS SUM_LEC_CREDITS FROM students
INNER JOIN enrollments ON enrollments.STD_ID = students.ID
INNER JOIN courses ON courses.CS_CODE = enrollments.CS_CODE
GROUP BY ID, FirstName, LastName HAVING SUM(B_CRE_LEC) >= 45
ORDER BY SUM_LEC_CREDITS DESC