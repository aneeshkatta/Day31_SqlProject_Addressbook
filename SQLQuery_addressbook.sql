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
--Uc4-Edit Contact--
update Address_Book set City ='pune' where FirstName ='Ravi';
update Address_Book set Address ='H.no 18-56-89 bindi' where FirstName ='Ravi';
update Address_Book set state ='mumbai' where FirstName ='Ravi';
update Address_Book set zip ='400012' where FirstName ='Ravi';
--Uc4-Delete Contact--
delete from Address_Book where FirstName ='Ravi' and LastName='K';
----To view Deleted contact----
select * from Address_Book
----Add different state and city contacts--
insert into Address_Book values('Raj','K','hno.28-12-220 aaa','xyz','mumbai',400001,987653421,'rj22@gmail.com')
insert into Address_Book values('Rahim','V','hno.1-12-220 bbb','zyx','rajasthan',570501,989653421,'rh55@gmail.com')
insert into Address_Book values('Rajinth','G','hno.1-41-20 ccc','zxy','tamilnadu',504081,987659421,'rjh12@gmail.com')
insert into Address_Book values('anand','G','hno.1-11-20 gokhulnagar','secunderbad','TS',504081,987659421,'angg@gmail.com')
insert into Address_Book values('bablu','k','hno.11-11-20 gokhulnagar','secunderbad','TS',504581,986659421,'ank@gmail.com')
insert into Address_Book values('chandrakanth','L','hno.51-11-20 gokhulnagar','secunderbad','TS',514081,987859421,'nnn@gmail.com')
------UC6-Ability to Retrieve Person belonging to a City or State from the Address Book----
select * from Address_Book where City ='hyderabad' or State='TS';
------UC7-Ability to Retrieve Person contact belonging to a City and State from the Address Book----
select * from Address_Book where City ='hyderabad' and State='TS';
--UC8-Ability to Retrieve Person contact in Ascending order---
select * from Address_Book ORDER BY FirstName ASC;
--Uc9-Ability to identify each Address Book with name(Family, Friends,..) and Type----
--Alter addressbook to add name category and type--
alter table Address_Book add Addressbookname Char(1); 
alter table Address_Book add Type Char(1);
--Uc-10 Count persons---
SELECT COUNT(City) as PersonsCount from Address_Book;

