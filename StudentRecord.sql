CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100),
    Phone VARCHAR(20)
);


CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT
);


CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20)
  
);

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    Grade VARCHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

insert into Student (StudentID,FirstName,LastName,DateOfBirth,Email,Phone)
values(196224318, "Blake", "Hal", "March 8, 2023", "halblake@gmail.com", "09457165413"),
(100612081, "Mik", "Kahl", "2011-11-11", "kahl11@gmail.com", "09515417952");

insert into Course (CourseID,CourseName,Credits)
values(11, "English101", 3),
(12, "Math101", 3);

insert into Instructor (InstructorID, FirstName, LastName, Email, Phone)
values(12344321, "Juan", "Miguel", "miggyjuan@gmail.com", "09088882324"),
(56789870, "Isa", "Belle", "belle11@gmail.com", "09076643123");

insert into Enrollment (EnrollmentID, StudentID, CourseID, EnrollmentDate, Grade)
values(111, 196224318, 11, 2030-08-08, 90),
(222, 100612081, 12, 2030-08-08, 95);