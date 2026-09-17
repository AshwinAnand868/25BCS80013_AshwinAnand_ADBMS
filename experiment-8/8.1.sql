CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(80),
    emp_salary NUMERIC(10, 2),
    department VARCHAR(80)
);

CREATE OR REPLACE PROCEDURE add_employee (
    emp_id INT,
    emp_name VARCHAR(80),
    emp_salary NUMERIC(10, 2),
    emp_department VARCHAR(80)
)
LANGUAGE plpgsql
AS
$$
BEGIN
    IF emp_id % 2 = 0 THEN
        RAISE EXCEPTION 'Employee with even id cannot be added';
    END IF;

    INSERT INTO employees (
        emp_id,
        emp_name,
        emp_salary,
        department
    )
    VALUES (
        emp_id,
        emp_name,
        emp_salary,
        emp_department
    );

    RAISE NOTICE 'Employee with id % has been added', emp_id;
END;
$$;

CALL add_employee(101, 'Ashwin', 1000000, 'ENGINEERING');

CALL add_employee(102, 'Rahul', 60000, 'HR');