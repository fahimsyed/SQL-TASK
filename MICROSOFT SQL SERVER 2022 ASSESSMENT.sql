CREATE DATABASE ORG;
USE ORG;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY MONEY,
   JOINING_DATE  datetime NOT NULL CHECK(JOINING_DATE  <= CURRENT_TIMESTAMP),
	DEPARTMENT CHAR(25)
)
drop table Worker
select * from Worker
INSERT INTO Worker VALUES
		(001, 'Monika', 'Arora', 100000, '2000-04-25 12:12:12', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '2010-01-07 12:12:12', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '2011-01-07 12:12:12', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '2000-05-25 12:12:12', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '2000-06-24 12:12:12', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '2000-07-23 12:12:12', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '2001-07-23 12:12:12', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '2003-05-22 12:12:12', 'Admin')


CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
)
drop table Bonus
select * from Bonus

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '2000-04-25'),
		(002, 3000, '2000-05-30'),
		(003, 4000, '2010-07-22'),
		(001, 4500, '2001-09-11'),
		(002, 3500, '2000-09-11')


CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');

--Write an SQL query to clone a new table from another table.
select * into Workerclone from Worker

--2
select concat (FIRST_NAME,LAST_NAME) as CompleteName from Worker

--Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from Worker order by FIRST_NAME asc;

--Write an SQL query to fetch the no. of workers for each department in the descending order.
select * from Worker order by DEPARTMENT desc;

 --Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from Worker where SALARY between 100000 and 500000

--Create a DML trigger for update on table ‘Title’
create trigger trg_dml
on Title
FOR UPDATE,DELETE
as
begin
	print 'You cannot perform DML Operations'
	rollback transaction 
end
--Create a Function to Calculate Simple Interest

create function (@p@t@r)
return int
as
begin
return(@p*@t*@r)%100
end

--Create a filtered index on ‘Bonus_Date’ column in ‘Bonus’ table

create index idx Bonus_Date on Bonus(Bonus_Date);


