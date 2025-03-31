INSERT INTO Hotel_Chain (c_Name) VALUES 
('Luxury Hotels'),
('Eco Resorts'),
('City Comfort'),
('Seaside Stays'),
('Mountain Retreats');


INSERT INTO hotel (c_Name, Email, Address_Street, Address_City, Address_Province, Address_Postal_Code, Category)
VALUES
-- Two hotels in New York (Same City)
('City Comfort', 'nyc1@citycomfort.com', '100 Main St', 'New York', 'NY', '10001', 3),
('City Comfort', 'nyc2@citycomfort.com', '101 Broadway', 'New York', 'NY', '10002', 4),

-- Hotels in Other Cities
('City Comfort', 'chicago@citycomfort.com', '200 Lakeshore Dr', 'Chicago', 'IL', '60601', 5),
('City Comfort', 'houston@citycomfort.com', '300 Bay Area Blvd', 'Houston', 'TX', '77058', 2),
('City Comfort', 'atlanta@citycomfort.com', '400 Peach St', 'Atlanta', 'GA', '30303', 4),
('City Comfort', 'losangeles@citycomfort.com', '500 Sunset Blvd', 'Los Angeles', 'CA', '90028', 3),
('City Comfort', 'miami@citycomfort.com', '600 Ocean Dr', 'Miami', 'FL', '33101', 1),
('City Comfort', 'seattle@citycomfort.com', '700 Rainier Ave', 'Seattle', 'WA', '98101', 2);


INSERT INTO hotel (c_Name, Email, Address_Street, Address_City, Address_Province, Address_Postal_Code, Category)
VALUES
-- Two hotels in San Francisco (Same City)
('Eco Resorts', 'sf1@ecoresorts.com', '101 Greenway Rd', 'San Francisco', 'CA', '94101', 5),
('Eco Resorts', 'sf2@ecoresorts.com', '202 Forest Dr', 'San Francisco', 'CA', '94102', 3),

-- Hotels in Other Cities
('Eco Resorts', 'denver@ecoresorts.com', '303 Mountain Rd', 'Denver', 'CO', '80201', 4),
('Eco Resorts', 'portland@ecoresorts.com', '404 Riverbend St', 'Portland', 'OR', '97201', 3),
('Eco Resorts', 'seattle@ecoresorts.com', '505 Meadow Ln', 'Seattle', 'WA', '98101', 2),
('Eco Resorts', 'austin@ecoresorts.com', '606 Hill Country Rd', 'Austin', 'TX', '73301', 4),
('Eco Resorts', 'miami@ecoresorts.com', '707 Everglades Dr', 'Miami', 'FL', '33102', 1),
('Eco Resorts', 'boulder@ecoresorts.com', '808 Sunshine St', 'Boulder', 'CO', '80301', 2);


INSERT INTO hotel (c_Name, Email, Address_Street, Address_City, Address_Province, Address_Postal_Code, Category)
VALUES
-- Two hotels in New York (Same City)
('Luxury Hotels', 'nyc1@luxuryhotels.com', '500 Park Ave', 'New York', 'NY', '10001', 5),
('Luxury Hotels', 'nyc2@luxuryhotels.com', '600 Madison Ave', 'New York', 'NY', '10002', 4),

-- Hotels in Other Cities
('Luxury Hotels', 'chicago@luxuryhotels.com', '700 Lakeshore Dr', 'Chicago', 'IL', '60601', 5),
('Luxury Hotels', 'lasvegas@luxuryhotels.com', '800 Strip Blvd', 'Las Vegas', 'NV', '89109', 3),
('Luxury Hotels', 'miami@luxuryhotels.com', '900 Ocean Dr', 'Miami', 'FL', '33101', 4),
('Luxury Hotels', 'losangeles@luxuryhotels.com', '1000 Sunset Blvd', 'Los Angeles', 'CA', '90028', 3),
('Luxury Hotels', 'sanfrancisco@luxuryhotels.com', '1100 Bay Area Rd', 'San Francisco', 'CA', '94101', 2),
('Luxury Hotels', 'houston@luxuryhotels.com', '1200 Downtown St', 'Houston', 'TX', '77002', 1);


