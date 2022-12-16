CREATE TABLE mobile_details(id int,mob_name varchar(20),mob_colour varchar(15),mob_price bigint,mob_manufacture varchar(30),mob_cam int,mob_type varchar(30),mob_year varchar(10));

  insert into mobile_details values(1,'NOKIA','Black',14567,'Finland',16,'windos',1865);
  insert into mobile_details values(2,'SONY','Blue',24567,'Japan',24,'Xperia Ui',1946);
  insert into mobile_details values(3,'SAMSUNG','Golden',34567,'Koria',32,'Tizen os',1865);
  insert into mobile_details values(4,'ONE PLUSE','Green',44567,'  Chines  ',64,'Oxygen os',2013);
  insert into mobile_details values(5,'IPHONE','Silver   ',114567,'America',108,'iOS',2007);
  insert into mobile_details values(6,'LAVA','Yellow',13567,'India',12,'Android',2009);
  insert into mobile_details values(7,'LG','  Pink',12567,'South koria',20,'Anroid',2009);
  insert into mobile_details values(8,'ASUS','White',54567,'Taiwan',48,'Raizon',2014);
  insert into mobile_details values(9,'MOTROLA','Mate',19567,'S.America',24,'Android ui',1953);
  insert into mobile_details values(10,'MICROMAX','Brown',9567,'India',8,'Android',2010);
  insert into mobile_details values(11,'REALME   ','   Orange',19567,'China',64,'Android',2014);
  insert into mobile_details values(10,'  BLACKBERRY  ','Black',45567,'India',13,'Android',2005);
   
SELECT * FROM mobile_details;
SELECT UPPER(mob_name) as converted from mobile_details;
SELECT LOWER(mob_colour) as converted from mobile_details;
SELECT CONCAT('NOKIA','14567') as combind from mobile_details;
SELECT LENGTH('MICROMAX')from mobile_details order by id;
SELECT INSTR('IPHONE','H') FROM mobile_details;
SELECT SUBSTR('South koria',3,6) from mobile_details;
UPDATE mobile_details SET id=12 where mob_name='BLACKBERRY' AND mob_colour= 'Black';
DELETE from mobile_details where id=11;
rollback;
SELECT LTRIM(mob_colour)from mobile_details;
SELECT RTRIM(mob_name) from mobile_details;
SELECT RTRIM(LTRIM(mob_name)) from mobile_details;

SELECT COUNT(mob_name) FROM mobile_details;
SELECT SUM(mob_year) as total from mobile_details;
SELECT SUM(mob_price) FROM mobile_details;

SELECT MAX(mob_price) from mobile_details;
SELECT MIN(mob_cam) from mobile_details;

SELECT distinct(mob_type) from  mobile_details;