create database library_management_system;

show databases;

use library_management_system;

create table reader
	(
		reader_id varchar(6),
        fname varchar(30),
        mname varchar(30),
        lname varchar(30),
        city varchar(15),
        mobileno varchar(10),
        occupation varchar(10),
        dob date,
        constraint reader_pk primary key (reader_id)
	);
    
insert into reader values('C00001','RAMESH','CHANDRA','SHARMA','DELHI','9404595023','ENGINEER','1997-02-03')
insert into reader values('C00002','LAKHAN','ROHAN','PATEL','MUMBAI','9404595021','TEACHER','1998-04-26')
insert into reader values('C00003','ROHAN','BHAGWAN','TALELE','JALGAON','8999489394','STUDENT','1997-05-11')
insert into reader values('C00004','PRATIK','ANANTA','PATIL','BURHANPUR','9404595056','DRIVER','1997-02-06')

select * from reader;

create table book
	(
	bid varchar(6),
    bname varchar(40),
    bdomain varchar(30),
    constraint book_bid_pk primary key (bid)
    );
    
    
	insert into book values('B00001','The cat in the hat','story');
    insert into book values('B00002','Charlie and the chocolate factory','story');
    insert into book values('B00003','The very hungry cterpillar','story');
    
    select * from book;
    
    create table active_readers
		(
			account_id varchar(6),
            reader_id varchar(6),
            bid varchar(6),
            astatus varchar(10),
            constraint activereader_acnumber_pk primary key(account_id),
            constraint account_readerid_fk foreign key(reader_id) references reader(reader_id),
            constraint account_bid_fk foreign key(bid) references book(bid)
		);
        
alter table active_readers
add atype varchar(10);

select * from active_readers;

insert into active_readers values('A00001','C00001','B00001','Active','Premium');
insert into active_readers values('A00002','C00002','B00002','Active','Regular');
insert into active_readers values('A00003','C00003','B00003','Active','Premium');
insert into active_readers values('A00004','C00004','B00004','Active','Premium');
insert into active_readers values('A00005','C00005','B00005','Active','Regular');

select * from active_readers;

 show tables;
 
 select * from  active_readers;
 
 select * from active_readers where	atype = 'Premium';
 
 select * from active_readers where	atype = 'Regular';
 
 select count(account_id) from active_readers where atype = "Premium";
 
 



