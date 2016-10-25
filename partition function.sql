create partition function cust_part_func(int)
as range right
for values(1000,2000,3000,4000,5000)

create partition scheme cust_part_scheme
as partition cust_part_func
to (fgp1,fgp2,fgp3,fgp4,fgp5,fgp6)

create table partition
(EMPID int identity(1,1) not null,
empdate datetime null
)
on cust_part_scheme(EMPID)

declare @i int
 set @i = 0
 while @i< 10000
 begin
 insert into [partition] [empdate] values (GETDATE())
 set @i = @i +1
 end

 select $partition.cust_part_func(EMPID) as'partition number', *
 from [partition]

