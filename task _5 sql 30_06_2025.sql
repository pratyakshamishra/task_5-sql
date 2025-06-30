create database school;
use school;
create table school_stud(
student_id int primary key auto_increment ,
Name varchar(20) ,
class_id int  default null);
insert into school_stud(student_id,Name,class_id)value (1,'Riya Pandey',101);
insert into school_stud(Name,class_id)value('Arjun',102);
insert into school_stud(Name,class_id)value('Ravi',103);
insert into school_stud(Name,class_id)value('Anshu',104);
insert into school_stud(Name) value('Anju');
select * from school_stud;
create table class(
class_id int,
 class_name varchar(10)
);
insert into class(class_id,class_name)value (101,'Science');
insert into class(class_id,class_name)value(104,'Physics');
insert into class(class_id,class_name)value(103,'Maths');
insert into class(class_id,class_name)value(105,'Art');
select * from class;

SELECT name, class.class_name
FROM school_stud
INNER JOIN class ON school_stud .class_id = class.class_id;

SELECT name, class.class_name
FROM school_stud
LEFT JOIN class ON school_stud.class_id = class.class_id;

SELECT name, class.class_name
FROM school_stud
RIGHT JOIN class ON school_stud.class_id = class.class_id;

-- FULL JOIN simulation using UNION
SELECT name, class.class_name
FROM school_stud
LEFT JOIN class ON school_stud.class_id = class.class_id

UNION

SELECT name, class.class_name
FROM school_stud
RIGHT JOIN class ON school_stud.class_id = class.class_id;


