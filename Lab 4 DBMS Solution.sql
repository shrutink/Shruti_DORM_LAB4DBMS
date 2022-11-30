CREATE DATABASE ecommerce;
use ecommerce;

/* Table 1 supplier */
create table supplier(
SUPP_ID int primary key,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50) NOT NULL,
SUPP_PHONE varchar(50) NOT NULL
);
/* Table 2 customer */
create table customer(
CUS_ID int primary key,
CUS_NAME varchar(20) NOT NULL,
CUS_PHONE varchar(10) NOT NULL,
CUS_CITY varchar(30) NOT NULL,
CUS_GENDER char
);
/* Table 3 category */
create table category(
CAT_ID int primary key,
CAT_NAME varchar(20) NOT NULL
);
/* Table 4 product */
create table product(
PRO_ID int primary key,
PRO_NAME varchar(20) NOT NULL default 'Dummy',
PRO_DESC VARCHAR(60),
CAT_ID int,
FOREIGN KEY (CAT_ID) references category(CAT_ID)
);
/* Table 5 supplier_pricing */
create table supplier_pricing(
PRICING_ID int primary key,
PRO_ID int,
SUPP_ID int,
SUPP_PRICE int default 0,
foreign key (PRO_ID)references product(pro_id),
foreign key (SUPP_ID)references supplier(SUPP_ID)
);
/*Table 6 order*/
create table `order`(
ORD_ID int primary key,
ORD_AMOUNT int not null,
ORD_DATE date not null,
CUS_ID int,
PRICING_ID int,
foreign key (CUS_ID) references customer (CUS_ID),
foreign key (PRICING_ID) references supplier_pricing (PRICING_ID)
);
/*Table 7 order*/
create table rating(
RAT_ID int primary key,
ORD_ID int,
RAT_RATSTARS int not null,
foreign key (ORD_ID) references `order` (ORD_ID)
);

/* inserting values to Supplier table*/
insert into Supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values
(1,'Rajesh Retails','Delhi',1234567890);
insert into Supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values
(2,'Appario Ltd.','Mumbai',2589631470);
insert into Supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values
(3,'Knome products','Banglore',9785462315);
insert into Supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values
(4,'Bansal Retails','Kochi',8975463285);
insert into Supplier(SUPP_ID,SUPP_NAME,SUPP_CITY,SUPP_PHONE) values
(5,'Mittal Ltd.','Lucknow',7898456532);

