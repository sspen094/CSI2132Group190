CREATE TABLE IF NOT EXISTS Hotel_Chain(
	c_Name VARCHAR(50) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Office(
	O_Building_No SERIAL PRIMARY KEY,
	c_Name VARCHAR(50),
	Email VARCHAR(254) NOT NULL,
	Address_Street VARCHAR (254),
	Address_City VARCHAR (50),
	Address_Province VARCHAR (50),
	Address_Postal_Code VARCHAR (9),
	FOREIGN KEY(c_Name) REFERENCES Hotel_Chain(c_Name)
	on delete set null
	on update cascade
);

CREATE TABLE IF NOT EXISTS Office_Phone(
	O_Building_No INTEGER,
	Phone_Number INTEGER,
	PRIMARY KEY(O_Building_No, Phone_Number),
	FOREIGN KEY(O_Building_No) REFERENCES Office(O_Building_No)
	on delete cascade
	on update cascade
);

CREATE TABLE IF NOT EXISTS Hotel(
	H_Building_No SERIAL PRIMARY KEY,
	c_Name VARCHAR(50),
	Email VARCHAR(254) NOT NULL,
	Address_Street VARCHAR (254),
	Address_City VARCHAR (50),
	Address_Province VARCHAR (50),
	Address_Postal_Code VARCHAR (9),
	Category INTEGER CHECK (Category>=1 AND Category<=5),
	FOREIGN KEY(c_Name) REFERENCES Hotel_Chain(c_Name)
	on delete set null
	on update cascade
);

CREATE TABLE IF NOT EXISTS Hotel_Phone(
	H_Building_No INTEGER,
	Phone_Number INTEGER,
	PRIMARY KEY(H_Building_No, Phone_Number),
	FOREIGN KEY(H_Building_No) REFERENCES Hotel(H_Building_No)
);

CREATE TABLE IF NOT EXISTS Room(
	Room_Number INTEGER,
	H_Building_No INTEGER,
	price INTEGER CHECK (price >= 0),
	view_is_mountain BOOLEAN,
	view_is_ocean BOOLEAN,
	extendable BOOLEAN,
	PRIMARY KEY(Room_number, H_Building_No),
	FOREIGN KEY(H_Building_No) REFERENCES Hotel(H_Building_No)
	on delete cascade
	on update cascade
);

CREATE TABLE IF NOT EXISTS Room_Amenities(
	Room_Number INTEGER,
	H_Building_No INTEGER,
	amenity VARCHAR(50),
	PRIMARY KEY(Room_number, H_Building_No, amenity),
	FOREIGN KEY(room_number, H_Building_No) REFERENCES room(room_number, H_Building_No)
	on delete cascade
	on update cascade
);

CREATE TABLE IF NOT EXISTS Room_Damages(
	Room_Number INTEGER,
	H_Building_No INTEGER,
	damage VARCHAR(50),
	PRIMARY KEY(Room_number, H_Building_No, damage),
	FOREIGN KEY(room_number, H_Building_No) REFERENCES room(room_number, H_Building_No)
	on delete cascade
	on update cascade
);

CREATE TABLE IF NOT EXISTS Employee(
	e_ID INTEGER PRIMARY KEY,
	id_Type VARCHAR(3) CHECK (id_Type = 'SSN' OR id_Type = 'SIN'),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	Address_Street VARCHAR (254),
	Address_City VARCHAR (50),
	Address_Province VARCHAR (50),
	Address_Postal_Code VARCHAR (9), 
	manages_hotel INTEGER, --Decided to have manages FK inside employee rather than hotel
	works_for_Hotel INTEGER,
	FOREIGN KEY(manages_hotel) REFERENCES Hotel(H_Building_No)
	on delete set null
	on update cascade,
	FOREIGN KEY(works_for_Hotel) REFERENCES Hotel(H_Building_No)
	on delete set null
	on update cascade
);

CREATE TABLE IF NOT EXISTS Customer(
	c_ID INTEGER PRIMARY KEY,
	id_Type VARCHAR(3) CHECK (id_Type = 'SSN' OR id_Type = 'SIN' OR id_Type = 'DRL'),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	Address_Street VARCHAR (254),
	Address_City VARCHAR (50),
	Address_Province VARCHAR (50),
	Address_Postal_Code VARCHAR (9), 
	date_of_registration DATE
);

CREATE TABLE IF NOT EXISTS Renting(
	r_ID SERIAL PRIMARY KEY,
	e_ID INTEGER,
	FOREIGN KEY (e_ID) REFERENCES Employee(e_ID)
	on delete set null
	on update cascade
);

CREATE TABLE IF NOT EXISTS Payment(
	r_ID INTEGER PRIMARY KEY,
	amount INTEGER CHECK(amount >= 0),
	payment_method VARCHAR(12) 
		CHECK(payment_method='CreditCard' OR payment_method='DebitCard' OR 
			payment_method='Cash' OR payment_method='BankTransfer'),
	FOREIGN KEY (r_ID) REFERENCES Renting(r_ID)
	on delete cascade
	on update cascade
);

CREATE TABLE IF NOT EXISTS Booking(
	b_ID SERIAL PRIMARY KEY,
	start_date DATE CHECK (start_date>=CURRENT_DATE),
	end_date DATE CHECK (end_date>=start_date),
	c_ID INTEGER,
	r_ID INTEGER, 
	room_number INTEGER,
	H_building_no INTEGER,
	FOREIGN KEY(c_ID) REFERENCES Customer(c_ID)
	on delete set null
	on update cascade,
	FOREIGN KEY(r_ID) REFERENCES Renting(r_ID)
	on delete set null
	on update cascade,
	FOREIGN KEY(room_number, H_building_no) REFERENCES Room(room_number, H_building_no)
	on delete cascade
	on update cascade
);
