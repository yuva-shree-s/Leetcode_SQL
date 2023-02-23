CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  name VARCHAR,
  salary INT
);

INSERT INTO employees (employee_id, name, salary)
VALUES
  (2, 'Meir', 3000),
  (3, 'Michael', 3800),
  (7, 'Addilyn', 7400),
  (8, 'Juan', 6100),
  (9, 'Kannon', 7700);

#Solution:
select employee_id , 
CASE when ((employee_id%2 = 1) and name not ilike 'M%') then salary 
 else 0 end as bonus
 from employees
 order by employee_id;
