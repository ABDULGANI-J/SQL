create database bike_booking;
use bike_booking;

Create table Bike_Dealer(
Dealer_ID varchar(10) primary key, 
Brand_Name varchar(20) Not Null, 
Bike_Name varchar(20) Not Null,
Model_Year int NOT NULL,
Bike_Color varchar(10) NOT NULL, 
Bike_Price int NOT NULL);

Create table Bike_Showroom(
Bike_ID varchar(10) primary key, 
Brand_Name varchar(20) NOT NULL, 
Bike_Name varchar(20) NOT NULL,
Model_Year int NOT NULL, 
Bike_Color varchar(10) NOT NULL, 
Bike_Milage decimal(5,2) NOT NULL,
Dealer_ID varchar(10) NOT NULL,
FOREIGN KEY (Dealer_ID) REFERENCES Bike_Dealer(Dealer_ID),
Dealer_price int NOT NULL,
On_Road_Price int NOT NULL,
Imported_date date,
Sold_date datetime);

CREATE TABLE Customer_Details (
Customer_Name VARCHAR(50),
Phone_Number VARCHAR(10) 
CHECK (Phone_Number REGEXP '^[0-9]{10}$'),
Customer_Location VARCHAR(30),
Age INT CHECK (Age >= 18),
Bike_ID VARCHAR(10),
Bike_Price INT NOT NULL,
Buying_Date DATETIME,
FOREIGN KEY (Bike_ID) REFERENCES Bike_Showroom(Bike_ID));

INSERT INTO Bike_Dealer VALUES
('D001','RoyalEnfield','Classic350',2024,'Black',195000),
('D002','RoyalEnfield','Bullet350',2024,'Red',185000),
('D003','RoyalEnfield','Hunter350',2025,'Blue',175000),
('D004','RoyalEnfield','Meteor350',2024,'Brown',205000),
('D005','RoyalEnfield','Interceptor650',2025,'Silver',305000),
('D006','Yamaha','R15',2024,'Blue',165000),
('D007','Yamaha','MT15',2025,'Black',155000),
('D008','Yamaha','FZ',2024,'Grey',145000),
('D009','Honda','CBR250',2024,'Red',210000),
('D010','Honda','Shine',2024,'Black',78000),
('D011','Honda','Hornet',2025,'Green',145000),
('D012','TVS','Apache160',2024,'Red',125000),
('D013','TVS','Apache200',2025,'White',155000),
('D014','TVS','Raider',2024,'Blue',95000),
('D015','Bajaj','Pulsar150',2024,'Black',110000),
('D016','Bajaj','Pulsar220',2024,'Red',145000),
('D017','Bajaj','Dominar400',2025,'Green',225000),
('D018','KTM','Duke200',2024,'Orange',195000),
('D019','KTM','Duke390',2025,'Black',295000),
('D020','Suzuki','Gixxer',2024,'Blue',135000),
('D021','Suzuki','Access125',2024,'White',85000),
('D022','Hero','Splendor',2024,'Black',75000),
('D023','Hero','Xpulse200',2025,'Red',145000),
('D024','Hero','Glamour',2024,'Blue',90000),
('D025','BMW','G310R',2025,'Grey',295000),
('D026','BMW','G310GS',2024,'White',325000),
('D027','Kawasaki','Ninja300',2024,'Green',345000),
('D028','Kawasaki','Z650',2025,'Black',625000),
('D029','Harley','X440',2025,'Black',275000),
('D030','Jawa','42',2024,'Maroon',175000),
('D031','Jawa','Perak',2025,'Grey',245000),
('D032','Benelli','Imperiale400',2024,'Black',265000),
('D033','Benelli','TRK502',2025,'White',525000),
('D034','Triumph','Speed400',2025,'Red',235000),
('D035','Triumph','Scrambler400',2025,'Yellow',265000),
('D036','RoyalEnfield','Scram411',2024,'Green',215000),
('D037','RoyalEnfield','Himalayan',2025,'White',235000),
('D038','Honda','CB350RS',2024,'Blue',215000),
('D039','TVS','Ronin',2025,'Grey',165000),
('D040','Yamaha','Aerox155',2024,'Black',145000);

