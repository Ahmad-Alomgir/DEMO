--SELECT user(),now(),database();
--show databases;
--use db_bank_info;
--show databases;
--use db_bank_info;

--show tables;
--create TABLE tbl_branch(branchID int  primary key,br_name varchar(50) NOT NULL unique key,br_city varchar(50) NOT NULL default 'Dhaka',br_assets double not null default 1.0 ,br_createdOn timestamp NOT NULL default now());
--show create table tbl_branch;

/*create TABLE tbl_branch
(branchID int,
br_name varchar(50) NOT NULL,
br_city varchar(50) NOT NULL default 'Dhaka',
br_assets double not null default 1.0 ,
br_createdOn timestamp NOT NULL default now(),
  primary key (branchID),
  unique key (br_name)
);


*/
/* CREATE TABLE tbl_account
 (  accountNo varchar(40),
   ac_type enum ('current','savings','fdr') not null default 'current',
   ac_balance DOUBLE not NULL default 500,
   branchID int not null,
   primary key(accountNo)    
 );


ALTER table tbl_account
       add column ac_createdOn timestamp not null default now();

 --ALTER table tbl_account      
    --DROP column   ac_createdOn;

 --show create table tbl_account;
/* CREATE TABLE tbl_depositor
 (



 );

 CREATE TABLE tbl_customer
 (



 );

 CREATE TABLE tbl_loan
 (


 );

 CREATE TABLE tbl_borrower
 (


 );





ALTER TABLE tbl_account
 add constraint `FK_tbl_account_tbl_branch` foreign key  (branchID)
 references  tbl_branch(branchID)
  ON delete NO Action
  ON update  CASCADE; 









--SELECT user(),now(),database();
--show databases;
--use db_bank_info;
--show databases;
--use db_bank_info;

--show tables;
--create TABLE tbl_branch(branchID int  primary key,br_name varchar(50) NOT NULL unique key,br_city varchar(50) NOT NULL default 'Dhaka',br_assets double not null default 1.0 ,br_createdOn timestamp NOT NULL default now());
--show create table tbl_branch;

/*create TABLE tbl_branch
(branchID int,
br_name varchar(50) NOT NULL,
br_city varchar(50) NOT NULL default 'Dhaka',
br_assets double not null default 1.0 ,
br_createdOn timestamp NOT NULL default now(),
  primary key (branchID),
  unique key (br_name)
);*/



 /*CREATE TABLE tbl_account
 (  accountNo varchar(40),
   ac_type enum ('current','savings','fdr') not null default 'current',
   ac_balance DOUBLE not NULL default 500,
   branchID int not null,
   primary key(accountNo)    
 );
 */

--ALTER table tbl_account
       --add column ac_createdOn timestamp not null default now();

 --ALTER table tbl_account      
    --DROP column   ac_createdOn;

 --show create table tbl_account;
/* CREATE TABLE tbl_depositor
 (



 );

 CREATE TABLE tbl_customer
 (



 );

 CREATE TABLE tbl_loan
 (


 );

 CREATE TABLE tbl_borrower
 (


 );


--insert into tbl_account(accountNo,ac_type,ac_balance,branchID) value("123456789",'current',1000,1);
--insert into tbl_account(accountNo,ac_type,ac_balance,branchID) value("100282333",'savings',100000,23);
INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets) value
(23,"Boteswar","Sylhet",2.0),
(21,"Mirzajangal","Sylhet",4.0),
(22,"Baghbari","USA",7.0);


*/
/*
ALTER TABLE tbl_account
 add constraint `FK_tbl_account_tbl_branch` foreign key  (branchID)
 references  tbl_branch(branchID)
  ON delete NO Action
  ON update  CASCADE; 
--insert into tbl_account(accountNo,ac_type,ac_balance,branchID) value("100282322",'savings',100050,33);



delete from tbl_branch condition where


--desc tbl_branch; desc tbl_account; desc tbl_customer;
  --select *from tbl_account,tbl_branch where tbl_account.branchID = tbl_branch.branchID &tbl_branch.br_name = "Lamabazar";



select *from tbl_branch;

select branchID from tbl_branch where br_assets =
(select max(br_assets) from tbl_branch );


select br_name from tbl_branch where br_assets =(
select max(br_assets) from tbl_branch where br_assets <> (select max(br_assets) from tbl_branch));
*/
select br_name, avg(ac_balance) as Average_assets from tbl_branch,tbl_account where tbl_account.branchID =
 tbl_account.branchID  Group by br_name having Average_assets >0
   order by br_name;