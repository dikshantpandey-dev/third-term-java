-- a) A SELECT query to retrieve all employees' details.
SELECT * FROM Employee;

-- b) A SELECT query that filters employees based on department name.
SELECT emp_id, emp_name, emp_contact, emp_email
FROM Employee
    JOIN Department ON Employee.dept_id = Department.dept_id
WHERE Department.dept_name = 'IT';

-- c) A SELECT query using the AS keyword to rename columns in the result.
SELECT emp_name AS EmployeeName, emp_contact AS ContactNumber, emp_email AS EmailAddress
FROM Employee;

-- d) A SELECT query that calculates the total salary expenses of the company.
SELECT SUM(total_salary) AS TotalSalaryExpense FROM Salary;

-- e) A SELECT query that joins the Employee and Department table and retrieves selected columns.
SELECT Employee.emp_name, Employee.emp_contact, Department.dept_name
FROM Employee
    JOIN Department ON Employee.dept_id = Department.dept_id;
