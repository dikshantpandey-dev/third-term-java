CREATE TABLE Role (
    role_id INT PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL
);

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    role_id INT,
    dept_id INT,
    emp_name VARCHAR(100) NOT NULL,
    emp_contact VARCHAR(15),
    emp_email VARCHAR(100),
    FOREIGN KEY (role_id) REFERENCES Role(role_id),
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

CREATE TABLE Attendance (
    attn_id INT PRIMARY KEY,
    emp_id INT,
    attn_date DATE,
    attn_status VARCHAR(10) CHECK (attn_status IN ('Present', 'Absent', 'Late')),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

CREATE TABLE Salary (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    basic_salary DECIMAL(10,2),
    bonuses DECIMAL(10,2),
    total_salary DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

CREATE TABLE Project (
     project_id INT PRIMARY KEY,
     emp_id INT,
     project_name VARCHAR(100) NOT NULL,
     project_start_date DATE,
     project_end_date DATE,
     FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);
