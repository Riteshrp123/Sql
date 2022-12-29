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

 -- SUBQUERIS
 SELECT b_name FROM bank_information where b_id = (SELECT b_id FROM cust_information where c_name ="mindo");
SELECT b_name FROM bank_information where b_id = (SELECT b_name FROM cust_information where c_name 
in("mindo","asini","rabi"));
SELECT b_name FROM bank_information where b_id = (SELECT b_id FROM cust_information where c_id =(SELECT c_id FROM  LOAN_information where loan_type="MORTGAGE"));

SELECT c_name FROM cust_information where c_id =(SELECT c_id FROM  LOAN_information where loan_type ="GOLD LOAN");

UPDATE bank_information SET loan_status = 'DEACTIVE' where b_id in (SELECT b_id FROM cust_information where c_id in (SELECT c_id FROM LOAN_information where loan_type ='BUSINESS LOAN')); 

UPDATE bank_information SET loan_status = 'DEACTIVE' where location in (SELECT c_location FROM cust_information where balance in (SELECT loan_amount FROM LOAN_information where loan_type = 'HOME LOAN'));









