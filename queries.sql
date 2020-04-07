--Question 1--
SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.gender, 
	s.salary
FROM 
	employees AS e
INNER JOIN salaries AS s ON e.emp_no=s.emp_no;

--Question 2--
SELECT * FROM employees
WHERE EXTRACT(year FROM hire_date) = 1986;

--Question 3--
SELECT 
	dm.dept_no, 
	d.dept_name, 
	dm.emp_no, 
	e.last_name, 
	e.first_name,
	dm.from_date,
	dm.to_date
FROM 
	dept_manager AS dm
INNER JOIN departments AS d ON dm.dept_no=d.dept_no
INNER JOIN employees AS e ON dm.emp_no=e.emp_no;

--Question 4--
SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM 
	employees AS e
INNER JOIN dept_emp AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no
ORDER BY e.emp_no ASC;

--Question 5--
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Question 6--
SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM 
	employees AS e
INNER JOIN dept_emp AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no
WHERE dept_name = 'Sales';

--Question 7--
SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM 
	employees AS e
INNER JOIN dept_emp AS de ON e.emp_no=de.emp_no
INNER JOIN departments AS d ON de.dept_no=d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--Question 8--
SELECT 
	last_name, 
	COUNT(*) 
FROM 
	employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;