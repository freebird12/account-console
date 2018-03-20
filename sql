use DB09TMS101_1718

create table cust_detailfinal

(cust_id int Identity(1000,1) primary key,
 name varchar(20),
 gender varchar(6),
 dob date,
 contactNumber bigint,
 city varchar(20));

 select * from cust_detailfinal;

 insert into cust_detailfinal
 values('Anu','female','1988-01-15',8015557674,'Trivamdrum');

 insert into cust_detailfinal
 values('Beno','female','1985-02-01',8015557675,'Chennai');

 insert into cust_detailfinal
 values('Snehais','male','1970-04-21',8015557676,'Delhi');

insert into cust_detailfinal
 values('Beno','female','1989-09-14',8015557677,'Kolkata');

  select * from cust_detailfinal;

create table adetailfinal
(aid int Identity(5000,1) Primary key,
 cid int foreign key references cust_detailfinal(cust_id),  
 bal int,
 sdate date,
 atype varchar(10),
 astatus varchar(8) default 'Active');

 
 create procedure add_acc5
 ( @bal int,
    @cid int,
   @sdate date,
   @atype varchar(10),
   @astatus varchar(8),
   @aid int out)
   as
   begin
   insert into adetailfinal
   values(@cid,@bal,@sdate,@atype,@astatus);
   set @aid=@@identity;
   end


   
   create procedure view_proc1
   as 
   begin
   select cust_id,name,aid,bal,sdate,atype,astatus
   from cust_detailfinal
   inner join  adetailfinal
   on cust_detailfinal.cust_id=adetailfinal.cid;
   end

 create procedure account_del
 @aid int 
 as 
 begin
 delete from adetailfinal
 where adetailfinal.aid=@aid;
 end
