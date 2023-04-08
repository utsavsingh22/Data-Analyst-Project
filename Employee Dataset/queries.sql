
-- create
CREATE TABLE EMPLOYEE (
  EmpNo int primary key,
  Ename varchar(100),
  Salary int,
  Bonus int,
  DeptId varchar(10)
);

-- insert
INSERT INTO EMPLOYEE(EmpNo,Ename,Salary,Bonus,DeptId) VALUES (101, 'Aaliya', 10000, 234, 'D02'),
(102, 'Kritika', 60000, 123, 'D01'),
(103, 'Shabbir', 45000, 566, 'D01'),
(104, 'Gurpreet', 19000, 565, 'D04'),
(105, 'Joseph', 34000, 875, 'D03'),
(106, 'Sanya', 48000, 695, 'D02'),
(107, 'Vergese', 15000, null, 'D01'),
(108, 'Nachaobi', 29000, null, 'D05'),
(109, 'Daribha', 42000, null, 'D04'),
(110, 'Tanya', 50000, 467, 'D05');


-- fetch 
SELECT * FROM EMPLOYEE;

--Q1. Find all those employees who have not been given a bonus.
SELECT Ename FROM EMPLOYEE WHERE Bonus is null

--Q2. Display details of all those employees whose name starts with 'K'
SELECT Ename FROM EMPLOYEE WHERE ENAME LIKE 'K%'

--Q3. Display details of all those employees whose name ends with 'a'
SELECT Ename FROM EMPLOYEE WHERE ENAME LIKE '%a'

--Q4. Display details of all those employees whose names consist of exactly 5 letters and starts with any letter but has ‘ANYA’ after that.
SELECT Ename FROM EMPLOYEE WHERE ENAME LIKE '%anya'

--Q5. Display names of all the employees containing 'se' as a substring in name
SELECT  Ename FROM EMPLOYEE WHERE ENAME LIKE '%se' 
