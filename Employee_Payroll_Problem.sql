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








