-- 1. Create a table for storing employee data
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

-- 2. Insert sample data
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate) VALUES
(1, 'John', 'Doe', 'IT', 60000.00, '2020-05-15'),
(2, 'Jane', 'Smith', 'HR', 55000.00, '2019-03-10'),
(3, 'Michael', 'Brown', 'Finance', 75000.00, '2021-01-20'),
(4, 'Emily', 'Davis', 'IT', 68000.00, '2018-07-01');

-- 3. Select all employees
SELECT * FROM Employees;

-- 4. Select employees from IT department
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Department = 'IT';

-- 5. Find employees with salary above 60,000
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary > 60000
ORDER BY Salary DESC;

-- 6. Update salary for a specific employee
UPDATE Employees
SET Salary = 70000.00
WHERE EmployeeID = 2;

-- 7. Delete an employee record
DELETE FROM Employees
WHERE EmployeeID = 4;

-- 8. Aggregate example: Average salary by department
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;
