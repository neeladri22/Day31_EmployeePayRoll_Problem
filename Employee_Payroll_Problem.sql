--Welcome to Employee pay roll program

Create Database payroll_service

--go to the databse
use payroll_service

--Creating the Table
Create Table employee_payroll(
id int primary key identity not null,
name varchar(20) not null,
salary int not null,
startdate date not null)

--to select all / display the table
select * from employee_payroll


--Inserting the data in to table
INSERT INTO employee_payroll values ('Neeladri',30000,'2021-07-11'),('Usha',1500,'2017-02-10'),('Hema',40000,'2019-11-04'),('Raji',15000,'2020-06-20');

--to select all / display the table
select * from employee_payroll

--Retrieve salary data from particular employee
SELECT salary FROM employee_payroll
WHERE name = 'Neeladri'

--Retrieve Names from the selected date to present date
select name FROM employee_payroll
WHERE startdate BETWEEN CAST('2021-01-01' AS DATE) AND GETDATE()



--Alter table to add gender column
ALTER TABLE employee_payroll
add  gender char 

--update the gender 
update  employee_payroll
set gender = 'M'

--add field gender field after name field
select id,name,gender,startdate,salary from employee_payroll


--Sum of salary of employee groupby Male employee
select SUM(salary) FROM employee_payroll where gender = 'M' GROUP BY gender

--Average salary of employee groupby Male employee
select AVG(salary) FROM employee_payroll where gender = 'M' GROUP BY gender

--Min salary of employee groupby Male employee
select MIN(salary) FROM employee_payroll where gender = 'M' GROUP BY gender

--Max salary of employee groupby Male employee
select MAX(salary) FROM employee_payroll where gender = 'M' GROUP BY gender

--Number of employee groupby Male employee
select COUNT(salary) FROM employee_payroll where gender = 'M' GROUP BY gender


--Alter the Table
ALTER TABLE employee_payroll
add phone bigint , address varchar(25) default 'Visaka', department varchar(20) 

select * from employee_payroll

--updating the phone, address and department field 
update employee_payroll
set phone = 8529637414, address = 'Visaka', department = 'ECE' where name = 'Neeladri'

update employee_payroll
set phone = 6325698741, address = 'Ichapuram', department = 'MEC' where name = 'Raji'



--Altering the column deparment to not null
ALTER table employee_payroll
alter column department varchar(20) not null

--Altering the column address to not null
ALTER table employee_payroll
alter column address varchar(25)  not null

--insert the data into employee_payroll table
insert into employee_payroll values ('Raji',20000,'2019-12-15','M',7896541365,'amzon','Production')


--Altering the table by adding additional information regarding salaryies of employee
ALTER TABLE employee_payroll
add BasicPay float, Deductions float, TaxablePay float, IncomeTax float, NetPay float

--updating the phone, address and department field 
update employee_payroll
set BasicPay = 25000, Deductions = 2000, TaxablePay = 1000, IncomeTax = 500, NetPay= 21500 where name = 'Neeladri'

update employee_payroll
set BasicPay = 20000, Deductions = 1000, TaxablePay = 1000, IncomeTax = 200, NetPay= 18000 where name = 'Raji'