INSERT INTO Bike_Showroom VALUES
('B001','RoyalEnfield','Classic350',2024,'Black',35.50,'D001',195000,215000,'2024-10-10','2024-11-05'),
('B002','RoyalEnfield','Bullet350',2024,'Red',38.00,'D002',185000,205000,'2024-09-15','2024-10-20'),
('B003','RoyalEnfield','Hunter350',2025,'Blue',36.20,'D003',175000,195000,'2025-01-12',NULL),
('B004','RoyalEnfield','Meteor350',2024,'Brown',34.80,'D004',205000,225000,'2024-08-18','2024-09-30'),
('B005','RoyalEnfield','Interceptor650',2025,'Silver',25.40,'D005',305000,335000,'2025-02-05',NULL),
('B006','Yamaha','R15',2024,'Blue',40.00,'D006',165000,185000,'2024-07-10','2024-08-01'),
('B007','Yamaha','MT15',2025,'Black',45.00,'D007',155000,175000,'2025-01-22',NULL),
('B008','Yamaha','FZ',2024,'Grey',48.30,'D008',145000,165000,'2024-06-15','2024-07-20'),
('B009','Honda','CBR250',2024,'Red',30.00,'D009',210000,235000,'2024-09-01','2024-09-25'),
('B010','Honda','Shine',2024,'Black',55.00,'D010',78000,90000,'2024-05-05','2024-05-20'),
('B011','Honda','Hornet',2025,'Green',42.50,'D011',145000,165000,'2025-02-10',NULL),
('B012','TVS','Apache160',2024,'Red',50.00,'D012',125000,145000,'2024-06-01','2024-06-25'),
('B013','TVS','Apache200',2025,'White',45.00,'D013',155000,175000,'2025-01-18',NULL),
('B014','TVS','Raider',2024,'Blue',60.00,'D014',95000,115000,'2024-07-05','2024-07-30'),
('B015','Bajaj','Pulsar150',2024,'Black',48.00,'D015',110000,130000,'2024-04-12','2024-05-01'),
('B016','Bajaj','Pulsar220',2024,'Red',40.00,'D016',145000,165000,'2024-08-01','2024-08-22'),
('B017','Bajaj','Dominar400',2025,'Green',28.00,'D017',225000,255000,'2025-02-20',NULL),
('B018','KTM','Duke200',2024,'Orange',35.00,'D018',195000,225000,'2024-09-10','2024-10-01'),
('B019','KTM','Duke390',2025,'Black',30.00,'D019',295000,335000,'2025-03-01',NULL),
('B020','Suzuki','Gixxer',2024,'Blue',45.00,'D020',135000,155000,'2024-06-10','2024-07-05'),
('B021','Suzuki','Access125',2024,'White',55.00,'D021',85000,98000,'2024-05-18','2024-06-01'),
('B022','Hero','Splendor',2024,'Black',65.00,'D022',75000,88000,'2024-04-01','2024-04-15'),
('B023','Hero','Xpulse200',2025,'Red',35.00,'D023',145000,165000,'2025-01-05',NULL),
('B024','Hero','Glamour',2024,'Blue',52.00,'D024',90000,105000,'2024-09-20','2024-10-10'),
('B025','BMW','G310R',2025,'Grey',32.00,'D025',295000,335000,'2025-02-01',NULL),
('B026','BMW','G310GS',2024,'White',30.00,'D026',325000,365000,'2024-08-15','2024-09-05'),
('B027','Kawasaki','Ninja300',2024,'Green',28.00,'D027',345000,385000,'2024-10-01','2024-10-25'),
('B028','Kawasaki','Z650',2025,'Black',22.00,'D028',625000,695000,'2025-03-10',NULL),
('B029','Harley','X440',2025,'Black',26.00,'D029',275000,305000,'2025-02-15',NULL),
('B030','Jawa','42',2024,'Maroon',35.00,'D030',175000,195000,'2024-06-01','2024-06-20'),
('B031','Jawa','Perak',2025,'Grey',28.00,'D031',245000,275000,'2025-01-25',NULL),
('B032','Benelli','Imperiale400',2024,'Black',30.00,'D032',265000,295000,'2024-07-12','2024-08-01'),
('B033','Benelli','TRK502',2025,'White',20.00,'D033',525000,585000,'2025-02-05',NULL),
('B034','Triumph','Speed400',2025,'Red',32.00,'D034',235000,265000,'2025-03-01',NULL),
('B035','Triumph','Scrambler400',2025,'Yellow',30.00,'D035',265000,295000,'2025-03-05',NULL),
('B036','RoyalEnfield','Scram411',2024,'Green',32.00,'D036',215000,245000,'2024-09-10','2024-10-05'),
('B037','RoyalEnfield','Himalayan',2025,'White',30.00,'D037',235000,265000,'2025-01-15',NULL),
('B038','Honda','CB350RS',2024,'Blue',35.00,'D038',215000,245000,'2024-08-20','2024-09-10'),
('B039','TVS','Ronin',2025,'Grey',40.00,'D039',165000,185000,'2025-02-10',NULL),
('B040','Yamaha','Aerox155',2024,'Black',42.00,'D040',145000,165000,'2024-07-01','2024-07-25');


