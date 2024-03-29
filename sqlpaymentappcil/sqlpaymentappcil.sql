show databases;
create database paymentscil1;
 use paymentscil1;
create table Registration (FirstName varchar(20) not null,LastName Varchar(20) Not null,PhoneNumber int primary key,DateOfBirth Varchar(20) Not null,Address Varchar(50) Not null); 
SELECT * FROM  Registration;
create table User (Id Int Primary key,Password Varchar(20) Not null);
SELECT * FROM User;
create table BankAccount(Id Int Primary key,AccountNumber Int Unique Not Null,IFSC Varchar(20) not Null,BankName Varchar(20) Not null,AcctType varchar(20) not Null,UserId Int Not Null, Foreign key(UserId) References User(Id));
SELECT * FROM BankAccount;
create table Transaction(Id Int Primary Key,DataTime Varchar(20) Not Null,BankBalance Int Not Null,TxnSource Varchar(20) Not Null,txnDestination Varchar(20) Not Null,UserId Int Not Null, Foreign Key(UserId) References User(Id));
SELECT * FROM Transaction;