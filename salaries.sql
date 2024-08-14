
SELECT * FROM new.salaries;
use new;
-- 1  Show all the columns and rows 
select * from salaries;
-- 2 show only employeename and jobtitle
select EmployeeName,JobTitle from salaries;
-- 3 show the number of employee
select count(*) from salaries;
-- 4 show unique jobtitle
select distinct JobTitle from salaries;
-- 5 show jobtitle and overtimepay for all employees with overtimepay >50000
select JobTitle,OvertimePay from salaries 
where OvertimePay>50000;
-- 6 show the avg basepay for all employees
select avg(BasePay) from salaries;
-- 7 show top highest paid employess
select EmployeeName,TotalPay from salaries
order by TotalPay desc
limit 10;
-- 8 show avgbasepay,overtimepay and otherpay for employees
select EmployeeName,((BasePay+OvertimePay+OtherPay)/3) from salaries;
-- 9 show all employees who have the word"MANAGER" in their jobtitle
select EmployeeName,JobTitle from salaries
where JobTitle like '%MANAGER%';
-- 10 show all employees with a job title not equal o "MANAGER"
select EmployeeName,JobTitle from salaries
where JobTitle <> '%MANAGER%';
-- 11 all employees with a total pay between 50000 and 75000
select EmployeeName,TotalPay from salaries
where TotalPay between 50000 and 75000;
-- 12 all employees with basepay < 50000 or totalpay >100000
select EmployeeName,BasePay,TotalPay from salaries
where BasePay<50000 or TotalPay >100000;
-- 13 show all employees with a totalpay benefitsvalue between 125000 and 150000 and jobtitle containing "DIRECTOR"
select EmployeeName,Totalpay,jobtitle from salaries
where totalpay between 125000 and 150000
and jobtitle like '%director%';
-- 14 show all employees orderd by their totalapy benefits in descending order
select EmployeeName ,totalpaybenefits from salaries
order by totalpaybenefits desc;
-- 15 show all job title with an av basepay of atleast 100000 and order these pay by the avg basepay in descending order
select jobtitle,avg(basepay) from salaries
group by jobtitle
having avg(basepay)>=100000
order by avg(basepay) desc;
-- 16 delete the column
alter table salaries
drop column notes;
select * from salaries;