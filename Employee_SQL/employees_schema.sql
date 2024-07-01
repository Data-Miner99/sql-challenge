CREATE TABLE "Departments" (
    "dept_no" VARCHAR NOT NULL,
    "dept_name" VARCHAR NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY ("dept_no")
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR NOT NULL,
    "title" VARCHAR NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY ("title_id")
);

CREATE TABLE "Employees" (
    "emp_no" INT NOT NULL,
    "emp_title_id" VARCHAR NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "sex" VARCHAR NOT NULL,
    "hire_date" DATE NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY ("emp_no"),
    CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY ("emp_title_id") REFERENCES "Titles" ("title_id")
);

CREATE TABLE "Dept_emp" (
    "emp_no" INT NOT NULL,
    "dept_no" VARCHAR NOT NULL,
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY ("emp_no", "dept_no"),
    CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no"),
    CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY ("dept_no") REFERENCES "Departments" ("dept_no")
);

CREATE TABLE "Dept_manager" (
    "dept_no" VARCHAR NOT NULL,
    "emp_no" INT NOT NULL,
    CONSTRAINT "pk_Dept_manager" PRIMARY KEY ("dept_no", "emp_no"),
    CONSTRAINT "fk_Dept_manager_dept_no" FOREIGN KEY ("dept_no") REFERENCES "Departments" ("dept_no"),
    CONSTRAINT "fk_Dept_manager_emp_no" FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no")
);

CREATE TABLE "Salaries" (
    "emp_no" INT NOT NULL,
    "salary" INT NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY ("emp_no"),
    CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no")
);