INSERT INTO Customer_Details VALUES
('Arun','9876543210','Chennai',25,'B001',215000,'2024-11-05'),
('Karthik','9876543211','Bangalore',28,'B002',205000,'2024-10-20'),
('Vijay','9876543212','Coimbatore',30,'B004',225000,'2024-09-30'),
('Suresh','9876543213','Madurai',35,'B006',185000,'2024-08-01'),
('Ramesh','9876543214','Trichy',32,'B008',165000,'2024-07-20'),
('Ganesh','9876543215','Salem',27,'B009',235000,'2024-09-25'),
('Prakash','9876543216','Erode',29,'B010',90000,'2024-05-20'),
('Ajith','9876543217','Chennai',31,'B012',145000,'2024-06-25'),
('Surya','9876543218','Bangalore',26,'B014',115000,'2024-07-30'),
('Mani','9876543219','Vellore',34,'B015',130000,'2024-05-01'),
('Ravi','9876543220','Chennai',29,'B016',165000,'2024-08-22'),
('Lokesh','9876543221','Salem',33,'B018',225000,'2024-10-01'),
('Santhosh','9876543222','Madurai',28,'B020',155000,'2024-07-05'),
('Deepak','9876543223','Chennai',24,'B021',98000,'2024-06-01'),
('Naveen','9876543224','Coimbatore',36,'B022',88000,'2024-04-15'),
('Harish','9876543225','Bangalore',27,'B024',105000,'2024-10-10'),
('Vimal','9876543226','Erode',31,'B026',365000,'2024-09-05'),
('Aravind','9876543227','Trichy',34,'B027',385000,'2024-10-25'),
('Sathish','9876543228','Chennai',29,'B030',195000,'2024-06-20'),
('Mohan','9876543229','Salem',37,'B032',295000,'2024-08-01'),
('Balaji','9876543230','Chennai',26,'B036',245000,'2024-10-05'),
('Kannan','9876543231','Madurai',33,'B038',245000,'2024-09-10'),
('Rajesh','9876543232','Coimbatore',28,'B040',165000,'2024-07-25'),
('Ashok','9876543233','Chennai',35,'B001',215000,'2024-11-05'),
('Siva','9876543234','Bangalore',31,'B002',205000,'2024-10-20'),
('Dinesh','9876543235','Salem',29,'B004',225000,'2024-09-30'),
('Praveen','9876543236','Erode',27,'B006',185000,'2024-08-01'),
('Kumar','9876543237','Trichy',34,'B008',165000,'2024-07-20'),
('Saravanan','9876543238','Madurai',38,'B009',235000,'2024-09-25'),
('Selva','9876543239','Chennai',25,'B010',90000,'2024-05-20'),
('Nithin','9876543240','Bangalore',28,'B012',145000,'2024-06-25'),
('Ragul','9876543241','Salem',32,'B014',115000,'2024-07-30'),
('Gokul','9876543242','Erode',29,'B015',130000,'2024-05-01'),
('Bala','9876543243','Vellore',35,'B016',165000,'2024-08-22'),
('Vasanth','9876543244','Chennai',26,'B018',225000,'2024-10-01'),
('Sanjay','9876543245','Bangalore',31,'B020',155000,'2024-07-05'),
('Rohit','9876543246','Coimbatore',33,'B021',98000,'2024-06-01'),
('Akash','9876543247','Madurai',29,'B022',88000,'2024-04-15'),
('Nikhil','9876543248','Chennai',27,'B024',105000,'2024-10-10');


select *  from Bike_Dealer;
select *  from Bike_Showroom;
select *  from Customer_Details;

SELECT * FROM Bike_Showroom
WHERE Sold_Date IS NULL;

SELECT * FROM Bike_Showroom
WHERE Sold_Date IS NOT NULL;

SELECT c.Customer_Name, c.Phone_Number, b.Brand_Name, b.Bike_Name, c.Bike_Price
FROM Customer_Details c
INNER JOIN Bike_Showroom b ON c.Bike_ID = b.Bike_ID;

SELECT SUM(Bike_Price) AS Total_Revenue
FROM Customer_Details;

SELECT YEAR(Buying_Date) AS Year,
MONTH(Buying_Date) AS Month,
SUM(Bike_Price) AS Total_Revenue
FROM Customer_Details GROUP BY YEAR(Buying_Date), MONTH(Buying_Date)
ORDER BY Year, Month;


SELECT Brand_Name, AVG(Bike_Milage) AS Avg_Milage
FROM Bike_Showroom
GROUP BY Brand_Name;

CREATE VIEW Expensive_Bike as
SELECT b.Bike_Name, c.Bike_Price
FROM Customer_Details c
INNER JOIN Bike_Showroom b ON c.Bike_ID = b.Bike_ID
ORDER BY c.Bike_Price DESC
LIMIT 1;

Select * from Expensive_Bike;

SELECT b.Brand_Name, COUNT(*) AS Bikes_Sold
FROM Bike_Showroom b
WHERE b.Sold_Date IS NOT NULL
GROUP BY b.Brand_Name;

SELECT Bike_ID,
(On_Road_Price - Dealer_Price) AS Profit
FROM Bike_Showroom;

SELECT *
FROM Bike_Showroom
WHERE Sold_Date >= DATE_SUB(CURDATE(), INTERVAL 18 MONTH);

DELIMITER $$
CREATE TRIGGER trg_update_sold_date
AFTER INSERT ON Customer_Details
FOR EACH ROW
BEGIN
    UPDATE Bike_Showroom
    SET Sold_Date = NEW.Buying_Date
    WHERE Bike_ID = NEW.Bike_ID;
END$$
DELIMITER ;

INSERT INTO Customer_Details (Customer_Name, Phone_Number, Customer_Location, Age, Bike_ID, Bike_Price, Buying_Date)
VALUES ('John Doe', '9876543210', 'Mumbai', 28, 'B001', 215000, '2025-12-18 10:32:00');

SELECT * FROM Bike_Showroom WHERE Bike_ID = 'B001';

