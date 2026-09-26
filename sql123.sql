create database collage;
use collage;
create table student(id int primary key,name varchar(50),age int,city varchar(50));
insert into student values (1,'sahil':20,'pune'),(2,'pandu':22,'pune'),(3,'vaibhav':23,'goa');
select * from student;
select name,age from student;
update student set city ='gargoti' where id =1;
delete from student where id=3;
desc student;
show tables;
show databases;
drop table student;
drop databases college;



use sahil1;
#1. create databse and use it 
create database company;
use company;

#2.create employee table
create table employeee(emp_id int primary key auto_increment,
name varchar(50) not null,e_mail varchar (100)unique,age int check (age>=18),city varchar(50) default"pune");
insert into employeee (name,e_mail,age,city) values("sahil","sahil@gmail.com",19,"kolhapur"),
("vaibhav","vaibhav@gmail.com",22,"pune"),("varad","varad@gmail.com",23,"chakan");
select * from employeee;
#q3Use DESC to display the structure of the employee table.
describe employeee;

#q4Use DESC to display the structure of the employee table.
create table emp1(name varchar(50),e_mail varchar(100),age int, city varchar(50),salary int);
insert into emp1 values('sahil','sahil@gmail.com',22,'mumbai',44000),('rudra','rudra@gmail.com',22,'pune',45000),
('vaibhav','vaibhav@gmail.com',25,'chakan',33000);
select * from emp1;
#q5. Display all employees using SELECT.
select * from emp1;

use sahil1;
#q6. Display only name and salary of employees whose salary is greater than 30000.
select name,salary from emp1 where salary>30000;
#q7. Find employees whose name starts with A using LIKE

#q8. Find employees whose salary is between 25000 and 50000.alter.
create table emp555(name varchar(50),salary int);
insert into emp555 values("sahil",10000),("deepak",30000),("vinyak",35000);
select * from emp555 where salary between 20000 and 35000;

#q9 . Find employees who are from Pune, Mumbai, or Kolhapur using IN.
create table t555(city varchar(50));
insert into t555 values("pune"),("mumbai"),("kolhapur"),("nashik"); 
select * from t555 where city in ('Mumbai','pune','kolhapur','nashik');

#q10.. Find employees who are from Pune AND have salary greater than 30000.
create table z1(city varchar(50),name varchar(50),salary int);
insert into z1 values('pune',"vaibhav",35000),('kolhapur',"sanika",40000);
select * from z1 where city='pune' and (salary > 30000);

#q11. Display unique cities using DISTINCT.
create table x112(name varchar(50),city varchar(30));
insert into x112 values("vaibhav","kolhapur"),("vihan","gargoti"),("fff","kolhapur");
select distinct city from x112;
select * from x1;

#q12. Display name as Employee_Name and salary as Monthly_Salary using Alias (AS).

create table z11(name varchar(50),salary int);
insert into z11 values("vaibhav",35000),("sanika",40000);
select name as emp_name,salary as monthly_salary from z11;


use sahil1;
#q13.Count the total number of employees using COUNT().

create table t77(emp_id int primary key auto_increment,name varchar(50)not null,
email varchar(100) unique,age int check(age>=18),city varchar(50),salary int);
insert into t77(name,email,age,city,salary) values('vaibhav','vaibhav@gmail.com',22,'pune',45000),
('roshan','roshan@gmail.com',24,'kolhapur',35000),('rohan','rohan@gmail.com',26,'gargoti',34000),
('shubham','shubham@gmail.com',27,'nashik',37000);

select count(*) from t77;
select * from t77;

#q14. Update the salary of the employee whose emp_id = 3 to 45000.
update t77 set salary = 45000 where emp_id =3;
select * from t77;

#q15. Use ALTER and MODIFY:
Add a phone column.
Change the name column to VARCHAR(100).
alter table t77 add phone int;
alter table t77 modify name varchar(100);
describe t77;

use datamites1;
CREATE DATABASE join_practice;
USE join_practice;


-- Employee table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    manager_id INT,
    salary int
    );


-- Department table
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- Employee data
INSERT INTO employee (emp_id, name, dept_id, manager_id, salary)
VALUES
(1, 'Amit', 101, 3, 50000),
(2, 'Rahul', 102, 3, 30000),
(3, 'Sneha', 101, NULL, 60000),
(4, 'Rohan', 105, 6, 40000),
(5, 'Priya', 103, 6, 35000),
(6, 'Neha', 104, NULL, 45000);


