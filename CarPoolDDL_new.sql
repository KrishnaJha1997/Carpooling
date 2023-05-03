CREATE DATABASE CARPOOL;
GO
USE CARPOOL;
GO

CREATE TABLE Person (
id INT PRIMARY KEY identity(1,1),
username VARCHAR(255) UNIQUE NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL,
birthdate DATE NOT NULL,
password VARCHAR(255) NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
phone_number VARCHAR(20) UNIQUE NOT NULL,
created_at TIME NOT NULL
);

CREATE TABLE Driver (
user_id INT PRIMARY KEY,
license_number VARCHAR(20) UNIQUE NOT NULL,
license_issued_date DATE NOT NULL,
FOREIGN KEY (user_id) REFERENCES Person(id)
);

CREATE TABLE Location (
id INT PRIMARY KEY identity(100, 1),
address VARCHAR(255) UNIQUE NOT NULL,
city VARCHAR(255) NOT NULL,
state VARCHAR(255) NOT NULL,
country VARCHAR(255) NOT NULL,
postal_code VARCHAR(20) NOT NULL,
latitude DECIMAL(10, 8) NOT NULL,
longitude DECIMAL(11, 8) NOT NULL
);

CREATE TABLE Passenger (
user_id INT PRIMARY KEY,
destination_preferred int NOT NULL,
trip_history varchar(255),
FOREIGN KEY (user_id) REFERENCES Person(id),
FOREIGN KEY (destination_preferred) REFERENCES Location(id),
);


CREATE TABLE Car (
id INT PRIMARY KEY identity(200, 1),
driver_id INT NOT NULL,
make VARCHAR(255) NOT NULL,
model VARCHAR(255) NOT NULL,
license_plate VARCHAR(20) UNIQUE NOT NULL,
capacity INT NOT NULL,
FOREIGN KEY (driver_id) REFERENCES Driver(user_id)
);

CREATE TABLE Schedule (
id INT PRIMARY KEY identity (300,1),
driver_id INT NOT NULL,
car_id INT NOT NULL,
starting_location_id INT NOT NULL,
destination_location_id INT NOT NULL,
start_time TIME NOT NULL,
end_time TIME NOT NULL,
FOREIGN KEY (driver_id) REFERENCES Driver(user_id),
FOREIGN KEY (car_id) REFERENCES Car(id),
FOREIGN KEY (starting_location_id) REFERENCES Location(id),
FOREIGN KEY (destination_location_id) REFERENCES Location(id)
);

CREATE TABLE Schedule_Passenger (
	schedule_id INT NOT NULL,
	passenger_id INT NOT NULL,
	PRIMARY KEY (schedule_id, passenger_id),
	FOREIGN KEY (schedule_id) REFERENCES Schedule (id),
	FOREIGN KEY (passenger_id) REFERENCES Passenger (user_id),
);

CREATE TABLE Ride (
id INT PRIMARY KEY identity(400, 1),
schedule_id INT NOT NULL,
FOREIGN KEY (schedule_id) REFERENCES Schedule(id)
);

CREATE TABLE Trip (
id INT PRIMARY KEY identity(500, 1),
ride_id INT NOT NULL,
passenger_id INT NOT NULL,
starting_location_id INT NOT NULL,
destination_location_id INT NOT NULL,
start_time TIME NOT NULL,
end_time TIME NOT NULL,
FOREIGN KEY (ride_id) REFERENCES Ride(id),
FOREIGN KEY (passenger_id) REFERENCES Passenger(user_id),
FOREIGN KEY (starting_location_id) REFERENCES Location(id),
FOREIGN KEY (destination_location_id) REFERENCES Location(id)
);

CREATE TABLE Payment (
    id INT PRIMARY KEY IDENTITY(1,1),
    trip_id INT NOT NULL,
    passenger_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    charge_type NVARCHAR(10) CHECK (charge_type IN ('zelle', 'venmo', 'paypal')) NOT NULL,
    payment_type NVARCHAR(20) CHECK (payment_type IN ('credit_card', 'debit_card')) NOT NULL,
    payment_date DATETIME NOT NULL,
    FOREIGN KEY (trip_id) REFERENCES Trip(id),
    FOREIGN KEY (passenger_id) REFERENCES Passenger(user_id)
);

CREATE TABLE Rating (
    id INT PRIMARY KEY IDENTITY(1,1),
    reviewer_id INT NOT NULL,
    reviewee_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5) NOT NULL,
	review varchar(255),
    review_date DATETIME NOT NULL,
    FOREIGN KEY (reviewer_id) REFERENCES Person(id),
    FOREIGN KEY (reviewee_id) REFERENCES Person(id)
);



-- Stored Produres

-- SP1

GO

CREATE PROCEDURE GetAllDriversAndCars
AS
BEGIN
    SELECT Person.first_name, Person.last_name, Car.make, Car.model, Car.license_plate
    FROM Person
    INNER JOIN Driver ON Person.id = Driver.user_id
    INNER JOIN Car ON Driver.user_id = Car.driver_id;
END

EXEC GetAllDriversAndCars;

GO

-- SP2

CREATE PROCEDURE spGetAllDrivers
AS
BEGIN
	SELECT Person.username, Driver.license_number, Car.make, Car.model, Car.license_plate, Schedule.start_time, Schedule.end_time
	FROM Person
	INNER JOIN Driver ON Person.id = Driver.user_id
	INNER JOIN Car ON Driver.user_id = Car.driver_id
	INNER JOIN Schedule ON Car.id = Schedule.car_id
