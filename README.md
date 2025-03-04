# Employee Management System

**By Dikshant Pandey (25052)**

---

## Table

### 1. Role Table
- `role_id` (Primary Key)  
- `role_name`  

### 2. Department Table
- `dept_id` (Primary Key)  
- `dept_name`  

### 3. Employee Table
- `emp_id` (Primary Key)  
- `role_id` (Foreign Key)  
- `dept_id` (Foreign Key)  
- `emp_name`  
- `emp_contact`  
- `emp_email`  

### 4. Attendance Table
- `attn_id` (Primary Key)  
- `emp_id`  
- `attn_date`  
- `attn_status`  

### 5. Salary Table
- `salary_id` (Primary Key)  
- `emp_id` (Foreign Key)  
- `basic_salary`  
- `bonuses`  
- `total_salary`  

### 6. Project Table
- `project_id` (Primary Key)  
- `emp_id` (Foreign Key)  
- `project_name`  
- `project_start_date`  
- `project_end_date`  

---

## ERD

### 1. Role Table
| role_id | role_name |
|---------|------------|
| 1 | Manager |
| 2 | Software Engineer |
| 3 | HR Officer |

### 2. Department Table
| dept_id | dept_name |
|---------|----------------|
| 1 | IT |
| 2 | Human Resources |
| 3 | Sales |

### 3. Employee Table
| emp_id | role_id | dept_id | emp_name | emp_contact | emp_email |
|--------|--------|---------|----------------|------------|----------------|
| 101 | 1 | 1 | Ram Shrestha | 9801234567 | [ram@email.com](mailto:ram@email.com) |
| 102 | 2 | 2 | Hari Gurung | 9812345678 | [hari@email.com](mailto:hari@email.com) |

### 4. Attendance Table
| attn_id | emp_id | attn_date | attn_status |
|---------|--------|------------|------------|
| 201 | 101 | 2024-03-04 | Present |
| 202 | 102 | 2024-03-04 | Absent |

### 5. Salary Table
| salary_id | emp_id | basic_salary | bonuses | total_salary |
|-----------|--------|--------------|---------|--------------|
| 301 | 101 | 70000 | 5000 | 75000 |
| 302 | 102 | 60000 | 3000 | 63000 |

### 6. Project Table
| project_id | emp_id | project_name | project_start_date | project_end_date |
|------------|--------|-------------------------|----------------|--------------|
| 401 | 101 | Nepal E-Governance System | 2024-02-01 | 2024-06-30 |
| 402 | 102 | HR Payroll Management | 2024-03-01 | 2024-05-15 |