-- Department data
INSERT INTO department (dept_id, dept_name)
VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Sales'),
(104, 'Finance'),
(106, 'Marketing');


#q1. Display the employee name and department name for employees whose department exists.
select name,dept_name  from employee
inner join department
 on employee.dept_id =department.dept_id;
 
 select * from employee;
select * from department;
use employees;

#q2. Display the employee name, department name and salary for employees working in the IT department.
select name,dept_name,salary from employee
inner join department
on employee.dept_id=department.dept_id
where dept_name ='IT';


#q3.Find the number of employees in each department using INNER JOIN + GROUP BY
select dept_name,count(emp_id)from employee
inner join department
on employee. dept_id=department. dept_id
group by dept_name;

#q4. left join Display all employees along with their department names, including employees whose department doesn't exist.
select dept_name,name from employee
left join department
on employee.dept_id=department.dept_id;


#q5.Find employees who do not have a matching department.
select name from employee
left join department
on employee.dept_id=department.dept_id  where department.dept_id is null;


#q6.Find the average salary of employees in each department, including departments with no employees.
select round( avg(salary),2),dept_name from department
left join employee
on department.dept_id=employee.dept_id
group by dept_name;

use datamites1;

#FETCH DATA FOR COURSES who teach DA--?
select * from course_data  where course_name = "da";
# List courses that have a duration of "1 month".---?2
select * from course_data where course_duration="1month";
# Find the total number of courses offered.---?
select count(course_name)as total_courses from course_data;
# Find the average fee of all courses.---?4
select avg(fees) from course_data;
#Get the highest and lowest course fees.---?5
select max(fees),min(fees)from course_data;
#List trainers.-----?6
select trainer from course_data;
#Find the total revenue generated by each trainer.----?7
select trainer,sum(fees) as total_revenue from course_data group by trainer; 
#Count how many courses each trainer teaches.----?8
select trainer,count(fees) as total_course from course_data group by trainer;
#Retrieve course details sorted by fees in descending order.----?9
select * from  course_data order by fees;
#Find trainers who teach more than one course.----?10
select trainer,count(course_name) from course_data group by trainer having count(course_name)>1;
#Find courses where the fees are above the average course fee.----?11
select * from course_data where fees>(select avg(fees)from courses);
use employees;
select * from employees;
use datamites1;
#Q1. Find the total number of employees.
select count(*) as total_employees from employees;

#Q2. Find the number of male and female employees.
select gender,count(*) as total from employees group by gender;

#Q3. Find the earliest and latest employee hire dates.
SELECT MIN(hire_date) AS earliest_hire,
       MAX(hire_date) AS latest_hire
FROM employees;

#Q4. Find employees hired after 1995.
select * from employees where year(hire_date)>1995;

#Q5. Find employees born before 1960.
select * from employees where year(birth_date)<1960;

#Q6. Find the top 10 oldest employees.
select * from employees order by birth_date asc limit 10;

#Q7. Find the youngest 10 employees.
select * from employees order by birth_date desc limit 10;

#Q8. Find the average employee age.
select avg(timestampdiff(year,birth_date,curdate())) as avg_age
from employees;

#Q9. Find the number of employees hired in each year.
select year(hire_date)as hire_year,count(*)as employee_count from employees group by year(hire_date);

#Q10. Find the number of employees hired in each decade.
select floor(year(hire_date)/10)*10 as decade,count(*) 
from employees group by floor(year(hire_date)/10)*10
order by decade ;

🟡 Level 2 — Salary Analysis

This is where your Data Analytics thinking starts.

Salary Questions
use employees;
select * from employees;
#Q11. Find the highest salary in the company.
select max(salary)from salaries;

#Q12. Find the lowest salary.
select min(salary)from salaries;

#Q13. Find the average salary.
select avg(salary)from salaries;

#Q14. Find the median salary.


#Q15. Find the top 10 highest-paid employees.
select * from salaries order by salary desc limit 10;
use employees;
#Q16. Find the bottom 10 lowest-paid emp
select * from salaries order by salary asc limit 10;
#Q17. Find the second-highest salary.
select max(salary)as second_salary from salaries where salary <(select max(salary)from salaries);

#Q18. Find the third-highest salary.
select distinct salary from salaries order by salary desc limit 1;

