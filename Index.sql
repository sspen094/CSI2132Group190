-- Index 1: Speed Up Customer Booking Searches (idx_customer_id)
-- Query
SELECT * FROM Booking WHERE c_ID = 'CUST001';
CREATE INDEX idx_customer_id ON Booking (c_ID);

--  Index 2: Optimize Room Availability Queries
-- Query
SELECT * FROM Room WHERE H_Building_No = 1 AND Room_Number = 101;
CREATE INDEX idx_room_availability ON Room (H_Building_No, Room_Number);

-- Index 3: Speed Up Renting Queries by Employee
-- Query
SELECT * FROM Renting WHERE e_ID = 'EMP001';
CREATE INDEX idx_renting_employee ON Renting (e_ID, b_ID);