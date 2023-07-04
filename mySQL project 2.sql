-- create a university database
create database University;

-- switch to the university database
use university;


-- create the student table
create table University.students(
student_id int primary key,
student_name  varchar(60),
student_age int,
student_major varchar(60)
);

-- insert records into the students table
insert into University.students values
("1","shalini","20","computer science"),
("2","shanmathi","22","biology"),
("3","gayu","26","computer science"),
("4","jana","18","arts"),
("5","geetha","25","computer science");
select * from University.students;



-- query to retrieve all records from the "Students" table
describe University.students;



-- query to retrieve the names of all students majoring in "Computer Science"
select student_id,student_name,student_age,student_major from University.students 
where student_major = "computer science";



-- query to retrive the details of the oldest student in the "students" table
select max(student_age) from University.students;


-- query to update the major of a student with a specific student_id
update University.students set student_major="biology" 
where student_id=4;


-- query to delete a student with a specific student_id from the "Students" table
delete from University.students 
where student_id=5;
