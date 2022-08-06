create database day2
use day2
create table names
(
EID INT PRIMARY KEY,
ENAME VARCHAR(20) NOT NULL,
EDEGREE VARCHAR(20) NOT NULL
)
insert into names values(2,'faheem','B.tech')
select * from names

insert into names(EID,ENAME,EDEGREE) values(3,'wasim','M.tech')
use day1

select * from faheem

insert into faheem(EID,EName) values(8,'unknown')

create table staff
(
id int not null,
name varchar(25) not null,
salary int not null
)

--composite primary key
alter table staff add constraint pk_idname PRIMARY KEY(ID,NAME)

insert into staff values(3,'Jancy',25000)

select * from staff

--check,default,unique key
create table Voting
(
ID int Primary key,
Name varchar(25) UNIQUE NOT NULL,
dob datetime NOT NULL CHECK(dob <= CURRENT_TIMESTAMP),
age int NOT NULL CHECK(age >= 18),
designation varchar(25) DEFAULT 'self-employeed'
)

insert into Voting values(1,'faheem','2000-04-25 12:12:12',22,'IT Employee')
insert into Voting values(2,'wasim','2010-01-07 12:12:12',22,'IT Employee')
insert into Voting values(3,'abdul','2001-01-07 12:12:12.567',19,'IT Employee')
insert into Voting(id,name,dob,age) values(4,'Paul','2001-01-07 12:12:12.567',22)
delete from voting where ID=3
select * from Voting

--PRIMARY AND FOREIGN KEY
--create tables-emp and dept

create table dept
(
deptID int PRIMARY KEY,
deptName varchar(20) NOT NULL,
)
alter table dept add deptMem varchar(20)
select * from dept
insert into dept values(1,'Admin','faheem')
insert into dept values(2,'Developer','sai')
insert into dept values(3,'Designer','wasim')
insert into dept values(4,'Tester','raffi')

select * from dept
delete from dept where deptID=1
update dept set deptID=100 where deptID=1

create table fund
(
id int PRIMARY KEY,
name varchar(25) NOT NULL,
fund MONEY,
dno int FOREIGN KEY REFERENCES dept(deptID)
)

insert into fund values(100,'John',25000,1)
insert into fund values(101,'Jancy',25000,2)
insert into fund values(102,'Joanna',28000,1)
insert into fund values(103,'Jamie',35000,3)

select * from fund

create table parent
(
pid int primary key,
pname varchar(20) not null
)
insert into parent values(1,'p1')
insert into parent values(2,'p2')
insert into parent values(3,'p3')
--CHILD TABLE
create table child
(
cid int primary key,
cname varchar(20) not null,
pno int foreign key references parent(pid) on delete cascade on update cascade
)
insert into child values(100,'c1',1)
insert into child values(101,'c2',2)
insert into child values(102,'c3',1)
insert into child values(103,'c4',3)
select * from child


