-----UC1-----
create database CustomerServiceDB;

--UC2-
create table Customer(Customer_Id int Identity(1,1),Customer_Name varchar(225),Phone bigint, Customer_Address varchar(200));

--UC3--
insert into Customer values('Khushi',8619532017,'Rajasthan'),('Raj',8306161085,'Gujarat'),('Thia',9460984883,'Pali');

--UC4--
alter table Customer add Country varchar(50),Salary bigint,Pincode bigint;
update Customer set Country='India',Salary=30000,Pincode=306401;
select * from Customer;

--UC5--
update Customer set Salary=60000,Pincode=235678 Where Customer_Name='Raj';
update Customer set Salary=55000,Pincode=453675 Where Customer_Name='Thia';
select * from Customer;

--UC5--
select COUNT(Customer_Id) as Number_Of_Customers from Customer Where Country='India';

--UC7--
select MAX(Salary) from Customer;
select MIN(Salary) from Customer;
select SUM(Salary) from Customer;
select AVG(Salary) from Customer;

--UC8--
use CustomerServiceDB;
create table Orders(Order_Id int ,Product_Name varchar(20),Quantity bigint,Rating int);

--UC9--
select * from Customer;
select * from Orders;

Data Source=(localdb)\ProjectModels;Initial Catalog=CustomerServiceDB;Integrated Security=True;Trust Server Certificate=False;