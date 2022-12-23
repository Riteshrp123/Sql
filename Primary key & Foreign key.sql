CREATE TABLE district_details(id int not null,d_name varchar(30) primary key,d_pin int not null,noOf_taluk varchar(20) not null,fomous_place varchar(20) not null,
                      famous_food varchar(30) not null,d_head varchar(20) not null,noOf_peple bigint not null,d_area bigint not null);


CREATE TABLE taluk_detail(id int not null,noOf_people int not null,t_pin int not null,area bigint not null,noOf_village int not null,
                          train_available boolean not null,noOf_temple int not null,famous_place varchar(20) not null,t_name varchar(30) not null,
                          d_name varchar(20),foreign key(d_name) references district_details(d_name));
                      
SELECT * FROM taluk_detail;

INSERT INTO district_details values(1,'keonjhar',758001,24,'Tarini_temple','Alu_chop','KeonjharT',1548674,98);
INSERT INTO district_details values(2,'Mayurbhanj',757001,28,'Similipal','Mudhi','Baripada',2548674,121);
INSERT INTO district_details values(3,'Bhadrak',756001,25,'Akhandalamani','palua_ladu','BhadrakR',1648674,100);
INSERT INTO district_details values(4,'Cuttack',755001,23,'Barabati','Chena_poda','cuttacka',1348674,85);
INSERT INTO district_details values(5,'Khorda',756002,27,'Nandankanan','Kora_khai','Bhubaneswaar',1648674,90);
INSERT INTO district_details values(6,'Balesore',755005,21,'Chandipur','Gajja','Balesoret',1148674,95);
INSERT INTO district_details values(7,'Anugul',758008,19,'Rengali','Alu_bhaja','Angull',1448674,80);
INSERT INTO district_details values(8,'Sambalpur',758043,29,'Hirakud','Bara','Sambalpurj',1948674,110);
INSERT INTO district_details values(9,'Jajpur',758023,22,'Biraja_temple','Chiken_pokaoda','Jajpurs',6548674,101);
INSERT INTO district_details values(10,'Puri',758056,20,'Jagannath_temple','Pheni','Purii',1543467,120);

SELECT * FROM district_details;

INSERT INTO taluk_detail VALUES(1,10700,758027,101,129,false,30,'Tarini_temple','Ghatgaon','keonjhar');
INSERT INTO taluk_detail VALUES(2,15700,758040,150,152,false,40,'Kichakeswari_temple','Karanjia','Mayurbhanj');
INSERT INTO taluk_detail VALUES(3,14700,758030,131,150,false,38,'Hadgad','Bonth','Bhadrak');
INSERT INTO taluk_detail VALUES(4,12708,758038,142,140,true,30,'Barabati','Banki','Cuttack');
INSERT INTO taluk_detail VALUES(5,12700,757027,200,125,true,32,'Lingaraj_temple','Jatni','Khorda');
INSERT INTO taluk_detail VALUES(6,17700,758087,178,113,true,31,'Chadipur','Bagheswar','Balesore');
INSERT INTO taluk_detail VALUES(7,10700,759027,167,145,false,34,'Satkosia','Banarpalai','Anugul');
INSERT INTO taluk_detail VALUES(8,10800,750027,170,122,true,38,'Hirakud','Rengali','Sambalpur');
INSERT INTO taluk_detail VALUES(9,10900,758037,180,123,true,30,'Biraja_temple','Bari','Jajpur');
INSERT INTO taluk_detail VALUES(10,14700,758047,190,149,true,31,'Jagannath_temple','Gop','Puri');

commit;














