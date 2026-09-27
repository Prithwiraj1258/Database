USE programinghero;
CREATE TABLE Student( #Create
Roll CHAR(4) Primary Key,
Name VARCHAR(50),
Marks DOUBLE
);



insert into Student #insert
(Roll,Name,Marks)values(1,'Kaushik',90);

insert into Student
(Roll,Name)values(2,'Rahim');

SET SQL_SAFE_UPDATES=0;
Update Student 
Set Name='Kaushik KuMar Paul'
where roll=1;
SET SQL_SAFE_UPDATES=1;

SET SQL_SAFE_UPDATES=0;
delete from Student
where Roll=1;
SET SQL_SAFE_UPDATES=1;


