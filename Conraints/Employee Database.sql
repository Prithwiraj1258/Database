use phitron;

create table student
(
roll char(4) ,
name varchar(50) Not null,
email varchar(60) ,
adress varchar(200),
age int,
constraint primary key(roll),
constraint unique(email),
constraint check (age>10)
);

create table library(
bookname varchar(50),
hired_roll char(4),
foreign key(hired_roll)references student(roll)
);
create table course(
coursename varchar(10),
university varchar(10),
credit INT,
primary key(coursename,university)
);
CREATE TABLE fees(
    fee DOUBLE,
    nroll CHAR(4),
    FOREIGN KEY (nroll) REFERENCES student(roll)
);
insert into student
(roll,name,email,adress,age)values(0001,'Kaushik','kaushik@gmail,com','Barishal',20 );
insert into library
(bookname,hired_roll)values('Aranyak',0001);
INSERT INTO fees(fee, nroll)
VALUES(10000, '0001');
