-- CREATING A DATABASE SALARY MANAGEMENT SYSTEM
CREATE DATABASE SALARY_MANAGEMENT_SYSTEM;
-- END

-- USING A DATABASE OF SALARY MANAGEMENT SYSTEM
USE SALARY_MANAGEMENT_SYSTEM;
-- END

-- CREATING DEPARTMENTS TABLE IN THE DATABASE SALARY MANAGEMENT SYSTEM
CREATE TABLE departments (
    dept_id INT primary key,
    dept_name varchar(50) not null
);
-- END

-- INSERTING VALUES IN THE DEPARTMENTS TABLE
INSERT INTO departments() VALUES
("1", 'HR'), 
("2", 'IT'), 
("3", 'Finance'),
("4", 'Marketing'),
("5", 'Sales'),
("6", 'Customer Service'),
("7", 'Legal'),
("8", 'Research and Development'),
("9", 'Logistics'),
("10", 'Procurement'),
("11", 'Administration'),
("12", 'Production'),
("13", 'Quality Assurance'),
("14", 'Engineering'),
("15", 'Design'),
("16", 'Public Relations'),
("17", 'Business Development'),
("18", 'Security'),
("19", 'Data Analytics'),
("20", 'Training and Development');
-- END

-- SELECT A DEPARTMENTS TABLE
Select * from departments;
-- END

-- CREATING EMPLOYEES TABLE IN THE DATABASE SALARY MANAGEMENT SYSTEM
CREATE TABLE employees (
    emp_id varchar(10) PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_email VARCHAR(100) UNIQUE,
    emp_phone VARCHAR(15),
    dept_id INT,
    hire_date DATE,
    FOREIGN KEY(dept_id) REFERENCES departments(dept_id)
);
-- END

-- INSERTING VALUES IN THE EMPLOYEES TABLE
INSERT INTO employees (emp_id, emp_name, emp_email, emp_phone, dept_id, hire_date) VALUES
('Emp01', 'Alice Johnson', 'alice.johnson@example.com', '9001002001', 1, '2024-01-10'),
('Emp02', 'Brian Smith', 'brian.smith@example.com', '9001002002', 2, '2024-01-12'),
('Emp03', 'Catherine Lee', 'catherine.lee@example.com', '9001002003', 3, '2024-01-14'),
('Emp04', 'Daniel Kim', 'daniel.kim@example.com', '9001002004', 4, '2024-01-16'),
('Emp05', 'Eva Brown', 'eva.brown@example.com', '9001002005', 5, '2024-01-18'),
('Emp06', 'Frank Wilson', 'frank.wilson@example.com', '9001002006', 6, '2024-01-20'),
('Emp07', 'Grace Miller', 'grace.miller@example.com', '9001002007', 7, '2024-01-22'),
('Emp08', 'Harry Davis', 'harry.davis@example.com', '9001002008', 8, '2024-01-24'),
('Emp09', 'Ivy Moore', 'ivy.moore@example.com', '9001002009', 9, '2024-01-26'),
('Emp10', 'Jack White', 'jack.white@example.com', '9001002010', 10, '2024-01-28'),
('Emp11', 'Kara Thomas', 'kara.thomas@example.com', '9001002011', 11, '2024-01-30'),
('Emp12', 'Leo Martin', 'leo.martin@example.com', '9001002012', 12, '2024-02-01'),
('Emp13', 'Mia Scott', 'mia.scott@example.com', '9001002013', 13, '2024-02-03'),
('Emp14', 'Noah Turner', 'noah.turner@example.com', '9001002014', 14, '2024-02-05'),
('Emp15', 'Olivia Walker', 'olivia.walker@example.com', '9001002015', 15, '2024-02-07'),
('Emp16', 'Paul Hall', 'paul.hall@example.com', '9001002016', 16, '2024-02-09'),
('Emp17', 'Quinn Allen', 'quinn.allen@example.com', '9001002017', 17, '2024-02-11'),
('Emp18', 'Rachel Young', 'rachel.young@example.com', '9001002018', 18, '2024-02-13'),
('Emp19', 'Sam Harris', 'sam.harris@example.com', '9001002019', 19, '2024-02-15'),
('Emp20', 'Tina Robinson', 'tina.robinson@example.com', '9001002020', 20, '2024-02-17');
-- END

-- SELECT A EMPLOYEES TABLE
Select * from employees;
-- END

