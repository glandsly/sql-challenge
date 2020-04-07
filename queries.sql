--Question 2--
SELECT * FROM employees
WHERE EXTRACT(year FROM hire_date) = 1986;

--Question 5--
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Question 8--
SELECT last_name, COUNT(*) FROM employees
GROUP BY last_name
ORDER BY count DESC;