#Q19. Find the top 5 salaries without using LIMIT.
select distinct s1.salary from salaries s1
where 5 > select count(distinct s2.salary)
from  salaries s2 where s2.salary > s1.salary)
order by s1.salary desc;


#Q20. Find employees whose salary is greater than the company's average salary.
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01'
AND s.salary > (
    SELECT AVG(salary)
    FROM salaries
    WHERE to_date = '9999-01-01'
);
use employees;
#🟠 Level 3 — Department Analysis
select * from employees;
use dept_emp;
select * from dept_emp;
select * from salaries;
select * from departments;
#Q21. Find the number of employees in each department.
select count(emp_no),dept_name from dept_emp 
join departments  on  
dept_emp.dept_no=departments.dept_no group by dept_name;

#Q22. Find the department with the highest number of employees.
select max(e.emp_no),d.dept_name from employees as e
join  dept_emp as de on e.emp_no=de.emp_no
join departments as d on d.dept_no=de.dept_no 
group by d.dept_name;

#Q23. Find the department with the lowest number of employees.
select min(e.emp_no),d.dept_name from employees as e
join dept_emp as de on e.emp_no=de.emp_no
join departments as d on d.dept_no=de.dept_no
group by d.dept_name;

#Q24. Find the average salary of employees in each department.
select avg(e.emp_no),d.dept_name from employees as e
join dept_emp as de on e.emp_no=de.emp_no
join departments as d on d.dept_no=de.dept_no
group by d.dept_name;

#Q25. Find the department with the highest average salary.
	select d.dept_no,de.dept_name,round(avg(s.salary)) as Hig_avg_sal from dept_emp as d
join salaries as s on d.emp_no=s.emp_no
join departments as de on d.dept_no=de.dept_no
group by d.dept_no,de.dept_name
order by Hig_avg_sal desc limit 1;


#Q26. Find the department with the lowest average salary.
select d.dept_no,de.dept_name,round(avg(s.salary)) as low_avg_sal from dept_emp as d
join salaries as s on d.emp_no=s.emp_no
join departments as de on d.dept_no=de.dept_no
group by d.dept_no,de.dept_name
order by low_avg_sal asc limit 1;


#Q27. Find the total salary expense for each department.
select d.dept_no,de.dept_name,round(avg(s.salary)) as total_salary_expense from dept_emp as d
join salaries as s on d.emp_no=s.emp_no
join departments as de on d.dept_no=de.dept_no
group by d.dept_no,de.dept_name
order by total_salary_expense desc;

#Q28. Find departments where the average salary is greater than the company average.
select d.dept_no,de.dept_name,round(avg(s.salary)) as average_salary from dept_emp as d
join salaries as s on d.emp_no=s.emp_no
join departments as de on d.dept_no=de.dept_no
group by d.dept_no,de.dept_name
having avg(s.salary)  > (select avg(salary) from salaries);



#Q29. Find the percentage of employees working in each department.
select dept_no,count(*) * 100 / (select count(*) from dept_emp) as percentage
from dept_emp group by dept_no having count(*)>0;

-- Q30. Rank departments according to average salary.
select d.dept_no,de.dept_name,round(avg(s.salary)) as avg_salary,
rank() over (order by avg(s.salary)desc) as salary_rank
from dept_emp as d
join salaries as s
on d.emp_no=s.emp_no
join departments de on d.dept_no=de.dept_no
group by d.dept_no,de.dept_name
order by salary_rank;

#Q31. Display: employee name,department,salary for every employee
select e.first_name,e.last_name,d.dept_name,s.salary from employees as e
join dept_emp as de on e.emp_no=de.emp_no
join departments as d on de.dept_no=d.dept_no
join salaries as s on e.emp_no=s.emp_no
where s.to_date = '9999-01-01-01'
and de.to_date = '9999-01-01';


#Q32. Find the highest-paid employee in each department.
select e.first_name,e.last_name,d.dept_name,max(s.salary) from employees as e
join dept_emp as de on e.emp_no=de.emp_no
join departments as d on de.dept_no=d.dept_no
join salaries as s on e.emp_no=s.emp_no
group by e.first_name,e.last_name,d.dept_name;


