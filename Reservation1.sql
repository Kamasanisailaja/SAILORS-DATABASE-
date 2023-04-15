create database Reservation
create table sailor(
sid int primary key,
sname varchar(30) not null,
Rating int not null,
Age int not null)
create table Boat(
Bid int primary key,
Bname varchar(50) not null,
colour varchar(50) not null)
create table Reserves(
Sid int foreign key references sailor(sid),
Bid int foreign key references Boat(Bid),
Day date not null)
insert into sailor values(1550,'sailaja',10,19)
insert into sailor values(1551,'Jyothi',9,19)
insert into sailor values(1552,'senorita',7,20)
insert into sailor values(1553,'vijay',10,30)
insert into sailor values(1554,'Hema',9,29)
insert into sailor values(1555,'poornima',8,31)
insert into sailor values(1556,'pavan',10,17)
insert into sailor values(1557,'Gnana',6,20)
insert into sailor values(1558,'keerthi',5,21)
insert into sailor values(1559,'Rajitha',6,22)
insert into sailor values(1560,'kumar',10,20)
insert into sailor values(1561,'Naveen',9,18)
insert into sailor values(1562,'venu',7,17)
insert into sailor values(163,'Tharun',6,22)
insert into sailor values(1564,'Mahesh',10,25)
select * from sailor
insert into Boat values(101,'Liberty','red')
insert into Boat values(102,'Escape','green')
insert into Boat values(103,'Blue Moon','red')
insert into Boat values(104,'Destiny','orange')
insert into Boat values(105,'Serendipity','red')
insert into Boat values(106,'spirit','orange')
select * from Boat
insert into Reserves values(1550,103,'2023-03-26')
insert into Reserves values(1551,102,'2023-03-25')
insert into Reserves values(1501,102,'2023-03-22')
insert into Reserves values(1550,102,'2023-03-23')
insert into Reserves values(1561,105,'2023-03-24')
insert into Reserves values(1562,106,'2023-03-21')
insert into Reserves values(1553,103,'2023-03-26')
insert into Reserves values(1559,101,'2023-03-24')
insert into Reserves values(1552,102,'2023-03-26')
insert into Reserves values(163,103,'2023-03-22')
insert into Reserves values(1564,102,'2023-03-21')
insert into Reserves values(1554,105,'2023-03-25')
insert into Reserves values(1557,103,'2023-03-24')
insert into Reserves values(1556,102,'2023-03-26')
insert into Reserves values(1551,101,'2023-03-21')
insert into Reserves values(1553,104,'2023-03-22')
insert into Reserves values(1552,102,'2023-03-23')
insert into Reserves values(1550,104,'2023-03-24')
insert into Reserves values(1561,101,'2023-03-25')
insert into Reserves values(1562,103,'2023-03-26')
insert into Reserves values(1563,102,'2023-03-21')
insert into Reserves values(1564,101,'2023-03-22')
insert into Reserves values(1556,106,'2023-03-23')
insert into Reserves values(1557,105,'2023-03-24')
insert into Reserves values(1558,104,'2023-03-25')
insert into Reserves values(1559,103,'2023-03-26')
insert into Reserves values(163,102,'2023-03-21')
insert into Reserves values(1555,101,'2023-03-22')
select * from Reserves
select sid,count(sid) from sailor group by sid having count(sid)>0
select * from  sailor where sid=1550 order by sname desc
select * from  Boat where bid=101 order by Bname desc
SELECT sname FROM sailor S, Reserves R WHERE S.sid = R.sid AND R.bid = 103
select sname , sid from sailor where rating >7
select sid from Reserves where bid=103
SELECT sname FROM Sailor as S, Reserves as R, Boat as B 
WHERE S.sid = R.sid AND R.bid = B.bid AND B.colour = 'red'
select sname  from sailor as s,Reserves as R where s.sid=R.sid 


