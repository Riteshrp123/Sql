CREATE TABLE bank_information(id int not null,b_name varchar(30) unique not null,b_id int not null,no_of_customers int not null,loan_status varchar(40) default 'ACTIVE',location varchar(40) NOT null);

CREATE TABLE cust_information(id int not null,c_name varchar(30)  not null,balance bigint not null,c_id int not null,
b_id int not null,c_location varchar(40));

CREATE TABLE loan_information(id int not null,loan_type varchar(30),loan_amount bigint not null,c_id int not null);


INSERT INTO cust_information values(1,'MILAN',30000,701,501,'keonjhar');
INSERT INTO cust_information values(2,'bubu',40000,702,502,'bhubaswar');
INSERT INTO cust_information values(3,'lipu',50000,703,503,'BTM');
INSERT INTO cust_information values(4,'mindo',60000,704,504,'JP NAGAR');
INSERT INTO cust_information values(5,'asini',70000,705,505,'JAYANAGAR');
INSERT INTO cust_information values(6,'rabi',80000,706,511,'MARATHALI');
INSERT INTO cust_information values(7,'bilu',90000,707,512,'KENGERI');
INSERT INTO cust_information values(8,'suraj',37000,708,513,'DUMLUR');
INSERT INTO cust_information values(9,'tophan',39000,709,521,'HEBAL');
INSERT INTO cust_information values(10,'Ranjit',34000,710,541,'MG ROAD');

INSERT INTO LOAN_information values(1,'HOME LOAN',90000,710);
INSERT INTO LOAN_information values(2,'EDUCATION LOAN',80000,709);
INSERT INTO LOAN_information values(3,'CAR LOAN',120000,708);
INSERT INTO LOAN_information values(4,'GOLD LOAN',130000,707);
INSERT INTO LOAN_information values(5,'PERSONAL LOAN',100000,706);
INSERT INTO LOAN_information values(6,'BUSINESS LOAN',660000,705);
INSERT INTO LOAN_information values(7,'MEDICAL LOAN',340000,711);
INSERT INTO LOAN_information values(8,'MORTGAGE LOAN',980000,712);
INSERT INTO LOAN_information values(9,'VACATION LOAN',760000,715);
INSERT INTO LOAN_information values(10,'WEDDING LOAN',520000,718);

SELECT * FROM bank_information;
SELECT * FROM cust_information;
SELECT * FROM LOAN_information;

SELECT * FROM bank_information inner join cust_information ON bank_information.b_id = cust_information.b_id;
SELECT * FROM bank_information inner join cust_information on bank_information.location =cust_information.c_location;
SELECT * FROM cust_information inner join LOAN_information on cust_information.c_id = LOAN_information.c_id;
SELECT balance,loan_amount,loan_type,c_name FROM cust_information  inner join LOAN_information  ON cust_information.c_id = LOAN_information.c_id;
SELECT * FROM cust_information inner join LOAN_information on cust_information.balance = LOAN_information.loan_amount;
 
SELECT * FROM bank_information left join cust_information ON bank_information.b_id = cust_information.b_id;
SELECT * FROM cust_information left join bank_information ON bank_information.b_id = cust_information.b_id;
SELECT * FROM cust_information left join bank_information ON bank_information.location = cust_information.c_location;

SELECT * FROM cust_information right join bank_information ON bank_information.b_id = cust_information.b_id;
SELECT * FROM bank_information right join cust_information ON bank_information.b_id = cust_information.b_id;
SELECT * FROM bank_information right join cust_information ON bank_information.location = cust_information.c_location;