END

EXEC spGetAllDrivers;

-- SP3




go
 CREATE PROCEDURE sp_InsertLocation
    @address VARCHAR(255),
    @city VARCHAR(255),
    @state VARCHAR(255),
    @country VARCHAR(255),
    @postal_code VARCHAR(20),
    @latitude DECIMAL(10, 8),
    @longitude DECIMAL(11, 8)
AS
BEGIN
    INSERT INTO Location (address, city, state, country, postal_code, latitude, longitude)
    VALUES (@address, @city, @state, @country, @postal_code, @latitude, @longitude)
END

EXEC sp_InsertLocation '12 Main St', 'Anytown', 'CA', 'USA', '12345', 37.12345678, -122.12345678;




-- Column Encryption
ALTER TABLE Person
ADD password_encrypted VARBINARY(256) NULL;

UPDATE Person
SET password_encrypted = ENCRYPTBYPASSPHRASE('YourPassphraseHere', password);

ALTER TABLE Person
DROP COLUMN password;

EXEC sp_rename 'Person.password_encrypted', 'password', 'COLUMN';


-- View 1


GO
CREATE VIEW DriverCars AS
SELECT p.first_name, p.last_name, c.make, c.model, c.license_plate, c.capacity
FROM Person p
JOIN Driver d ON p.id = d.user_id
JOIN Car c ON d.user_id = c.driver_id;


-- View2
GO
CREATE VIEW DriverTrips AS
SELECT s.id AS ScheduleId, c.id AS CarId, l1.address AS StartingLocation, l2.address AS DestinationLocation, s.start_time, s.end_time
FROM Schedule AS s
INNER JOIN Car AS c ON s.car_id = c.id
INNER JOIN Driver AS d ON d.user_id = c.driver_id
INNER JOIN Location AS l1 ON s.starting_location_id = l1.id
INNER JOIN Location AS l2 ON s.destination_location_id = l2.id;

-- View 3
go
CREATE VIEW DriverDetails AS
SELECT d.user_id, p.first_name + ' ' + p.last_name AS driver_name, c.make, c.model, 
       c.license_plate, COUNT(t.id) AS num_trips
FROM Driver d
JOIN Car c ON d.user_id = c.driver_id
JOIN Person p ON d.user_id = p.id
LEFT JOIN Schedule s ON d.user_id = s.driver_id
LEFT JOIN Ride r ON s.id = r.schedule_id
LEFT JOIN Trip t ON r.id = t.ride_id
GROUP BY d.user_id, p.first_name, p.last_name, c.make, c.model, c.license_plate;

go



--Trigger 1
go

CREATE TRIGGER trg_schedule_start_time 
ON Schedule 
AFTER INSERT, UPDATE 
AS 
BEGIN 
    IF EXISTS(SELECT 1 FROM inserted WHERE start_time < '06:00:00')
    BEGIN 
        RAISERROR ('Scheduled start time cannot be earlier than 6:00 AM.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END 
END;


-- trigger 2
GO
CREATE TRIGGER update_passenger_trip_history
ON Trip 
AFTER INSERT
AS
BEGIN
    DECLARE @passenger_id INT;
    SELECT @passenger_id = passenger_id FROM inserted;
    UPDATE Passenger 
    SET trip_history  = COALESCE(trip_history + ',', '') + CAST(inserted.id AS VARCHAR)
    FROM Passenger 
    INNER JOIN inserted ON Passenger.user_id = inserted.passenger_id
    WHERE Passenger.user_id = @passenger_id;
END;

INSERT INTO Ride (schedule_id)
VALUES (300);



INSERT INTO Trip (ride_id, passenger_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (411, 20, 100, 101, '15:00:00', '19:00:00');




-- UDF

-- UDF1
go
CREATE FUNCTION GetFullNameById (@personId INT)
RETURNS VARCHAR(255)
AS
BEGIN
    DECLARE @firstName VARCHAR(255);
    DECLARE @lastName VARCHAR(255);
    SELECT @firstName = first_name, @lastName = last_name
    FROM Person
    WHERE id = @personId;
    RETURN CONCAT(@firstName, ' ', @lastName);
END;
GO

SELECT id, username, dbo.GetFullNameById(id) AS full_name
FROM Person;

GO

-- UDF2

CREATE FUNCTION udf_CalculateAge (@birthdate DATE)
RETURNS INT
AS
BEGIN
    DECLARE @age INT
    SET @age = DATEDIFF(YEAR, @birthdate, GETDATE()) 
            - CASE 
                WHEN MONTH(@birthdate) > MONTH(GETDATE()) 
                    OR (MONTH(@birthdate) = MONTH(GETDATE()) AND DAY(@birthdate) > DAY(GETDATE())) 
                THEN 1 
                ELSE 0 
            END
    RETURN @age
END
GO

SELECT dbo.udf_CalculateAge('1990-01-01') AS age



-- NONCLUSTERED index 1

CREATE NONCLUSTERED INDEX IX_Person_email ON Person (email);



-- NONCLUSTERED index 

CREATE NONCLUSTERED INDEX IX_Car_LicensePlate ON Car(license_plate);

-- NONCLUSTERED index 3


CREATE NONCLUSTERED INDEX IX_Passenger_destination_preferred ON Passenger (destination_preferred);




