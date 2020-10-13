--create table with fields
create table All_Division_Machinery_Details (Division varchar(3), Machine_Name varchar(50), Machine_Code varchar(5), Capacity varchar(10), 
No_of_Machines varchar(5), Machine_serial_No varchar(10), Purchased_Date Date, Supplier_Name varchar(50), Machine_ID int primary key identity (1,1))

--select data from table
select * from All_Division_Machinery_Details

--select specific data from a table
select Machine_Name, Capacity from All_Division_Machinery_Details

--select different data from a table (dublicates ignored)
select distinct Machine_Name from All_Division_Machinery_Details

--count distinct data
select count(distinct Machine_Name) from All_Division_Machinery_Details

--where cluase
select * from All_Division_Machinery_Details where Machine_Name = 'Air Compressor'
select * from All_Division_Machinery_Details where Machine_Name = 'auto spray'
select * from All_Division_Machinery_Details where Machine_ID = 265

--equal operator
select * from All_Division_Machinery_Details where Capacity = '3'
--greater than operator
select * from All_Division_Machinery_Details where Capacity > '2'
--lesser than operator
select * from All_Division_Machinery_Details where Capacity < '3'
--greater than or equal to operator
select * from All_Division_Machinery_Details where Machine_ID >= 100
--lesser than or equals to operator
select * from All_Division_Machinery_Details where Machine_ID <= 5
--not equal to operator
select * from All_Division_Machinery_Details where Machine_ID != 5
--between
select * from All_Division_Machinery_Details where Machine_ID between 5 and 7
--like
select * from All_Division_Machinery_Details where Machine_ID >= 100
--in
select * from All_Division_Machinery_Details where Machine_Name in ('Dyeing Drum (Big)','Air Compressor')

--AND opertaor
select * from All_Division_Machinery_Details where Machine_Name = 'Air Compressor' and No_of_Machines = '2'
-- OR operator
select * from All_Division_Machinery_Details where Machine_Name = 'Air Compressor' or Machine_Name = 'Boiler'
--NOT operator
select * from All_Division_Machinery_Details where not Machine_Name = 'Air Compressor'
--combined operator
select * from All_Division_Machinery_Details where Machine_Name = 'Air Compressor' and (Capacity = '30' or Capacity = '25')
select * from All_Division_Machinery_Details where not Machine_Name = 'Air Compressor' and not Machine_Name = 'Boiler'

--order by keyword (automatically in ascending order)
select * from All_Division_Machinery_Details order by Machine_Name

--for descending order
select * from All_Division_Machinery_Details order by Machine_Name desc

-- order by several columns
select * from All_Division_Machinery_Details order by Machine_Name, Machine_Code

-- order by ascending & descending
select * from All_Division_Machinery_Details order by Machine_Name asc, Machine_Code desc

--insert into // you can insert values directy if you wanna insert all the fields, fields order must be same
insert into All_Division_Machinery_Details (Division, Machine_Name, Machine_Code, Capacity, No_of_Machines, Machine_serial_No,
Purchased_Date, Supplier_Name) values ('Z1', 'Toe Puff', 'TPF', '2.00', '07', '2003', '2020-08-22', 'Shaheen Enterprises')
select * from All_Division_Machinery_Details where Machine_Code = 'TPF'

insert into All_Division_Machinery_Details values ('Z2', 'Counter Moulding', 'CMD', '6.00', '15', '4890', '2016-08-23', 'Western Engineering')
select * from All_Division_Machinery_Details where Machine_Code = 'CMD'

insert into All_Division_Machinery_Details (Division, Machine_Name, Machine_Code, Capacity, No_of_Machines, Machine_serial_No)
values ('Z5', 'Post Bed Single Needle', 'PSB', '2.00', '01','6001')
select * from All_Division_Machinery_Details where Machine_serial_No = '6001'

-- NULL Values
select Division, Machine_Name from All_Division_Machinery_Details where Division is null
select Division, Machine_Name from All_Division_Machinery_Details where Division is not null

--Update Statement // where clause is very important, if you omit where clause then all the records will be updated
update All_Division_Machinery_Details set Machine_Name = 'Toe Mulling' where Machine_Name = 'Toe Puff'
select * from All_Division_Machinery_Details where Machine_Name = 'Toe Mulling'

--Delete Statement // where clause is very important, if you omit where clause then all the records will be deleted
delete from All_Division_Machinery_Details where Machine_Name = 'Toe Mulling'
select * from All_Division_Machinery_Details where Machine_Name = 'Toe Mulling'

--Delete all records
--delete from All_Division_Machinery_Details - query

--SELECT TOP clause is used to specify the number of records to return
select top 10 * from All_Division_Machinery_Details

--Adding Where Clause
select top 5 * from All_Division_Machinery_Details where Machine_Code = 'DRM'








