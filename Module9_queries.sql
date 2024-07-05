SELECT
	e.emp_no,
	n.dept_no,
	e.last_name,	
	e.first_name,
	d.dept_name
FROM
	employees e
	dept_manager n
	dept_name d
JOIN
	dept_manager
	dept_name
ON
	e.emp_no =n.emp_no;

SELECT
	emp_no,
	last_name,	
	first_name,
	hire_date
FROM
	employees
WHERE 
	TO_DATE(hire_date, 'MM-DD-YYYY') BETWEEN '1986-01-01' AND '1986-12-31'
;

SELECT 
    d.dept_no,
    d.dept_name,
    e.emp_no,
    e.last_name,
    e.first_name
FROM 
    dept_manager dm
JOIN 
    dept_name d
ON 
    dm.dept_no = d.dept_no
JOIN 
    employees e
ON 
    dm.emp_no = e.emp_no;


SELECT 
    d.dept_no,
    d.dept_name,
    e.emp_no,
    e.last_name,
    e.first_name
FROM 
    dept_emp de
JOIN 
    dept_name d
ON 
    de.dept_no = d.dept_no
JOIN 
    employees e
ON 
    de.emp_no = e.emp_no;

SELECT 
    first_name,
    last_name,
    sex
FROM 
    employees
WHERE
    first_name = 'Hercules'
    AND last_name LIKE 'B%';


SELECT 
    e.emp_no,
    e.last_name,
    e.first_name
FROM 
    employees e
JOIN 
    dept_emp de ON e.emp_no = de.emp_no
JOIN 
    dept_name d ON de.dept_no = d.dept_no
WHERE 
    d.dept_name = 'Sales';

SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM 
    employees e
JOIN 
    dept_emp de ON e.emp_no = de.emp_no
JOIN 
    dept_name d ON de.dept_no = d.dept_no
WHERE 
    d.dept_name IN ('Sales', 'Development');

SELECT 
    last_name,
    COUNT(*) AS frequency
FROM 
    employees
GROUP BY 
    last_name
ORDER BY 
    frequency DESC;

