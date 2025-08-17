

CREATE TABLE assignmt(
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);
SELECT * FROM assignmt

INSERT INTO assignmt(first_name,last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);


-- Q.1 recieve all employee ' first name and their department

SELECT first_name,department from assignmt

--Q.2 update the salary of all employee in the 'IT' department by inresing it by 10%

UPDATE assignmt
SET salary=salary+(salary*0.1)
WHERE department='IT'

SELECT * FROM assignmt

--Q.3 delete all employee who are older than 34 year
DELETE FROM assignmt
where logic likh lo

--Q.4 add a new column 'email' to the employee table 

ALTER TABLE assignmt
ADD COLUMN email VARCHAR(50);

--Q.5 rename the department column to 'dep_name'

ALTER TABLE assignmt
RENAME COLUMN department TO dep_name;

--Q. 6 retrieve the name of employee who joining after january after 1, 2021

SELECT first_name , last_name , joining_date FROM assignmt
WHERE joining_date>'2021-01-01'

-- Q.7 change the data type of the 'salary' column to integer
ALTER TABLE assignmt
ALTER COLUMN salary TYPE INTEGER USING salary ::INTEGER;

SELECT * FROM assignmt

--Q.8 insert a new employee with the folowing detail ;
-- ('raj','singh','marketing ',6000,'2023-09-05 ',30)

INSERT INTO assignmt (first_name,last_name,dep_name,salary,joining_date,age)
	VALUES ('raj','singh','marketing ',6000,'2023-09-05 ',30);

--Q.9 list all employee with their age and salry in descending order of salary 


SELECT first_name, age ,salary FROM assignmt
ORDER BY salary DESC;

--Q.10  update age of the employee +1 to every employee
UPDATE assignmt
SET age=age +1	

