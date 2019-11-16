create table rvehicles
(
rno number(5),
vno varchar2(10) constraint pkey primary key,
wheels number(2),
vtype varchar2(15),
rtono varchar2(10),
oname  varchar2(30),
email varchar2(25),
phone number(10),
ownadd varchar2(100),
regdate  date,
constraint ukey unique(rno)
);


create table stolenlist
(
rno  number(5),
vno varchar2(10),
rdate date,
 constraint fkkey foreign key(rno)
 references rvehicles(rno)
);


create table foundlist
(
rno number(5),
vno varchar2(10),
wheels number(2),
vtype varchar2(15),
foname varchar2(30),
foadd varchar2(60),
foemail varchar2(20),
fophone number(10),
nfname varchar2(30),
infadd varchar2(60),
infemail varchar2(20),
infphone number(10),
regdate  date,
constraint fnkey foreign key(rno)
 references rvehicles(rno)
);


 