USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);

SELECT title from titles
WHERE emp_no IN (SELECT emp_no FROM employees
                WHERE first_name = 'Aamod');

SELECT first_name, last_name
FROM employees
WHERE gender = 'F'
AND emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
    );

#BONUS
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
    AND emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
    );

SELECT first_name, last_name
FROM employees
WHERE emp_no = (
    SELECT emp_no
    FROM salaries
    ORDER BY salary DESC
    LIMIT 1
    )