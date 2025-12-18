Bike Booking Management System - SQL Project

Overview

The Bike Booking Management System is a SQL-based project designed to manage bike inventory, customer bookings, and sales data. This system allows users to track available bikes, sold bikes, and customer information in an organized manner. It demonstrates practical use of SQL queries, triggers, and relational database design.

Features

Bike Inventory Management: Maintain bike details such as model, brand, price, and availability.

Customer Booking: Record customer information and the bikes they purchase.

Automated Sold Date Update: A trigger automatically updates the Sold_Date in the Bike_Showroom table when a bike is booked.

Data Analysis Queries: Easily query bikes sold in the last 30 days, last 6 months, and other date ranges.

Relational Integrity: Use of primary keys, foreign keys, and constraints ensures data consistency.

Database Structure

Bike_Showroom

Bike_ID (Primary Key)

Brand

Model

Price

Available (Yes/No)

Sold_Date

Customer_Details

Customer_ID (Primary Key)

Name

Contact

Bike_ID (Foreign Key referencing Bike_Showroom)

Buying_Date

Additional Tables (Optional)

Sales or other reporting tables as needed.

Key SQL Components Used

SELECT, INSERT, UPDATE, DELETE queries

JOINs to combine tables and extract meaningful information

Triggers: Example – automatically updating Sold_Date after a purchase

Constraints: Primary Key, Foreign Key, and CHECK constraints

Date Functions: Query data based on dynamic time ranges like last 30 days, last 6 months

Trigger Example
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


This trigger ensures that when a customer buys a bike, the bike’s Sold_Date is automatically updated.

Sample Queries

Get bikes sold in the last 1 year:

SELECT * FROM Bike_Showroom
WHERE Sold_Date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);


Get bikes sold in the last 6 months:

SELECT * FROM Bike_Showroom
WHERE Sold_Date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);
