CREATE TABLE dept_name (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(40) UNIQUE NOT NULL
	);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
    birth_date VARCHAR(15) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date VARCHAR(15) NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
    emp_no INT NOT NULL,
    title VARCHAR(50) NOT NULL,
    PRIMARY KEY (emp_no, title)
);