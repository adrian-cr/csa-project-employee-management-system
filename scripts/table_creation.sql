CREATE TABLE Departments (
    departmentId INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    departmentName VARCHAR(100) NOT NULL
);


CREATE TABLE Employees (
    employeeId INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    departmentId INT REFERENCES Departments(departmentId)
);

CREATE TABLE Projects (
    projectId INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    projectName VARCHAR(100) NOT NULL,
    projectBudget DECIMAL NOT NULL,
    managerId INT REFERENCES Employees(employeeId) NOT NULL
);
