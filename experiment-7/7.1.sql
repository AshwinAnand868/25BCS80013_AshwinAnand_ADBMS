DO $$
DECLARE
    emp_cursor CURSOR FOR
        SELECT Name, Salary
        FROM Staff
        ORDER BY Salary DESC
        LIMIT 5;

    emp_name Staff.Name%TYPE;
    emp_salary Staff.Salary%TYPE;
BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO emp_name, emp_salary;

        EXIT WHEN NOT FOUND;

        RAISE NOTICE 'Name: %, Salary: %', emp_name, emp_salary;
    END LOOP;

    CLOSE emp_cursor;
END $$;