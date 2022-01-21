create database Tatvasoft_DB_By_Trainee;

create table Identities
(
	First_Name varchar(50) not null,
	Last_Name varchar(50) not null,
	Email_Address varchar(50) not null,
	Mobile_Number decimal(10,0) not null,
	psword varchar(50) not null,
	Date_Of_Birth date not null,
	Identity_Type varchar(50) not null,
	Gender varchar(20) not null,
	Primary key (First_Name)
);
create table Addresses
(
	Street_Name varchar(50) not null,
	House_Number_Or_Name varchar(30) not null,
	Postal_code decimal(6,0) not null,
	city varchar(40) not null,
	First_Name varchar(50) not null,
	foreign key (First_Name) references Identities(First_Name)
);

Alter table Addresses add Address_ID int;
Alter table Addresses add constraint unq unique(Address_ID);

create table service_Records
(
	Service_id int not null,
	Service_Date date not null,
	Service_Provider_First_Name varchar(50) not null,
	Service_Provider_Ratings float not null,
	Payment decimal(9,3) not null,
	Status_Customer_side varchar(10) not null,
	hours_long int not null,
	Address_ID int not null,
	Inside_Cabinate char(1) not null,
	Inside_Fridge char(1) not null,
	Inside_Oven char(1) not null,
	Laundry char(1) not null,
	Interior_Windows char(1) not null,
	Have_Pet char(1) not null,
	Feedback varchar(200)
);

create table Ratings
(
	Service_Provider_First_Name varchar(50) not null,
	Average_Rating float not null,
	Service_ID int not null,
	Comments varchar(200)
);

create table Favourite_Service_Providers
(
	User_First_Name varchar(50) not null,
	Service_Provider_First_Name varchar(50) not null
);

create table Blocked_Service_Providers
(
	User_First_Name varchar(50) not null,
	Service_Provider_First_Name varchar(50) not null
);