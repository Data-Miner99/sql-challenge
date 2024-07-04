-- CREATE A DEPARTMENTS TABLE.
CREATE TABLE Departments (
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- CREATE A TITLES TABLE.
CREATE TABLE Titles (
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(40) NOT NULL,
    PRIMARY KEY (title_id)
);

-- CREATE AN EMPLOYEES TABLE.
CREATE TABLE Employees (
    emp_no INTEGER(10) NOT NULL,
    emp_title_id VARCHAR(40) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    sex VARCHAR(4) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES Titles (title_id)
);

-- CREATE A DEPARTMENT EMPLOYEES TABLE.
CREATE TABLE Dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments (dept_no)
);

-- CREATE A MANAGERS TABLE.
CREATE TABLE Dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INTEGER NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

-- CREATE A SALARIES TABLE.
CREATE TABLE Salaries (
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    PRIMARY KEY ("emp_no"),
    FOREIGN KEY ("emp_no") REFERENCES Employees (emp_no)
);
