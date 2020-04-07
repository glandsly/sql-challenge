DROP TABLE departments, dept_emp, employees;

CREATE TABLE departments (
	dept_no CHAR(4) PRIMARY KEY,
	dept_name VARCHAR(30)
);

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	gender CHAR(1),
	hire_date DATE
);

CREATE TABLE dept_manager (
	dept_no CHAR(4) REFERENCES departments(dept_no),
	emp_no INTEGER REFERENCES employees(emp_no),
	from_date DATE,
	to_date DATE
);

CREATE TABLE dept_emp (
	emp_no INTEGER REFERENCES employees(emp_no),
	dept_no CHAR(4) REFERENCES departments(dept_no),
	from_date DATE,
	to_date DATE
);

CREATE TABLE salaries (
	emp_no INTEGER REFERENCES employees(emp_no),
	salary INTEGER,
	from_date DATE,
	to_date DATE
);

CREATE TABLE titles (
	emp_no INTEGER REFERENCES employees(emp_no),
	title VARCHAR(50),
	from_date DATE,
	to_date DATE
);

COPY departments(dept_no, dept_name) 
FROM 'D:\UT Data Boot Camp\HW\sql-challenge\data\departments.csv' DELIMITER ',' CSV HEADER;

COPY employees(emp_no, birth_date, first_name, last_name, gender, hire_date) 
FROM 'D:\UT Data Boot Camp\HW\sql-challenge\data\employees.csv' DELIMITER ',' CSV HEADER;

COPY dept_manager(dept_no, emp_no, from_date, to_date) 
FROM 'D:\UT Data Boot Camp\HW\sql-challenge\data\dept_manager.csv' DELIMITER ',' CSV HEADER;

COPY dept_emp(emp_no, dept_no, from_date, to_date) 
FROM 'D:\UT Data Boot Camp\HW\sql-challenge\data\dept_emp.csv' DELIMITER ',' CSV HEADER;

COPY salaries(emp_no, salary, from_date, to_date) 
FROM 'D:\UT Data Boot Camp\HW\sql-challenge\data\salaries.csv' DELIMITER ',' CSV HEADER;

COPY titles(emp_no, title, from_date, to_date) 
FROM 'D:\UT Data Boot Camp\HW\sql-challenge\data\titles.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM employees;