--UC2 Creating table 
Create table Address_Book
(
FirstName varchar(255),
LastName varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
Zip int,
PhoneNo int,
Email varchar(255)
)
--UC3 Insert new Contact to AddressBook Table--
insert into Address_Book values('Ravi','K','hno.18-12-220 ameerpet','hyderabad','TS',500001,987653421,'ravi2@gmail.com')
insert into Address_Book values('Rakesh','V','hno.1-11-220 dilshuknagar','hyderabad','TS',570001,989653421,'rk@gmail.com')
insert into Address_Book values('Rajender','G','hno.1-1-20 lbnagar','hyderabad','TS',500081,987659421,'rv@gmail.com')
--To view inserted contact--
select * from Address_Book

