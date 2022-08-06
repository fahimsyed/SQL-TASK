create database day1
use day1
--creating a table
create table faheem
(
EID int,
EName varchar(15),
EContact varchar(10),
EDegree varchar(15)
)
select * from faheem
--view particular row and coloumn
CREATE VIEW info as 

select Ename,EDegree from faheem

select * from info
--updating values

insert into faheem values(1,'faheem','9876543212','B.E')
insert into faheem values(2,'wasim','9876543712','BCA')
insert into faheem values(3,'Sam','9872543212','BSC')
insert into faheem values(4,'John','9876563212','MBA')
insert into faheem values(5,'Jancy','9876143212','M.TECH')

select * from faheem
delete faheem where EID=5
delete faheem where EID=4
delete faheem where EID=3
delete faheem where EID=2
delete faheem where EID=1

update faheem set EDegree='B.TECH' where EID=1
update faheem set EName='John cene' where EName='John'

update faheem set designation='UI', age='22' where EName='faheem'
update faheem set designation='UI', age='25' where EID='2'
update faheem set designation='UI', age='20' where EID='3'
update faheem set designation='UI', age='21' where EID='4'
update faheem set designation='UI', age='24' where EID='5'


--adding column
alter table faheem add designation varchar(10)
alter table faheem add mobile varchar(10)
alter table faheem add age int
alter table faheem drop column mobile
--drop column
alter table faheem drop column designation

create database name
use name

--alter database
alter database name Modify Name=Age

--drop database
use Age
use faheem
drop database Age

--schema
use faheem

create schema employee

create table informations
(
id int
)
create table employee.demo1
(
id int
)
drop table employee.demo1
drop schema if exists employee

--DQL
--Select * ->all the columns
use faheem
select * from faheem
select EID,EName from faheem
--Rename the column names during select
select EID as 'EmpID',EName as 'Employee Name' from faheem

--select specific rows
select * from faheem where EName='faheem'

--select specific rows and retrieve case sensitive records
select * from faheem where EName='wasim' Collate SQL_Latin1_General_CP1_CS_AS;
alter table faheem add ESalary int

update faheem set ESalary=30000 where EDegree='B.TECH'
update faheem set ESalary=28000 where EDegree='M.Tech'
update faheem set ESalary=28000 where EName='wasim'
update faheem set ESalary=28000 where EName='sam'
update faheem set ESalary=28000 where EName='John cene'

--Relational Operators

select * from faheem where ESalary>25000

select * from faheem where ESalary<=25000


insert into faheem values(6,'Shaun',7685946378,'BCA','22',25000)
insert into faheem values(7,'Dean',7665946378,'BCA','22',25000)

--Logical Operators(AND,OR,NOT)

select * from faheem where ESalary>25000 AND Ename='wasim'
select * from faheem where ESalary>25000 OR EName='faheem'
--BETWEEN AND
select * from faheem where ESalary between 25001 and 29999

--IN/NOT IN

select * from faheem WHERE Eid in (1,3,5)

select * from faheem WHERE Eid not in (1,3,5)

select * from faheem WHERE EName in ('faheem','wasim')

select * from faheem WHERE EDegree not in ('B-TECH','BCA')

--LIKE %(0 or more occurences) _(one character)
use day1
select * from faheem
select * from faheem where EName like 'f%'
select * from faheem where EName like '_a%'
select * from faheem where EName like '%n'
select * from faheem where EName like 's__'
select * from faheem where EName like '[sj]%'
select * from faheem where EName not like '[sj]%'
select * from faheem where EName like '[a-e]%'
select * from faheem where EName not like '[a-e]%'

--DISTINCT - avoid duplicate records
Select EContact from faheem
Select DISTINCT EContact from faheem

