create database coll;
use coll;

create table student(
id int primary key,
name varchar(50));

insert into student (id, name)
values 
(101, "adam"),
(102, "bob"),
(103, "casey");

create table course(
id int primary key,
course varchar(50));

insert into course (id, course)
values 
(102, "English"),
(105, "Math"),
(103, "science"),
(107, "computer science");

select * from student;
select * from course;


select * from student
inner join course
on student.id= course.id;


select * from student as s
inner join course as c 
on s.id= c.id;

select * from student as s
left join course as c 
on s.id=c.id;

select * from student as c
right join course as s
on c.id=s.id;

select * from student as s
left join course as c 
on s.id=c.id
union
select * from student as c
right join course as s
on c.id=s.id;

-- Left exclusive join/right exclusive join
select * from student as s
left join course as c 
on s.id=c.id
where c.id is null;

select * from student as s
right join course as c 
on s.id=c.id
where s.id is null;

-- Full exclusive joins

select * from student as s
left join course as c 
on s.id=c.id
where c.id is null
union
select * from student as s
right join course as c 
on s.id=c.id
where s.id is null;

-- self join

create table emp(
id int primary key,
name varchar(50),
mgr_id int);

insert into emp(id, name, mgr_id)
values
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", null),
(104, "donald", 103);
select * from emp;

select a.name as mgr, b.name 
from emp as a
join emp as b 
on a.id = b.mgr_id;


 
 
  
 
 
 
 