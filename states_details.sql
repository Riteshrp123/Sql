CREATE TABLE State_details(id int  ,name varchar(10),location varchar(20)unique ,language varchar(30),fomousfood varchar(20),
						population bigint check(population>=500000),famousplace varchar(20) ,noOfDistrict bigint,capital_name varchar(20),fomousdance varchar(20) );
INSERT INTO   State_details VALUES(1,'Odisha','northindia','Odia','Chena_podo',450000,'Jaganath_Temple',30,'Bhubaneswar','Odishi');
INSERT INTO   State_details VALUES(2,'Karnataka','southindia','kanada','RagiMudde',660000,'Mysore',31,'Banglore','Dollu_Kunitha');
INSERT INTO   State_details VALUES(3,'Delhi','northindia','Hindi','Chaat',310000,'India_Gate',11,'New_Delhi','Kathak');
INSERT INTO   State_details VALUES(4,'Gujurat','Westindia','Gujurati','Dhokla',600000,'StatueOfUnity','33','Gandhinagar','Garba');
INSERT INTO   State_details VALUES(5,'West_bengal','Eastindia','Bengali','Macher_Jhol',150000,'Victoria_memorial',14,'Kolkata','The_Brita');
INSERT INTO   State_details VALUES(6,'Andhra_pradesh','Southindia','Telugu','Kodi_pulao',520000,'Tirupati',26,'Amaravati','Kuchipudi');
INSERT INTO   State_details VALUES(7,'Maharastra','Northindia','marathi','vada_pav',1260000,'Lonavala',36,'Mumbai,Lavani');
INSERT INTO   State_details VALUES(8,'Himachal_Pradesh','Northindia,Hindi','aroma',70000,'Manali',12,'Shimala','Nati');
INSERT INTO   State_details VALUES(9,'Madhya_pradesh','Northindia','Hindi','Lapsi',600000,'Ujjain',50,'Bhopal','Mataki');
INSERT INTO   State_details VALUES(10,'Asam','Eastindia','Ahamiya','Khaar',340000,'Kaziranga',35, 'Dispur','Bihu');  

SELECT * FROM State_details;
DESC State_details;

