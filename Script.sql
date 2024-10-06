go--
use XOKA;

go--
create table Employee
(
	id int primary key not null identity,
	fullname nvarchar(100) not null,
	phone nvarchar(14) not null,
	Qualification nvarchar(50) not null,
	WorkExperiance int not null,
	EmploymentType int not null,
	Company int not null,
	Department int not null
);

go--
create table EmploymentType
(
	id int primary key not null identity,
	Type nvarchar(50) not null,
	Description nvarchar(50) 
);

go--
create table Department
(
	id int primary key not null identity,
	Name nvarchar(50) not null,
	Description nvarchar(50)
);

go--
create table Company
(
	Id int primary key IDENTITY NOT NULL,
	Name nvarchar(100) NOT NULL,
	VATRegNo nvarchar(30) NOT NULL,
	TIN nvarchar(30) NOT NULL,
	Logo image NULL,
	Telephone1 nvarchar(100) NOT NULL,
	Telephone2 nvarchar(100) NOT NULL,
	Fax nvarchar(100) NOT NULL,
	POBox nvarchar(50) NOT NULL,
	Email nvarchar(50) NOT NULL,
	Website nvarchar(50) NOT NULL,
	AddressStreet1 nvarchar(50) NOT NULL,
	AddressStreet2 nvarchar(50) NOT NULL,
	Country nvarchar(50) NOT NULL,
	Region nvarchar(50) NOT NULL,
	City nvarchar(50) NOT NULL,
	Subcity nvarchar(50) NOT NULL,
	Woreda nvarchar(50) NOT NULL,

);
go--
alter table Employee add Constraint FK_EMPLOYEEEMPLOYMENTTYPE foreign key (EmploymentType) references EmploymentType(id);
alter table Employee add Constraint FK_EMPLOYEECOMPANY foreign key (Company) references Company(Id);
alter table Employee add Constraint FK_EMPLOYEEDEPARTMENT foreign key (Department) references Department(id);