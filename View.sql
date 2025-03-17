-- View 1
CREATE VIEW Available_Rooms_Per_Area AS
SELECT h.Address_City, 
       COUNT(r.Room_Number) AS total_rooms,
       COUNT(r.Room_Number) - COUNT(rt.b_ID) AS available_rooms
FROM Hotel h
JOIN Room r ON h.H_Building_No = r.H_Building_No
LEFT JOIN Booking b ON r.Room_Number = b.Room_Number 
    AND r.H_Building_No = b.H_Building_No
LEFT JOIN Renting rt ON b.b_ID = rt.b_ID  -- Only count fully rented bookings
GROUP BY h.Address_City;

-- View 2
CREATE VIEW Aggregated_Capacity_Per_Hotel AS
SELECT h.H_Building_No, h.c_Name, h.Address_City, SUM(r.capacity) AS total_capacity
FROM Hotel h
JOIN Room r ON h.H_Building_No = r.H_Building_No
GROUP BY h.H_Building_No, h.c_Name, h.Address_City
ORDER BY h.H_Building_No ASC;