#Q33. Find the lowest-paid employee in each department.
select e.first_name,e.last_name,d.dept_name,min(s.salary) from employees as e
join dept_emp as de on e.emp_no=de.emp_no
join departments as d on de.dept_no=d.dept_no
join salaries as s on e.emp_no=s.emp_no
group by e.first_name,e.last_name,d.dept_name;

#Q34. Find the top 3 highest-paid employees from each department.
select d.dept_no,de.dept_name,round(avg(s.salary)) as Hig_avg_sal from dept_emp as d
join salaries as s on d.emp_no=s.emp_no
join departments as de on d.dept_no=de.dept_no
group by d.dept_no,de.dept_name
order by Hig_avg_sal desc limit 3;

#Q21. Display all employees.
select * from employees;

#Q22. Display only employee first names.
select first_name from employees;

#Q23. Display employee ID and employee name.
select emp_no,first_name,last_name from employees;

#Q24. Find the total number of employees.
select count(*) as total_employees from employees;
 
#Q25. Find the number of male employees
select count(*) as male_employee from employees where gender ='m';

#Q26. Find the number of female employees.
select count(*) as female_employee from employees where gender ='f';

#Q27. Find employees whose gender is M.
select * from employees where gender = 'm';

#Q28. Find employees whose gender is F.
select * from employees where gender ='f';

#Q29. Find employees hired after 1990.
select * from employees where year(hire_date) >'1990';

#Q30. Find employees hired before 1990.
select * from employees where year (hire_date) <'1990';

#Q31. Find employees born after 1960.
select * from employees where year( birth_date) >'1960';

#Q32. Find employees born before 1960.
select * from  employees where year(birth_date) <'1960';

#Q33. Find employees whose first name is Georgi.
select * from employees where first_name ='georgi';

#Q34. Find employees whose first name starts with A.
select * from employees where first_name like'a%';

#Q35. Find employees whose last name starts with S.
select * from employees where last_name like's%';

#Q36. Find employees hired in 1995.
select * from employees where year(hire_date) = '1995';
select * from employees;

-- Q37. Find the earliest hire date.
select min(hire_date) from employees;

#Q38. Find the latest hire date.
select max(hire_date) from employees;

#Q39. Find the highest salary.
select max(salary) from salaries;


#40. Find the lowest salary.
select min(salary) from salaries;

#Q41. Find the average salary.
select avg(salary) from salaries;

#Q42. Find the total salary.
select sum(salary) from salaries;

#Q43. Find the top 5 highest salaries.
select distinct salary from salaries order by salary desc limit 5;

#Q44. Find the bottom 5 salaries.
select distinct salary from salaries order by salary asc limit 5;

#Q45. Count employees hired in 1990.
select count(*) from employees where year(hire_date) ='1990';

#Q46. Count employees hired after 1995.
select count(*) from employees where year(hire_date) ='1995';

#Q47. Find employees whose salary is greater than 50,000.
select e.emp_no,e.first_name,e.last_name,s.salary from employees as e
join salaries as s on e.emp_no = s.emp_no 
group by  e.emp_no,e.first_name,e.last_name,s.salary
having s.salary >50000;

#Q48. Find employees whose salary is between 40,000 and 60,000.
select e.emp_no,e.first_name,e.last_name,s.salary from employees as e
join salaries as s on e.emp_no = s.emp_no 
where s.salary between 40000 and 60000;

#Q49. Find employees whose first name starts with M.
select * from employees where first_name  like'm%';

#Q50. Find employees whose last name ends with son.
select * from employees where last_name like '%son';

use employees;
select * from employees;

#Q51. Display employee ID, first name, and department number.
select e.emp_no,e.first_name,de.dept_no from employees as e
inner join dept_emp as  de
on e.emp_no= de.emp_no; 

#Q52. Display employee first name and department name.
select e.emp_no,e.first_name,de.dept_no from employees as e
inner join dept_emp as de
inner join departments d
on de.dept_no = d.dept_no;

#Q53. Display employee ID, employee name, and department name.
select e.emp_no,e.first_name,d.dept_name from employees as e
inner join dept_emp as de
join departments as d 
on de.dept_no=d.dept_no ;

#Q54. Find all employees who work in the Sales department.
select e.emp_no,e.first_name,e.last_name,d.dept_name from employees as e
 join dept_emp as de on de.emp_no=e.emp_no
join departments as d
on de.dept_no =d.dept_no
group by e.emp_no,e.first_name,e.last_name,d.dept_name
having d.dept_name = "sales";

