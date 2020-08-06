CREATE TABLE employees (
  emp_no VARCHAR(30) PRIMARY KEY,
  emp_title_id VARCHAR(30),
  birth_date VARCHAR(30),
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  sex VARCHAR(30),
  hire_date VARCHAR(30)
);

CREATE TABLE dept_emp (
  emp_no VARCHAR(30) PRIMARY KEY,
  dept_no VARCHAR(30),
  FOREIGN KEY (dept_no) REFERENCES employees(emp_no)	
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(30) PRIMARY KEY,
  emp_no VARCHAR(30),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

CREATE TABLE salaries (
  dept_no VARCHAR(30) PRIMARY KEY,
  emp_no VARCHAR(30),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

CREATE TABLE titles (
  title_id VARCHAR(30) PRIMARY KEY,
  title VARCHAR(30)
);

CREATE TABLE departments (
  dept_no VARCHAR(30) PRIMARY KEY,
  dept_name VARCHAR(30)	
);

