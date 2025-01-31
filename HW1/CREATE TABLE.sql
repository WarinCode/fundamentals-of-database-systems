USE DB0435;

CREATE TABLE Majors (
	Major_ID VARCHAR(10) PRIMARY KEY,
	Major_NAME VARCHAR(100) NOT NULL,
	Program_Name VARCHAR(100) NOT NULL
);

CREATE TABLE Subjects (
	Subject_ID INT PRIMARY KEY,
	Subject_Name VARCHAR(200) NOT NULL,
	Credit INT NOT NULL
);

CREATE TABLE Teachers (
	Teacher_ID INT PRIMARY KEY,
	Teacher_Name VARCHAR(200) NOT NULL
);

CREATE TABLE Students (
	Student_ID BIGINT PRIMARY KEY,
	Student_Name VARCHAR(200) NOT NULL,
	Email VARCHAR(100),
	Major_ID VARCHAR(10),
	GPA FLOAT,

	CONSTRAINT fk_major
		FOREIGN KEY(Major_ID)
		REFERENCES Majors(Major_ID)
);

CREATE TABLE Subject_Grades (
	Subject_ID INT,
	Student_ID BIGINT,
	Section INT,
	Grade_Text VARCHAR(10),
	Grade_Num FLOAT,
	Teacher_ID INT,
	PRIMARY KEY (Subject_ID, Student_ID),

	CONSTRAINT fk_Subject
		FOREIGN KEY(Subject_ID)
		REFERENCES Subjects(Subject_ID),

	CONSTRAINT fk_Student
		FOREIGN KEY(Student_ID)
		REFERENCES Students(Student_ID),

	CONSTRAINT fk_Teacher
		FOREIGN KEY(Teacher_ID)
		REFERENCES Teachers(Teacher_ID)
);