-- CREATING SALARY TABLE IN THE DATABASE SALARY MANAGEMENT SYSTEM
CREATE TABLE salary (
    salary_id varchar(10) PRIMARY KEY,
    emp_id varchar(10),
    basic_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    deductions DECIMAL(10,2),
    month VARCHAR(20),
    year INT,
	FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
-- END

-- INSERTING VALUES IN THE SALARY TABLE
INSERT INTO salary (salary_id, emp_id, basic_salary, bonus, deductions, month, year) VALUES
("SAL01", 'Emp01', 50000, 5000, 2000, 'February', 2025),
("SAL02", 'Emp02', 60000, 7000, 2500, 'February', 2025),
("SAL03", 'Emp03', 45000, 4000, 1500, 'February', 2025),
("SAL04", 'Emp04', 48000, 4500, 1800, 'February', 2025),
("SAL05", 'Emp05', 52000, 4800, 2000, 'February', 2025),
("SAL06", 'Emp06', 47000, 3500, 1700, 'February', 2025),
("SAL07", 'Emp07', 49000, 3000, 1200, 'February', 2025),
("SAL08", 'Emp08', 55000, 5200, 2100, 'February', 2025),
("SAL09", 'Emp09', 51000, 4100, 1600, 'February', 2025),
("SAL10", 'Emp10', 53000, 4300, 1750, 'February', 2025),
("SAL11", 'Emp11', 46000, 2800, 1500, 'February', 2025),
("SAL12", 'Emp12', 49500, 3200, 1400, 'February', 2025),
("SAL13", 'Emp13', 50500, 3000, 1250, 'February', 2025),
("SAL14", 'Emp14', 62000, 6500, 2700, 'February', 2025),
("SAL15", 'Emp15', 64000, 7000, 3000, 'February', 2025),
("SAL16", 'Emp16', 56000, 4600, 1800, 'February', 2025),
("SAL17", 'Emp17', 58500, 4900, 2100, 'February', 2025),
("SAL18", 'Emp18', 47500, 2700, 1000, 'February', 2025),
("SAL19", 'Emp19', 54000, 3600, 1600, 'February', 2025),
("SAL20", 'Emp20', 51500, 3300, 1300, 'February', 2025);
-- END

-- SELECT A SALARY TABLE
Select * from salary;
-- END

-- CREATING ATTENDANCE TABLE IN THE DATABASE SALARY MANAGEMENT SYSTEM
CREATE TABLE attendance (
    attendance_id varchar(10) PRIMARY KEY,
    emp_id varchar(10),
    attendance_date DATE,
    status ENUM('Present', 'Absent', 'Leave'),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
-- END

-- INSERTING VALUES IN THE ATTENDANCE TABLE
INSERT INTO attendance (attendance_id, emp_id, attendance_date, status) VALUES
("ATTE01", 'Emp01', '2025-02-01', 'Present'),
("ATTE02", 'Emp02', '2025-02-01', 'Absent'),
("ATTE03", 'Emp03', '2025-02-01', 'Present'),
("ATTE04", 'Emp04', '2025-02-02', 'Leave'),
("ATTE05", 'Emp05', '2025-02-02', 'Absent'),
("ATTE06", 'Emp06', '2025-02-01', 'Present'),
("ATTE07", 'Emp07', '2025-02-01', 'Present'),
("ATTE08", 'Emp08', '2025-02-01', 'Leave'),
("ATTE09", 'Emp09', '2025-02-01', 'Present'),
("ATTE10", 'Emp10', '2025-02-01', 'Present'),
("ATTE11", 'Emp11', '2025-02-01', 'Absent'),
("ATTE12", 'Emp12', '2025-02-01', 'Present'),
("ATTE13", 'Emp13', '2025-02-01', 'Present'),
("ATTE14", 'Emp14', '2025-02-01', 'Leave'),
("ATTE15", 'Emp15', '2025-02-01', 'Present'),
("ATTE16", 'Emp16', '2025-02-01', 'Absent'),
("ATTE17", 'Emp17', '2025-02-01', 'Present'),
("ATTE18", 'Emp18', '2025-02-01', 'Present'),
("ATTE19", 'Emp19', '2025-02-01', 'Present'),
("ATTE20", 'Emp20', '2025-02-01', 'Leave');
-- END

-- SELECT A ATTENDANCE TABLE
Select * from attendance;
-- END

-- CREATING PAYMENTS TABLE IN THE DATABASE SALARY MANAGEMENT SYSTEM
CREATE TABLE payments (
    payment_id varchar(10) PRIMARY KEY,
    emp_id varchar(10),
    payment_date DATE,
    amount DECIMAL(10, 2),
    payment_status ENUM('Paid', 'Pending'),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
-- END

-- INSERTING VALUES IN THE PAYMENTS TABLE
INSERT INTO payments (payment_id, emp_id, payment_date, amount, payment_status) VALUES
("PAY01", 'Emp01', '2025-02-28', 53000, 'Paid'),
("PAY02", 'Emp02', '2025-02-28', 64500, 'Pending'),
("PAY03", 'Emp03', '2025-02-28', 47500, 'Paid'),
("PAY04", 'Emp04', '2025-02-28', 50700, 'Paid'),
("PAY05", 'Emp05', '2025-02-28', 54800, 'Paid'),
("PAY06", 'Emp06', '2025-02-28', 48800, 'Paid'),
("PAY07", 'Emp07', '2025-02-28', 50800, 'Pending'),
("PAY08", 'Emp08', '2025-02-28', 58100, 'Paid'),
("PAY09", 'Emp09', '2025-02-28', 53500, 'Paid'),
("PAY10", 'Emp10', '2025-02-28', 55550, 'Pending'),
("PAY11", 'Emp11', '2025-02-28', 47300, 'Paid'),
("PAY12", 'Emp12', '2025-02-28', 51300, 'Paid'),
("PAY13", 'Emp13', '2025-02-28', 52250, 'Paid'),
("PAY14", 'Emp14', '2025-02-28', 65800, 'Paid'),
("PAY15", 'Emp15', '2025-02-28', 68000, 'Pending'),
("PAY16", 'Emp16', '2025-02-28', 58800, 'Paid'),
("PAY17", 'Emp17', '2025-02-28', 61300, 'Paid'),
("PAY18", 'Emp18', '2025-02-28', 49200, 'Paid'),
("PAY19", 'Emp19', '2025-02-28', 56000, 'Pending'),
("PAY20", 'Emp20', '2025-02-28', 53500, 'Paid');
-- END

-- SELECT A PAYMENTS TABLE
Select * from payments;
-- END

-- View Employees with Department
SELECT e.emp_id, e.emp_name, d.dept_name, e.emp_email
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;
-- END

 -- Calculate Net Salary
SELECT emp_id, basic_salary, bonus, deductions,
(basic_salary + bonus - deductions) AS Net_Salary
FROM salary;
-- END

-- Total Salary Paid in Month
SELECT month, year, SUM(basic_salary + bonus - deductions) AS Total_Salary
FROM salary
WHERE month = 'February' AND year = 2025
GROUP BY month, year;
-- END

-- Check Attendance Report
SELECT e.emp_name, a.attendance_date, a.status
FROM attendance a
JOIN employees e ON a.emp_id = e.emp_id
WHERE a.status = 'Present';
-- END

-- Pending Payments
SELECT p.payment_id, e.emp_name, p.amount, p.payment_status
FROM payments p
JOIN employees e ON p.emp_id = e.emp_id
WHERE p.payment_status = 'Pending';
-- END

                 -- STORED PROCEDURE --

-- Calculate Net Salary for an Employee
DELIMITER //

CREATE PROCEDURE CalculateNetSalary (
    IN p_emp_id VARCHAR(10),
    OUT p_net_salary DECIMAL(10,2)
)
BEGIN
    DECLARE v_basic DECIMAL(10,2);
    DECLARE v_bonus DECIMAL(10,2);
    DECLARE v_deductions DECIMAL(10,2);

    SELECT basic_salary, bonus, deductions
    INTO v_basic, v_bonus, v_deductions
    FROM salary
    WHERE emp_id = p_emp_id
    ORDER BY year DESC, month DESC
    LIMIT 1;

    SET p_net_salary = v_basic + v_bonus - v_deductions;
END;
//

DELIMITER ;
-- END

-- !!!!! CALL BY PROCEDURES !!!!! --

CALL CalculateNetSalary('Emp01', @net);
SELECT @net AS Net_Salary;
-- END

-- Get Employee Attendance by Date Range

DELIMITER //

CREATE PROCEDURE GetAttendanceReport (
    IN p_start DATE,
    IN p_end DATE
)
BEGIN
    SELECT e.emp_name, a.attendance_date, a.status
    FROM attendance a
    JOIN employees e ON e.emp_id = a.emp_id
    WHERE a.attendance_date BETWEEN p_start AND p_end;
END;
//

DELIMITER ;
-- END

-- CALL BY PROCEDURES
CALL GetAttendanceReport('2025-02-01', '2025-02-10');
-- END

-- View Pending Payments

DELIMITER //

CREATE PROCEDURE ShowPendingPayments ()
BEGIN
    SELECT p.payment_id, e.emp_name, p.amount, p.payment_status
    FROM payments p
    JOIN employees e ON e.emp_id = p.emp_id
    WHERE p.payment_status = 'Pending';
END;
//

DELIMITER ;
-- END

-- CALL BY PROCEDURES
CALL ShowPendingPayments();
-- END