INSERT INTO hotel (c_Name, Email, Address_Street, Address_City, Address_Province, Address_Postal_Code, Category)
VALUES
-- Two hotels in Denver (Same City)
('Mountain Retreats', 'denver1@mountainretreats.com', '1500 Summit Ave', 'Denver', 'CO', '80201', 5),
('Mountain Retreats', 'denver2@mountainretreats.com', '1600 Alpine Rd', 'Denver', 'CO', '80202', 4),

-- Hotels in Other Cities
('Mountain Retreats', 'aspen@mountainretreats.com', '1700 Ski Way', 'Aspen', 'CO', '81611', 5),
('Mountain Retreats', 'flagstaff@mountainretreats.com', '1800 Pine St', 'Flagstaff', 'AZ', '86001', 3),
('Mountain Retreats', 'jacksonhole@mountainretreats.com', '1900 Valley Rd', 'Jackson Hole', 'WY', '83001', 4),
('Mountain Retreats', 'bozeman@mountainretreats.com', '2000 Glacier Dr', 'Bozeman', 'MT', '59715', 3),
('Mountain Retreats', 'saltlake@mountainretreats.com', '2100 Canyon Rd', 'Salt Lake City', 'UT', '84101', 2),
('Mountain Retreats', 'lakeplacid@mountainretreats.com', '2200 Lodge Ave', 'Lake Placid', 'NY', '12946', 1);


INSERT INTO hotel (c_Name, Email, Address_Street, Address_City, Address_Province, Address_Postal_Code, Category)
VALUES
-- Two hotels in Miami (Same City)
('Seaside Stays', 'miami1@seasidestays.com', '2300 Ocean Dr', 'Miami', 'FL', '33101', 5),
('Seaside Stays', 'miami2@seasidestays.com', '2400 Beach Ave', 'Miami', 'FL', '33102', 4),

-- Hotels in Other Coastal Cities
('Seaside Stays', 'sanfrancisco@seasidestays.com', '2500 Bay St', 'San Francisco', 'CA', '94101', 5),
('Seaside Stays', 'losangeles@seasidestays.com', '2600 Coastal Rd', 'Los Angeles', 'CA', '90002', 3),
('Seaside Stays', 'honolulu@seasidestays.com', '2700 Waikiki Blvd', 'Honolulu', 'HI', '96815', 4),
('Seaside Stays', 'virginiabeach@seasidestays.com', '2800 Shore Dr', 'Virginia Beach', 'VA', '23451', 3),
('Seaside Stays', 'myrtlebeach@seasidestays.com', '2900 Boardwalk', 'Myrtle Beach', 'SC', '29577', 2),
('Seaside Stays', 'galveston@seasidestays.com', '3000 Seawall Blvd', 'Galveston', 'TX', '77550', 1);


INSERT INTO Room (Room_Number, H_Building_No, price, capacity, view_type, extendable)
VALUES
-- Rooms for Hotel 1 (New York 1)
(101, 1, 150.00, 2, 'ocean', TRUE),
(102, 1, 200.00, 4, 'mountain', FALSE),
(103, 1, 120.00, 1, NULL, TRUE),
(104, 1, 180.00, 3, 'ocean', FALSE),
(105, 1, 250.00, 5, 'mountain', TRUE),

-- Rooms for Hotel 2 (New York 2)
(101, 2, 160.00, 2, 'ocean', TRUE),
(102, 2, 210.00, 4, 'mountain', FALSE),
(103, 2, 130.00, 1, NULL, TRUE),
(104, 2, 190.00, 3, 'ocean', FALSE),
(105, 2, 260.00, 5, 'mountain', TRUE),

-- Rooms for Hotel 3 (Chicago)
(101, 3, 170.00, 2, 'ocean', FALSE),
(102, 3, 220.00, 4, 'mountain', TRUE),
(103, 3, 140.00, 1, NULL, FALSE),
(104, 3, 200.00, 3, 'ocean', TRUE),
(105, 3, 270.00, 5, 'mountain', FALSE),

-- Rooms for Hotel 4 (Houston)
(101, 4, 140.00, 1, NULL, TRUE),
(102, 4, 190.00, 3, 'ocean', FALSE),
(103, 4, 200.00, 4, 'mountain', TRUE),
(104, 4, 250.00, 5, NULL, FALSE),
(105, 4, 300.00, 6, 'ocean', TRUE),

