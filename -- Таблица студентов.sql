-- Таблица студентов
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    BirthDate DATE,
    ContactInfo VARCHAR(255),
    EnrollmentDate DATE
);

-- Таблица преподавателей
CREATE TABLE Teachers (
    TeacherID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    HireDate DATE,
    Department VARCHAR(100)
);

-- Таблица курсов
CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(255),
    CourseDescription TEXT,
    Credits INT
);

-- Таблица оценок
CREATE TABLE Grades (
    GradeID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(1),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);