#Q55. Find all employees who work in the Development department.
select e.emp_no,e.first_name,e.last_name,d.dept_name from employees as e
 join dept_emp as de on de.emp_no=e.emp_no
join departments as d
on de.dept_no =d.dept_no
group by e.emp_no,e.first_name,e.last_name,d.dept_name
having d.dept_name = "development";


#Q56. Find the total number of employees in the Sales department.
select count(e.emp_no),d.dept_name from employees as e
 join dept_emp as de on e.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
group by d.dept_name
having d.dept_name='sales';

#Q57. Display all employees and their department names.
select e.emp_no, e.first_name, e.last_name, d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
On de.dept_no = d.dept_no;

#Q58. Find employees working in the Marketing department.
select e.emp_no, e.first_name, e.last_name, d.dept_name
from  employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
where d.dept_name = 'Marketing';

#Q59. Display employee first name, last name, and department name for employees whose first name starts with A
select e.first_name,e.last_name,d.dept_name from employees as e
inner join dept_emp as de 
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no= d.dept_no
where e.first_name like 'a%';

#Q60. Count how many employees are working in each department.
select count(e.emp_no),d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no= d.dept_no
group by d.dept_name;

#Q61. Display employee first name and department name.
select e.first_name,e.last_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no= d.dept_no;

#Q62. Display employee last name and department name.
select e.last_name,d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no= d.dept_no;

#Q63. Display employee ID, first name, and department name.
select e.emp_no,e.first_name,d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no;

#Q64. Find all employees working in the Finance department.
select e.emp_no,e.first_name,e.last_name,d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where d.dept_name='finance';

#Q65. Find all employees working in the Production department.
select e.emp_no,e.first_name,e.last_name,d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where d.dept_name='production';

#Q66. Find all employees working in the Customer Service department.
select e.emp_no,e.first_name,e.last_name,d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where d.dept_name='customer service';

#Q67. Find all employees working in the Human Resources department.
select e.emp_no,e.first_name,e.last_name,d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where d.dept_name='human resources';

#Q68. Find all employees working in the Research department.
select e.emp_no,e.first_name,e.last_name,d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where d.dept_name='research';

#Q69. Display employees who joined the company after 1995 along with their department name.
select e.first_name, e.last_name, e.hire_date, d.dept_name
from  employees e
inner join  dept_emp de on e.emp_no = de.emp_no
 inner join departments d on de.dept_no = d.dept_no
where year( e.hire_date) > '1995';

#Q70. Display employees whose gender is M along with their department name.
select e.first_name,e.last_name,d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where e.gender='m';

#Q71. Display employees whose gender is F along with their department name.
select e.first_name,e.last_name,d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where e.gender='f';

#Q72. Display employees whose first name starts with A along with their department name.
select e.first_name,e.last_name,d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where e.first_name like'a%';

#Q73. Display employees whose last name starts with S along with their department name.
select e.last_name,d.dept_name from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where e.last_name like's%';

#Q74. Find the number of employees in the Finance department.
select count(*) as total_employees from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where d.dept_name='finance';

#Q75. Find the number of employees in the Sales department.
select count(*) as total_employees from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where d.dept_name='sales';


#Q76. Find the number of employees in the Marketing department.
select count(*) as total_employees from employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join departments as d
on de.dept_no=d.dept_no
where d.dept_name='marketing';


#Q77. Display employee first name, last name, and department name for employees hired after 1990.
select e.first_name, e.last_name, d.dept_name
from  employees e
inner join  dept_emp de on e.emp_no = de.emp_no
 inner join departments d on de.dept_no = d.dept_no
where year( e.hire_date) > '1990';

#Q78. Display employee name and department name for employees born before 1960.
select e.first_name, e.last_name, d.dept_name
from  employees e
inner join  dept_emp de on e.emp_no = de.emp_no
 inner join departments d on de.dept_no = d.dept_no
where year( e.birth_date) < '1960';

#Q79. Display all department names with their employee IDs.
select d.dept_name, de.emp_no
from  departments d
inner join dept_emp de ON d.dept_no = de.dept_no;

#Q80. Count the number of employees in each department
select  d.dept_name, count(de.emp_no) as total_employees
from  departments d
inner join dept_emp de
    on d.dept_no = de.dept_no
group by d.dept_name;

create database Film;

use film;
select * from film;