-- Rooms for Hotel 5 (Atlanta)
(101, 5, 150.00, 2, 'ocean', TRUE),
(102, 5, 210.00, 4, 'mountain', FALSE),
(103, 5, 120.00, 1, NULL, TRUE),
(104, 5, 180.00, 3, 'ocean', FALSE),
(105, 5, 250.00, 5, 'mountain', TRUE),

-- Rooms for Hotel 6 (Los Angeles)
(101, 6, 180.00, 3, 'ocean', FALSE),
(102, 6, 230.00, 4, 'mountain', TRUE),
(103, 6, 150.00, 2, NULL, FALSE),
(104, 6, 200.00, 5, 'ocean', TRUE),
(105, 6, 280.00, 6, 'mountain', FALSE),

-- Rooms for Hotel 7 (Miami)
(101, 7, 130.00, 1, NULL, TRUE),
(102, 7, 190.00, 3, 'ocean', FALSE),
(103, 7, 200.00, 4, 'mountain', TRUE),
(104, 7, 250.00, 5, NULL, FALSE),
(105, 7, 300.00, 6, 'ocean', TRUE),

-- Rooms for Hotel 8 (Seattle)
(101, 8, 140.00, 1, NULL, TRUE),
(102, 8, 190.00, 3, 'ocean', FALSE),
(103, 8, 200.00, 4, 'mountain', TRUE),
(104, 8, 250.00, 5, NULL, FALSE),
(105, 8, 300.00, 6, 'ocean', TRUE);


INSERT INTO Room (Room_Number, H_Building_No, price, capacity, view_type, extendable)
VALUES
-- Rooms for Hotel 9
(101, 9, 140.00, 1, NULL, TRUE),
(102, 9, 190.00, 3, 'ocean', FALSE),
(103, 9, 200.00, 4, 'mountain', TRUE),
(104, 9, 250.00, 5, NULL, FALSE),
(105, 9, 300.00, 6, 'ocean', TRUE),

-- Rooms for Hotel 10
(101, 10, 150.00, 2, 'ocean', TRUE),
(102, 10, 200.00, 4, 'mountain', FALSE),
(103, 10, 120.00, 1, NULL, TRUE),
(104, 10, 180.00, 3, 'ocean', FALSE),
(105, 10, 250.00, 5, 'mountain', TRUE),

-- Rooms for Hotel 11
(101, 11, 160.00, 2, 'mountain', TRUE),
(102, 11, 210.00, 4, 'ocean', FALSE),
(103, 11, 130.00, 1, NULL, TRUE),
(104, 11, 190.00, 3, 'mountain', FALSE),
(105, 11, 260.00, 5, 'ocean', TRUE),

-- Rooms for Hotel 12
(101, 12, 170.00, 2, 'ocean', FALSE),
(102, 12, 220.00, 4, 'mountain', TRUE),
(103, 12, 140.00, 1, NULL, FALSE),
(104, 12, 200.00, 3, 'ocean', TRUE),
(105, 12, 270.00, 5, 'mountain', FALSE),

-- Rooms for Hotel 13
(101, 13, 140.00, 1, NULL, TRUE),
(102, 13, 190.00, 3, 'ocean', FALSE),
(103, 13, 200.00, 4, 'mountain', TRUE),
(104, 13, 250.00, 5, NULL, FALSE),
(105, 13, 300.00, 6, 'ocean', TRUE),

-- Rooms for Hotel 14
(101, 14, 150.00, 2, 'ocean', TRUE),
(102, 14, 210.00, 4, 'mountain', FALSE),
(103, 14, 120.00, 1, NULL, TRUE),
(104, 14, 180.00, 3, 'ocean', FALSE),
(105, 14, 250.00, 5, 'mountain', TRUE),

-- Rooms for Hotel 15
(101, 15, 180.00, 3, 'ocean', FALSE),
(102, 15, 230.00, 4, 'mountain', TRUE),
(103, 15, 150.00, 2, NULL, FALSE),
(104, 15, 200.00, 5, 'ocean', TRUE),
(105, 15, 280.00, 6, 'mountain', FALSE),

