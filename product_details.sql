select database() sep_08;

select * from student_details;
INSERT INTO student_details VALUES(1,'rabi','HP','gtn');
INSERT INTO student_details VALUES(2,'hari','LUT','kjr');
INSERT INTO student_details VALUES(3,'milan','CUTM','bbsr');
INSERT INTO student_details VALUES(4,'mindo','ARTI','gtn');
INSERT INTO student_details VALUES(5,'sital','HSR','blr');

SELECT * FROM student_details;

 CREATE TABLE product(pro_id int,pro_name varchar(18),pro_company varchar(10),pro_price bigint);
INSERT INTO product VALUES(1,'laptop','HP',30000);
INSERT INTO product VALUES(2,'mobile','REALME',15000);
INSERT INTO product VALUES(3,'helment','AXOR',5000);
INSERT INTO product VALUES(4,'shose','NIKE',2000);
INSERT INTO product VALUES(5,'bag','puma',1500);

SELECT * FROM product;
select pro_name from product;
ALTER TABLE product ADD COLUMN location varchar(10);
ALTER TABLE product DROP COLUMN location;
ALTER TABLE product RENAME COLUMN pro_company TO pro_comp;
ALTER TABLE product MODIFY COLUMN price varchar(28);
DESC product;

RENAME TABLE product to product_info;
RENAME TABLE product_info TO product;
SELECT * FROM product;
UPDATE product SET pro_name='chair' where pro_id = 3;

