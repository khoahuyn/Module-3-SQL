create database QuanLySinhVien;
USE QuanLySinhVien;

create table class(
	ClassID int auto_increment primary key,
    ClassName varchar(50),
	StartDate varchar(50),
	Status int not null
);



create table Student(
	StudentID int auto_increment primary key,
    StudentName varchar(50),
    Address varchar(50),
    Phone varchar(50),
	Status int not null,
	ClassID int not null,
    foreign key (ClassID) references class(ClassID)
);



create table Subject(
	SubID int auto_increment primary key,
    SubName varchar(50),
	Credit int not null,
	Status int not null
);



create table Mark(
	MarkID int auto_increment primary key,
    SubID int not null,
	StudentID int not null,
    Mark int not null,
	ExamTimes int not null,
    foreign key(SubID) references Subject(SubID),
	foreign key(StudentID) references Student(StudentID)
);


INSERT INTO Class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO Class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO Class
VALUES (3, 'B3', current_date, 0);

INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);

INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);

select *from Student
where StudentName like"h%";

select *from class
where month(class.StartDate)="12";

select *from subject
where credit between 3 and 5;

update student set classid=2 
where StudentName="hung";


select StudentName ,subject.subname,mark.mark
from student join  mark on student.studentid=mark.studentid
join subject on subject.subid=mark.subid
order by mark desc, studentName;