-- Rooms for Hotel 16
(101, 16, 130.00, 1, NULL, TRUE),
(102, 16, 190.00, 3, 'ocean', FALSE),
(103, 16, 200.00, 4, 'mountain', TRUE),
(104, 16, 250.00, 5, NULL, FALSE),
(105, 16, 300.00, 6, 'ocean', TRUE);


INSERT INTO Room (Room_Number, H_Building_No, price, capacity, view_type, extendable)
VALUES
-- Rooms for Hotel 17
(101, 17, 300.00, 2, 'ocean', TRUE),
(102, 17, 350.00, 4, 'mountain', FALSE),
(103, 17, 320.00, 1, NULL, TRUE),
(104, 17, 400.00, 3, 'ocean', FALSE),
(105, 17, 450.00, 5, 'mountain', TRUE),

-- Rooms for Hotel 18
(101, 18, 310.00, 2, 'ocean', TRUE),
(102, 18, 360.00, 4, 'mountain', FALSE),
(103, 18, 330.00, 1, NULL, TRUE),
(104, 18, 410.00, 3, 'ocean', FALSE),
(105, 18, 460.00, 5, 'mountain', TRUE),

-- Rooms for Hotel 19
(101, 19, 340.00, 3, 'ocean', FALSE),
(102, 19, 390.00, 4, 'mountain', TRUE),
(103, 19, 370.00, 2, NULL, FALSE),
(104, 19, 420.00, 5, 'ocean', TRUE),
(105, 19, 500.00, 6, 'mountain', FALSE),

-- Rooms for Hotel 20
(101, 20, 320.00, 1, NULL, TRUE),
(102, 20, 380.00, 3, 'ocean', FALSE),
(103, 20, 400.00, 4, 'mountain', TRUE),
(104, 20, 450.00, 5, NULL, FALSE),
(105, 20, 520.00, 6, 'ocean', TRUE),

-- Rooms for Hotel 21
(101, 21, 310.00, 2, 'ocean', TRUE),
(102, 21, 350.00, 4, 'mountain', FALSE),
(103, 21, 330.00, 1, NULL, TRUE),
(104, 21, 410.00, 3, 'ocean', FALSE),
(105, 21, 470.00, 5, 'mountain', TRUE),

-- Rooms for Hotel 22
(101, 22, 370.00, 3, 'ocean', FALSE),
(102, 22, 400.00, 4, 'mountain', TRUE),
(103, 22, 350.00, 2, NULL, FALSE),
(104, 22, 450.00, 5, 'ocean', TRUE),
(105, 22, 510.00, 6, 'mountain', FALSE),

-- Rooms for Hotel 23
(101, 23, 340.00, 1, NULL, TRUE),
(102, 23, 380.00, 3, 'ocean', FALSE),
(103, 23, 410.00, 4, 'mountain', TRUE),
(104, 23, 470.00, 5, NULL, FALSE),
(105, 23, 530.00, 6, 'ocean', TRUE),

-- Rooms for Hotel 24
(101, 24, 320.00, 2, 'ocean', TRUE),
(102, 24, 390.00, 4, 'mountain', FALSE),
(103, 24, 370.00, 1, NULL, TRUE),
(104, 24, 420.00, 3, 'ocean', FALSE),
(105, 24, 480.00, 5, 'mountain', TRUE);


INSERT INTO Room (Room_Number, H_Building_No, price, capacity, view_type, extendable)
VALUES
-- Rooms for Hotel 25
(101, 25, 180.00, 2, 'mountain', TRUE),
(102, 25, 200.00, 4, 'mountain', FALSE),
(103, 25, 150.00, 1, NULL, TRUE),
(104, 25, 210.00, 3, 'mountain', FALSE),
(105, 25, 280.00, 5, NULL, TRUE),

-- Rooms for Hotel 26
(101, 26, 170.00, 2, 'mountain', TRUE),
(102, 26, 190.00, 4, 'mountain', FALSE),
(103, 26, 140.00, 1, NULL, TRUE),
(104, 26, 220.00, 3, 'mountain', FALSE),
(105, 26, 290.00, 5, NULL, TRUE),

-- Rooms for Hotel 27
(101, 27, 200.00, 3, 'mountain', FALSE),
(102, 27, 240.00, 4, 'mountain', TRUE),
(103, 27, 160.00, 2, NULL, FALSE),
(104, 27, 250.00, 5, 'mountain', TRUE),
(105, 27, 300.00, 6, NULL, FALSE),

-- Rooms for Hotel 28
(101, 28, 180.00, 2, 'mountain', TRUE),
(102, 28, 220.00, 4, 'mountain', FALSE),
(103, 28, 140.00, 1, NULL, TRUE),
(104, 28, 230.00, 3, 'mountain', FALSE),
(105, 28, 310.00, 5, NULL, TRUE),

-- Rooms for Hotel 29
(101, 29, 190.00, 2, 'mountain', TRUE),
(102, 29, 210.00, 4, 'mountain', FALSE),
(103, 29, 160.00, 1, NULL, TRUE),
(104, 29, 240.00, 3, 'mountain', FALSE),
(105, 29, 320.00, 5, NULL, TRUE),

-- Rooms for Hotel 30
(101, 30, 220.00, 3, 'mountain', FALSE),
(102, 30, 250.00, 4, 'mountain', TRUE),
(103, 30, 170.00, 2, NULL, FALSE),
(104, 30, 260.00, 5, 'mountain', TRUE),
(105, 30, 330.00, 6, NULL, FALSE),

-- Rooms for Hotel 31
(101, 31, 200.00, 2, 'mountain', TRUE),
(102, 31, 230.00, 4, 'mountain', FALSE),
(103, 31, 150.00, 1, NULL, TRUE),
(104, 31, 270.00, 3, 'mountain', FALSE),
(105, 31, 340.00, 5, NULL, TRUE),

-- Rooms for Hotel 32
(101, 32, 210.00, 3, 'mountain', FALSE),
(102, 32, 260.00, 4, 'mountain', TRUE),
(103, 32, 180.00, 2, NULL, FALSE),
(104, 32, 280.00, 5, 'mountain', TRUE),
(105, 32, 350.00, 6, NULL, FALSE);


INSERT INTO Room (Room_Number, H_Building_No, price, capacity, view_type, extendable)
VALUES
-- Rooms for Hotel 33
(101, 33, 160.00, 2, 'ocean', TRUE),
(102, 33, 180.00, 4, 'ocean', FALSE),
(103, 33, 120.00, 1, NULL, TRUE),
(104, 33, 200.00, 3, 'ocean', FALSE),
(105, 33, 270.00, 5, NULL, TRUE),

-- Rooms for Hotel 34
(101, 34, 170.00, 2, 'ocean', TRUE),
(102, 34, 190.00, 4, 'ocean', FALSE),
(103, 34, 140.00, 1, NULL, TRUE),
(104, 34, 210.00, 3, 'ocean', FALSE),
(105, 34, 280.00, 5, NULL, TRUE),

-- Rooms for Hotel 35
(101, 35, 200.00, 3, 'ocean', FALSE),
(102, 35, 240.00, 4, 'ocean', TRUE),
(103, 35, 160.00, 2, NULL, FALSE),
(104, 35, 250.00, 5, 'ocean', TRUE),
(105, 35, 300.00, 6, NULL, FALSE),

-- Rooms for Hotel 36
(101, 36, 180.00, 2, 'ocean', TRUE),
(102, 36, 220.00, 4, 'ocean', FALSE),
(103, 36, 140.00, 1, NULL, TRUE),
(104, 36, 230.00, 3, 'ocean', FALSE),
(105, 36, 310.00, 5, NULL, TRUE),

-- Rooms for Hotel 37
(101, 37, 190.00, 2, 'ocean', TRUE),
(102, 37, 210.00, 4, 'ocean', FALSE),
(103, 37, 160.00, 1, NULL, TRUE),
(104, 37, 240.00, 3, 'ocean', FALSE),
(105, 37, 320.00, 5, NULL, TRUE),

-- Rooms for Hotel 38
(101, 38, 220.00, 3, 'ocean', FALSE),
(102, 38, 250.00, 4, 'ocean', TRUE),
(103, 38, 170.00, 2, NULL, FALSE),
(104, 38, 260.00, 5, 'ocean', TRUE),
(105, 38, 330.00, 6, NULL, FALSE),

-- Rooms for Hotel 39
(101, 39, 200.00, 2, 'ocean', TRUE),
(102, 39, 230.00, 4, 'ocean', FALSE),
(103, 39, 150.00, 1, NULL, TRUE),
(104, 39, 270.00, 3, 'ocean', FALSE),
(105, 39, 340.00, 5, NULL, TRUE),

-- Rooms for Hotel 40
(101, 40, 210.00, 3, 'ocean', FALSE),
(102, 40, 260.00, 4, 'ocean', TRUE),
(103, 40, 180.00, 2, NULL, FALSE),
(104, 40, 280.00, 5, 'ocean', TRUE),
(105, 40, 350.00, 6, NULL, FALSE);


-- Customers for Hotels 1, 2 & 3
INSERT INTO Customer (c_id, id_Type, first_name, last_name, Address_Street, Address_City, Address_Province, Address_Postal_Code)
VALUES 
('CUST001', 'SSN', 'John', 'Doe', '123 Elm St', 'New York', 'NY', '10001'),
('CUST002', 'SIN', 'Jane', 'Smith', '456 Oak Ave', 'Los Angeles', 'CA', '90028'),
('CUST003', 'DRL', 'Alice', 'Johnson', '789 Pine Rd', 'Chicago', 'IL', '60601'),
('CUST004', 'SSN', 'Bob', 'Brown', '555 Maple St', 'San Francisco', 'CA', '94101'),
('CUST005', 'SIN', 'Emily', 'Davis', '777 Beach Rd', 'Miami', 'FL', '33101');


-- Bookings for Customers
INSERT INTO Booking (start_date, end_date, c_ID, Room_Number, H_building_no)
VALUES
-- New York Hotel 1 (Rooms 101 and 102 are booked)
(CURRENT_DATE + INTERVAL '1 day', CURRENT_DATE + INTERVAL '6 days', 'CUST001', 101, 1),  
(CURRENT_DATE + INTERVAL '2 days', CURRENT_DATE + INTERVAL '4 days', 'CUST002', 102, 1),  

-- New York Hotel 2 (Rooms 103 and 104 are booked)
(CURRENT_DATE + INTERVAL '3 days', CURRENT_DATE + INTERVAL '8 days', 'CUST003', 103, 2),  
(CURRENT_DATE + INTERVAL '5 days', CURRENT_DATE + INTERVAL '11 days', 'CUST004', 104, 2),  

-- Chicago Hotel 3 (Room 105 is booked)
(CURRENT_DATE + INTERVAL '6 days', CURRENT_DATE + INTERVAL '13 days', 'CUST005', 105, 3);


-- Employees for Hotels 1, 2 & 3
INSERT INTO Employee (e_id, id_Type, first_name, last_name, Address_Street, Address_City, Address_Province, Address_Postal_Code, works_for_Hotel)
VALUES
('EMP001', 'SSN', 'Michael', 'Johnson', '101 Work St', 'New York', 'NY', '10001', 1),
('EMP002', 'SIN', 'Samantha', 'Lee', '202 Business Rd', 'San Francisco', 'CA', '94101', 2),
('EMP003', 'SSN', 'David', 'Smith', '303 Downtown Ave', 'Miami', 'FL', '33101', 3);


-- Rentings for Customers done by Employees
INSERT INTO Renting (e_ID, b_ID)
VALUES
-- Employee 1 finalizes bookings in New York (Hotel 1)
('EMP001', 1), 
('EMP001', 2),

-- Employee 2 finalizes bookings in New York (Hotel 2)
('EMP002', 3), 
('EMP002', 4),

-- Employee 3 finalizes bookings in Chicago (Hotel 3)
('EMP003', 5);


-- INTERTION FOR PAYMENT
INSERT INTO Payment (r_id, employee_id, amount, payment_method)
VALUES
(1, 'EMP001', 150.00, 'Credit Card'),
(2, 'EMP001', 200.00, 'Debit Card'),
(3, 'EMP002', 100.00, 'Cash'),
(4, 'EMP002', 250.00, 'Online'),
(5, 'EMP003', 175.50, 'Credit Card');

