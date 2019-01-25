drop table if exists students;
go
drop table if exists majors;
go
create table Majors (
Id int not null primary key identity(1,1),
Description nvarchar(50) not null,
);


go
create table Students (
Id int not null primary key identity(1,1),
FirstName nvarchar(30) not null unique, --nvarchar(MAX) = max amount of nvarchar
FavDate datetime,
LovesGameOfThrones bit not null default 1,
RateGameOfThrones decimal (3,1) not null default 5.0 
	check (RateGameOfThrones >=0 and RateGameOfThrones <= 10.0),
MajorId int Foreign Key references Majors(id)
	);

go
insert into Majors (Description) values ('MATH')
insert into Majors (Description) values ('Education')
insert into Majors (Description) values ('Engineering')
insert into Majors (Description) values ('CS')
insert into Majors (Description) values ('Management')
go
insert into Students
(FirstName, FavDate, MajorId)
values
('Chris', '2019-01-01', 4)

go
insert into Students
(FirstName, FavDate)
values
('John', '2019-01-01')

go
select * from Students
--select * from Majors

update Students
set LovesGameOfThrones = 0

update Students
set FavDate = '1992-05-26'


insert into Students
(FirstName, FavDate)
values
('Joe', '2019-01-02')

delete from Students
where id = 2

/*
insert into Majors
(Description)
values
(MATH)


insert into Majors
(Description)
values
(Education)


insert into Majors
(Description)
values
(Engineering)
*/
