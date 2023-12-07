SELECT emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   emp.sex,
	   sal.salary
FROM employees AS emp
	LEFT JOIN salaries AS sal
	ON emp.emp_no = sal.emp_no
ORDER BY emp.emp_no;


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


SELECT dept.dept_no, 
       dept.dept_name,
       emp.emp_no,
	   emp.last_name,
	   emp.first_name
FROM employees AS emp
	INNER JOIN dept_manager
	ON emp.emp_no = dept_manager.emp_no
	INNER JOIN departments AS dept
	ON dept_manager.dept_no = dept.dept_no
ORDER BY emp.emp_no;


SELECT d.dept_no, 
       e.emp_no,
	   e.last_name,
	   e.first_name,
	   d.dept_name
FROM employees AS e
	INNER JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
	INNER JOIN departments as d
	ON de.dept_no = d.dept_no
ORDER BY e.emp_no;


SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


SELECT * FROM departments;

SELECT de.emp_no,
	   e.last_name,
	   e.first_name
FROM dept_emp AS de
	INNER JOIN employees AS e
	ON de.emp_no = e.emp_no
WHERE de.dept_no = 'd007'
ORDER BY e.emp_no;

SELECT de.emp_no,
	   e.last_name,
	   e.first_name
FROM dept_emp AS de
	INNER JOIN employees AS e
	ON de.emp_no = e.emp_no
	INNER JOIN departments AS d
	ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;


SELECT de.emp_no,
	   e.last_name,
	   e.first_name,
	   d.dept_name
FROM dept_emp AS de
	INNER JOIN employees AS e
	ON de.emp_no = e.emp_no
	INNER JOIN departments AS d
	ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;


SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;