 CREATE TABLE company(comp_id int,comp_name varchar(10),comp_type varchar(20),comp_location varchar(30),comp_year bigint);
 
INSERT INTO company VALUES(1,'GOOGLE','product base','Old Madras road','2004');
INSERT INTO company VALUES(2,'AMAZON','product base','Mg road','2010');
INSERT INTO company VALUES(3,'upGrad','startup','Dumlur',2015);
INSERT INTO company VALUES(4,'Meesho','startup','Koramangla',2015);
INSERT INTO company VALUES(5,'ACL','MNC','Btm',2006);
INSERT INTO company VALUES(6,'ACO','MNC','Jayanagar',2010);
INSERT INTO company VALUES(7,'Deloitte','Big Four','Marathali',2007);
INSERT INTO company VALUES(8,'PwC','Big Four','Bannargata',2008);
INSERT INTO company VALUES(9,'TATA','MNC','Electronic City',2000);
INSERT INTO company VALUES(10,'Infocis','MNC','bidadi',2001);

SELECT * FROM company;
 UPDATE company SET comp_year=2004 where comp_id=9;
UPDATE company SET comp_location='kormagla' where comp_id=10;

DELETE FROM company where comp_id=5;
DELETE FROM company where comp_id=10 or comp_location=bidai;

ROLLBACK;

SELECT * FROM company  WHERE comp_name='AMAZON' AND comp_id=2;
UPDATE company SET comp_location='Dumlur' where comp_name='upGrad' AND comp_id=3;

SELECT * FROM company where comp_name='TATA' or comp_location='bidai';

SELECT * FROM company where comp_id in(4,5,6);
SELECT * FROM company where comp_location in ('Btm','bidai');

SELECT * FROM company where comp_id Not in(3,4);

SELECT * FROM company where comp_id between 4 AND 6;
DELETE FROM company;
SELECT * FROM company order by comp_name;