/*insertvalues to Customer table*/
insert into Customer(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values
(1,'AAKASH','9999999999','DELHI','M');
insert into Customer(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values
(2,'AMAN','9785463215','NOIDA','M');
insert into Customer(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values
(3,'NEHA','9999999999','MUMBAI','F');
insert into Customer(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values
(4,'MEGHA','9994562399','KOLKATA','F');
insert into Customer(CUS_ID,CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) values
(5,'PULKIT','7895999999','LUCKNOW','M');

/* insert into Category table */
insert into Category(CAT_ID,CAT_NAME) values
(1,'BOOKS');
insert into Category(CAT_ID,CAT_NAME) values
(2,'GAMES');
insert into Category(CAT_ID,CAT_NAME) values
(3,'GROCERIES');
insert into Category(CAT_ID,CAT_NAME) values
(4,'ELECTRONICS');
insert into Category(CAT_ID,CAT_NAME) values
(5,'CLOTHES');

/* insert into product table */
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(1,'GTA V','Windows 7 and above with i5 processor and 8GB RAM',2);
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(2,'TSHIRT','SIZE-L with Black, Blue and White variations',5);
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(3,'ROG LAPTOP','Windows 10 with 15inch screen, i7 processor, 1TB SSD',4);
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(4,'OATS','Highly Nutritious from Nestle',3);
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(5,'HARRY POTTER','Best Collection of all time by J.K Rowling',1);
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(6,'MILK','1L Toned MIlk',3);
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(7,'Boat Earphones','Boat Earphones',4);
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(8,'Jeans','Stretchable Denim Jeans with various sizes and color',5);
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(9,'Project IGI','compatible with windows 7 and above',2);
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(10,'Hoodie','Black GUCCI for 13 yrs and above',5);
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(11,'Rich Dad Poor Dad','Written by RObert Kiyosaki',1);
insert into product(PRO_ID,PRO_NAME,PRO_DESC,CAT_ID) values
(12,'Train Your Brain','By Shireen Stephen',1);

/* insert into supplier_pricing table */
insert into Supplier_pricing(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) values(1,1,2,1500);
insert into Supplier_pricing(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) values(2,3,5,30000);
insert into Supplier_pricing(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) values(3,5,1,3000);
insert into Supplier_pricing(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) values(4,2,3,2500);
insert into Supplier_pricing(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) values(5,4,1,1000);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(6,12,2,780);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(7,12,4,789);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(9,1,5,1450);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(10,4,2,999);
INSERT INTO SUPPLIER_PRICING (PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)VALUES(11,7,3,549);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(12,7,4,529);
INSERT INTO SUPPLIER_PRICING (PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)VALUES(13,6,2,105);
INSERT INTO SUPPLIER_PRICING(PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE) VALUES(14,6,1,99);
INSERT INTO SUPPLIER_PRICING (PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)VALUES(15,2,5,2999);
INSERT INTO SUPPLIER_PRICING (PRICING_ID,PRO_ID,SUPP_ID,SUPP_PRICE)VALUES(16,5,2,2999);

/* insert into order table */
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(101,1500,'2021-10-06',2,1);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(102,1000,'2021-10-12',3,5);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(103,30000,'2021-09-16',5,2);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(104,1500,'2021-10-05',1,1);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(105,3000,'2021-08-16',4,3);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(106,1450,'2021-08-18',1,9);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(107,789,'2021-09-01',3,7);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(108,780,'2021-09-07',5,6);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(109,3000,'2021-00-10',5,3);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(110,2500,'2021-09-10',2,4);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(111,1000,'2021-09-15',4,5);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(112,789,'2021-09-16',4,7);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(113,31000,'2021-09-16',1,8);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(114,1000,'2021-09-16',3,5);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(115,3000,'2021-09-16',5,3);
INSERT INTO `order`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) values
(116,99,'2021-09-17',2,14);

/* insert into rating table */
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (1,101,4);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (2,102,3);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (3,103,1);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (4,104,2);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (5,105,4);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (6,106,3);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (7,107,4);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (8,108,4);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (9,109,3);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (10,110,5);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (11,111,3);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (12,112,4);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (13,113,2);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (14,114,1);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (15,115,1);
insert into Rating(RAT_ID,ORD_ID,RAT_RATSTARS) values (16,116,0);

/* question 3*/
select count(t2.cus_gender) as NoOfCustomers, t2.cus_gender from 
(select t1.cus_id, t1.cus_gender, t1.ord_amount, t1.cus_name from 
(select `order`.*, customer.cus_gender, customer.cus_name from `order` inner join customer where `order`.cus_id=customer.cus_id having `order`.ord_amount>=3000)
as t1  group by t1.cus_id) as t2 group by t2.cus_gender;

/*question 4*/
select product.pro_name, `order`.* from `order`, supplier_pricing, product 
where `order`.cus_id=2 and 
`order`.pricing_id=supplier_pricing.pricing_id and supplier_pricing.pro_id=product.pro_id;

/*question 5*/
select supplier.* from supplier where supplier.supp_id in 
	(select supp_id from supplier_pricing group by supp_id having 
	count(supp_id)>1) 
group by supplier.supp_id;

/*question6*/
select category.cat_id,category.cat_name, min(t3.min_price) as Min_Price from category inner join
(select product.cat_id, product.pro_name, t2.* from product inner join  
(select pro_id, min(supp_price) as Min_Price from supplier_pricing group by pro_id) 
as t2 where t2.pro_id = product.pro_id)
as t3 where t3.cat_id = category.cat_id group by t3.cat_id;

/*question 7*/
select product.pro_id,product.pro_name from `order` inner join supplier_pricing 
on supplier_pricing.pricing_id=`order`.pricing_id inner join product 
on product.pro_id=supplier_pricing.pro_id 
where `order`.ord_date>"2021-10-05";

/*question 8*/
select customer.cus_name,customer.cus_gender from customer 
where customer.cus_name like 'A%' or customer.cus_name like '%A';

/*question 9*/
DELIMITER $$
CREATE PROCEDURE proc()
BEGIN
select report.supp_id,report.supp_name,report.Average,
CASE
	WHEN report.Average =5 THEN 'Excellent Service'
    	WHEN report.Average >4 THEN 'Good Service'
    	WHEN report.Average >2 THEN 'Average Service'
    	ELSE 'Poor Service'
END AS Type_of_Service from 
(select final.supp_id, supplier.supp_name, final.rat_ratstars,final.Average from
(select test2.supp_id, test2.rat_ratstars,sum(test2.rat_ratstars)/count(test2.rat_ratstars) as Average from
(select supplier_pricing.supp_id, test.ORD_ID, test.RAT_RATSTARS from supplier_pricing inner join
(select `order`.pricing_id, rating.ORD_ID, rating.RAT_RATSTARS from `order`
 inner join rating on rating.`ord_id` = `order`.ord_id ) as test
on test.pricing_id = supplier_pricing.pricing_id) 
as test2 group by supplier_pricing.supp_id) 
as final inner join supplier where final.supp_id = supplier.supp_id) as report;
END
$$
delimiter ;