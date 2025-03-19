-- Index 1: Speed Up Customer Booking Searches (idx_customer_id)
-- Query
SELECT * FROM Booking WHERE c_ID = 'CUST001';
CREATE INDEX idx_customer_id ON Booking (c_ID);
-- The idx_customer_id index on the Booking table optimizes queries that retrieve bookings based on customer ID, such as SELECT * FROM Booking WHERE c_ID = 'CUST001';, which would otherwise require a full table scan as data grows. Since bookings are frequently inserted, updated, and sometimes deleted, this index ensures efficient lookups without affecting these operations. By enabling PostgreSQL to directly access relevant records instead of scanning the entire table, it significantly improves query performance, making customer booking searches faster and scalable as the database expands.

--  Index 2: Optimize Room Availability Queries
-- Query
SELECT * FROM Room WHERE H_Building_No = 1 AND Room_Number = 101;
CREATE INDEX idx_room_availability ON Room (H_Building_No, Room_Number);
-- The idx_room_availability index on the Room table enhances queries that search for specific rooms in a hotel, such as SELECT * FROM Room WHERE H_Building_No = 1 AND Room_Number = 101;, which would otherwise require scanning all rooms. Since hotels have multiple rooms, and queries frequently filter by hotel and room number, this index enables faster room lookups by allowing PostgreSQL to quickly locate matching records. Expected data updates include new room insertions, modifications to room details, and removals if a room is permanently closed, all of which remain efficient since the index optimizes filtering operations without significant overhead. By indexing both H_Building_No and Room_Number, this index ensures that room availability queries remain fast and efficient, even as the database scales.

-- Index 3: Speed Up Renting Queries by Employee
-- Query
SELECT * FROM Renting WHERE e_ID = 'EMP001';
CREATE INDEX idx_renting_employee ON Renting (e_ID, b_ID);
-- The idx_renting_employee index on the Renting table improves queries that retrieve rental transactions handled by a specific employee, such as SELECT * FROM Renting WHERE e_ID = 'EMP001';, which would otherwise require searching through all rentals. Since employees process multiple rentals, this index ensures quick access to all bookings they manage. Expected data updates include new renting records, modifications when an employee changes a booking, and removal of rentings if a booking is canceled, all of which remain efficient as the index helps filter relevant data instantly. By indexing both e_ID (employee handling the rental) and b_ID (booking reference), this index optimizes searches for rental transactions, making queries faster and more scalable as the number of transactions grows.