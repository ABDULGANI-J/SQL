**Bike Booking Management System - SQL Project**

**Overview**

        The Bike Booking Management System is a SQL-based project designed to manage bike inventory, customer bookings, and sales data. This system allows users to track available bikes, sold bikes, and customer information in an organized manner. It demonstrates practical use of SQL queries, triggers, and relational database design.

**Features**

**Bike Inventory Management:**
        Maintain bike details such as model, brand, price, and availability.

**Customer Booking: **
        Record customer information and the bikes they purchase.

**Automated Sold Date Update:**
        A trigger automatically updates the Sold_Date in the Bike_Showroom table when a bike is booked.

**Data Analysis Queries:**
        Easily query bikes sold in the last 30 days, last 6 months, and other date ranges.

**Relational Integrity:**
        Use of primary keys, foreign keys, and constraints ensures data consistency.

**Database Structure**


    Dealer table 1

    Dealer_ID

    Bike_ID

    Brand

    Model

    Dealer_Price
    

                Bike_Showroom table 2
                
                Bike_ID (Primary Key)
                
                Brand
                
                Model
                
                Price
                
                Available (Yes/No)
                
                Sold_Date

                                        Customer_Details Table 3
                                        
                                        Name
                                        
                                        Contact
                                        
                                        Bike_ID (Foreign Key referencing Bike_Showroom)
                                        
                                        Buying_Date

