---Q1.
SELECT emp.emp_no, emp.last_name,  emp.first_name, emp.sex , sal.salary
FROM employees AS emp
INNER JOIN salaries AS sal ON 
emp.emp_no = sal.emp_no;

---Q2.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986%';

---Q3.
SELECT dp.dept_no, dp.dept_name, emp.emp_no,emp.last_name, emp.first_name
FROM employees as emp
INNER JOIN dept_manager as dpm
ON emp.emp_no = dpm.emp_no
INNER JOIN departments as dp
ON dpm.dept_no = dp.dept_no;

---Q4.
SELECT emp.emp_no,emp.last_name,emp.first_name,dp.dept_name
FROM departments as dp
JOIN dept_emp as dpem
ON dp.dept_no = dpem.dept_no
JOIN employees as emp
ON dpem.emp_no = emp.emp_no;

---Q5.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

---Q6
SELECT emp.emp_no,
    emp.first_name,
    emp.last_name,
    d.dept_name
FROM employees as emp
    INNER JOIN dept_emp AS de
        ON (emp.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales';

---Q7
SELECT emp.emp_no, emp.last_name, emp.first_name, dp.dept_name
FROM employees as emp
INNER JOIN dept_emp as dpem
ON emp.emp_no = dpem.emp_no
INNER JOIN departments as dp
ON dpem.dept_no = dp.dept_no
WHERE dept_name IN ('Sales','Development')
---Q8
SELECT last_name,COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC

