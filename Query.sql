-- Query 1: Find All Hotels in a Specific City (NYC)
SELECT H_Building_No, c_Name, Email, Address_Street, Address_City, Address_Province, Address_Postal_Code, Category
FROM Hotel
WHERE Address_City = 'New York';

-- Query 2: List All Rooms Available in a Specific Hotel (H_Building_No is 1)
SELECT Room_Number, H_Building_No, price, capacity, view_type, extendable
FROM Room
WHERE H_Building_No = 1;

-- Query 3: Find All Hotels with a Certain Star Category (5)
SELECT H_Building_No, c_Name, Address_City, Address_Province, Category
FROM Hotel
WHERE Category = 5;

-- Query 4: List All Hotel Chains
SELECT c_Name 
FROM Hotel_Chain;