--/#
--select statement 
--*,Top,Distinct,count,As,Max,Min,Avg
--*/
select * from EmployeeDemographics 
select FirstName,LastName from EmployeeDemographics
select Top 5 * from EmployeeDemographics
select Distinct(EmployeeID) from EmployeeDemographics
select Distinct(Gender) from EmployeeDemographics
select COUNT(LastName) As LastNameCount from EmployeeDemographics
select * from EmpolyeeSalary 
select MAX(Salary) from EmpolyeeSalary
select MIN(Salary) from EmpolyeeSalary
select AVG(Salary) from EmpolyeeSalary
select * from SQLToutrial.dbo.EmpolyeeSalary
-------------------------------------------------
/* 
where statement 
=,<>,<,>,and,or,like,Null,not null,IN
*/
select * from EmployeeDemographics where FirstName = 'Jim'
select * from EmployeeDemographics where FirstName <>'Jim'
select * from EmployeeDemographics where Age > 30
select * from EmployeeDemographics where Age >= 30
select * from EmployeeDemographics where Age < 32
select * from EmployeeDemographics where Age <= 30
select * from EmployeeDemographics where Age <= 32 and Gender ='Male'
select * from EmployeeDemographics where Age <= 32 or Gender ='Male'
select * from EmployeeDemographics where LastName like 'S%'
select * from EmployeeDemographics where FirstName is Null
select * from EmployeeDemographics where FirstName is not Null
select * from EmployeeDemographics where FirstName in ('Jim','Michael')
--/*
-- Groub by , Order by
--*/
select * from EmployeeDemographics
select Gender from EmployeeDemographics group by Gender 
select Gender,Age,COUNT(Gender) from EmployeeDemographics group by Gender,Age 
select Gender ,COUNT(Gender) AS CountGender from EmployeeDemographics where Age > 31 group by Gender order by CountGender DESC 
--select Gender ,COUNT(Gender) AS CountGender from EmployeeDemographics where Age > 31 group by Gender order by Gender 
select * from EmployeeDemographics order by Age
select * from EmployeeDemographics order by Age DESC
select * from EmployeeDemographics order by Age DESC , Gender DESC
select * from EmployeeDemographics order by 4 DESC, 5 desc
