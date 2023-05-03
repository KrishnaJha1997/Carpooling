USE CARPOOL;
GO

--person

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('johndoe', 'johndoe@example.com', '1990-01-01', 'johnpassword', 'John', 'Doe', '555-111-1111', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('janedoe', 'janedoe@example.com', '1992-02-02', 'janepassword', 'Jane', 'Doe', '555-111-2222', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('mike.smith', 'mike.smith@example.com', '1985-03-03', 'mikesmithpassword', 'Mike', 'Smith', '555-111-3333', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('susanjackson', 'susanjackson@example.com', '1991-04-04', 'susanpassword', 'Susan', 'Jackson', '555-111-4444', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('johnbrown', 'johnbrown@example.com', '1988-05-05', 'johnbrownpassword', 'John', 'Brown', '555-111-5555', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('maryjohnson', 'maryjohnson@example.com', '1993-06-06', 'marypassword', 'Mary', 'Johnson', '555-111-6666', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('kevinmiller', 'kevinmiller@example.com', '1989-07-07', 'kevinpassword', 'Kevin', 'Miller', '555-111-7777', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('lucymoore', 'lucymoore@example.com', '1990-08-08', 'lucypassword', 'Lucy', 'Moore', '555-111-8888', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('davidthomas', 'davidthomas@example.com', '1994-09-09', 'davidpassword', 'David', 'Thomas', '555-111-9999', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('emilyjones', 'emilyjones@example.com', '1987-10-10', 'emilypassword', 'Emily', 'Jones', '555-111-0000', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('oliviajackson', 'oliviajackson@example.com', '1995-12-12', 'oliviapassword', 'Olivia', 'Jackson', '555-112-1111', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('jameswhite', 'jameswhite@example.com', '1986-11-13', 'jamespassword', 'James', 'White', '555-112-2222', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('sophiaharris', 'sophiaharris@example.com', '1990-10-14', 'sophiapassword', 'Sophia', 'Harris', '555-112-3333', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('williamgreen', 'williamgreen@example.com', '1987-09-15', 'williampassword', 'William', 'Green', '555-112-4444', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('isabellataylor', 'isabellataylor@example.com', '1994-08-16', 'isabellapassword', 'Isabella', 'Taylor', '555-112-5555', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('benjaminlewis', 'benjaminlewis@example.com', '1985-07-17', 'benjaminpassword', 'Benjamin', 'Lewis', '555-112-6666', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('charlottemartin', 'charlottemartin@example.com', '1993-06-18', 'charlottepassword', 'Charlotte', 'Martin', '555-112-7777', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('danielnelson', 'danielnelson@example.com', '1991-05-19', 'danielpassword', 'Daniel', 'Nelson', '555-112-8888', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('ameliacarter', 'ameliacarter@example.com', '1989-04-20', 'ameliapassword', 'Amelia', 'Carter', '555-112-9999', GETDATE());

INSERT INTO Person (username, email, birthdate, password, first_name, last_name, phone_number, created_at)
VALUES ('harrymitchell', 'harrymitchell@example.com', '1992-03-21', 'harrypassword', 'Harry', 'Mitchell', '555-112-0000', GETDATE());

--Driver

INSERT INTO Driver (user_id, license_number, license_issued_date)
VALUES (1, 'DL001', '2010-01-01');

INSERT INTO Driver (user_id, license_number, license_issued_date)
VALUES (2, 'DL002', '2011-02-02');

INSERT INTO Driver (user_id, license_number, license_issued_date)
VALUES (3, 'DL003', '2012-03-03');

INSERT INTO Driver (user_id, license_number, license_issued_date)
VALUES (4, 'DL004', '2013-04-04');

INSERT INTO Driver (user_id, license_number, license_issued_date)
VALUES (5, 'DL005', '2014-05-05');

INSERT INTO Driver (user_id, license_number, license_issued_date)
VALUES (6, 'DL006', '2015-06-06');

INSERT INTO Driver (user_id, license_number, license_issued_date)
VALUES (7, 'DL007', '2016-07-07');

INSERT INTO Driver (user_id, license_number, license_issued_date)
VALUES (8, 'DL008', '2017-08-08');

INSERT INTO Driver (user_id, license_number, license_issued_date)
VALUES (9, 'DL009', '2018-09-09');

INSERT INTO Driver (user_id, license_number, license_issued_date)
VALUES (10, 'DL010', '2019-10-10');

--Location
INSERT INTO Location (address, city, state, country, postal_code, latitude, longitude)
VALUES ('123 Main St', 'New York', 'NY', 'USA', '10001', 40.712776, -74.005974);

INSERT INTO Location (address, city, state, country, postal_code, latitude, longitude)
VALUES ('456 Park Ave', 'Los Angeles', 'CA', 'USA', '90001', 34.052235, -118.243683);

INSERT INTO Location (address, city, state, country, postal_code, latitude, longitude)
VALUES ('789 Market St', 'Chicago', 'IL', 'USA', '60601', 41.878113, -87.629799);

INSERT INTO Location (address, city, state, country, postal_code, latitude, longitude)
VALUES ('111 Central St', 'Houston', 'TX', 'USA', '77002', 29.760427, -95.369804);

INSERT INTO Location (address, city, state, country, postal_code, latitude, longitude)
VALUES ('222 State St', 'Philadelphia', 'PA', 'USA', '19102', 39.952583, -75.165222);

INSERT INTO Location (address, city, state, country, postal_code, latitude, longitude)
VALUES ('333 Elm St', 'Phoenix', 'AZ', 'USA', '85001', 33.448376, -112.074036);

INSERT INTO Location (address, city, state, country, postal_code, latitude, longitude)
VALUES ('444 Grove St', 'San Antonio', 'TX', 'USA', '78205', 29.424122, -98.493629);

INSERT INTO Location (address, city, state, country, postal_code, latitude, longitude)
VALUES ('555 Oak St', 'San Diego', 'CA', 'USA', '92101', 32.715738, -117.161084);

INSERT INTO Location (address, city, state, country, postal_code, latitude, longitude)
VALUES ('666 Cedar St', 'Dallas', 'TX', 'USA', '75201', 32.776664, -96.796988);

INSERT INTO Location (address, city, state, country, postal_code, latitude, longitude)
VALUES ('777 Pine St', 'San Jose', 'CA', 'USA', '95113', 37.338208, -121.886330);


--Passenger
INSERT INTO Passenger (user_id, destination_preferred, trip_history)
VALUES (11, 101, '500,502,503');

INSERT INTO Passenger (user_id, destination_preferred, trip_history)
VALUES (12, 102, '503,504,505');

INSERT INTO Passenger (user_id, destination_preferred, trip_history)
VALUES (13, 103, '507,500,509');

INSERT INTO Passenger (user_id, destination_preferred, trip_history)
VALUES (14, 104, '500,501,502');

INSERT INTO Passenger (user_id, destination_preferred, trip_history)
VALUES (15, 105, '503,504,505');

INSERT INTO Passenger (user_id, destination_preferred, trip_history)
VALUES (16, 106, '506,507,509');

INSERT INTO Passenger (user_id, destination_preferred, trip_history)
VALUES (17, 107, '509,500,501');

INSERT INTO Passenger (user_id, destination_preferred, trip_history)
VALUES (18, 108, '502,503,504');

INSERT INTO Passenger (user_id, destination_preferred, trip_history)
VALUES (19, 109, '505,506,507');

INSERT INTO Passenger (user_id, destination_preferred, trip_history)
VALUES (20, 100, '500,509,501');

--Car
INSERT INTO Car (driver_id, make, model, license_plate, capacity)
VALUES (1, 'Toyota', 'Corolla', 'ABC123', 4);

INSERT INTO Car (driver_id, make, model, license_plate, capacity)
VALUES (2, 'Honda', 'Civic', 'XYZ456', 4);

INSERT INTO Car (driver_id, make, model, license_plate, capacity)
VALUES (3, 'Ford', 'Fusion', 'DEF789', 5);

INSERT INTO Car (driver_id, make, model, license_plate, capacity)
VALUES (4, 'Chevrolet', 'Impala', 'GHI012', 5);

INSERT INTO Car (driver_id, make, model, license_plate, capacity)
VALUES (5, 'Nissan', 'Altima', 'JKL345', 4);

INSERT INTO Car (driver_id, make, model, license_plate, capacity)
VALUES (6, 'Hyundai', 'Elantra', 'MNO678', 4);

INSERT INTO Car (driver_id, make, model, license_plate, capacity)
VALUES (7, 'Subaru', 'Impreza', 'PQR901', 5);

INSERT INTO Car (driver_id, make, model, license_plate, capacity)
VALUES (8, 'Mazda', 'Mazda3', 'STU234', 4);

INSERT INTO Car (driver_id, make, model, license_plate, capacity)
VALUES (9, 'Kia', 'Optima', 'VWX567', 5);

INSERT INTO Car (driver_id, make, model, license_plate, capacity)
VALUES (10, 'Volkswagen', 'Jetta', 'YZA890', 4);

--Schedule
INSERT INTO Schedule (driver_id, car_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (1, 200, 101, 102, '08:00:00', '10:00:00');

INSERT INTO Schedule (driver_id, car_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (2, 202, 102, 103, '09:00:00', '11:00:00');

INSERT INTO Schedule (driver_id, car_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (3, 203, 103, 104, '10:00:00', '12:00:00');

INSERT INTO Schedule (driver_id, car_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (4, 204, 104, 105, '11:00:00', '13:00:00');

INSERT INTO Schedule (driver_id, car_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (5, 205, 105, 106, '12:00:00', '14:00:00');

INSERT INTO Schedule (driver_id, car_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (6, 206, 106, 107, '13:00:00', '15:00:00');

INSERT INTO Schedule (driver_id, car_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (7, 207, 107, 108, '14:00:00', '16:00:00');

INSERT INTO Schedule (driver_id, car_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (8, 208, 108, 109, '15:00:00', '17:00:00');

INSERT INTO Schedule (driver_id, car_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (9, 209, 109, 100, '16:00:00', '18:00:00');

INSERT INTO Schedule (driver_id, car_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (10, 201, 100, 101, '17:00:00', '19:00:00');


--Schedule Passenger
INSERT INTO Schedule_Passenger (schedule_id, passenger_id)
VALUES (300, 11);

INSERT INTO Schedule_Passenger (schedule_id, passenger_id)
VALUES (301, 12);

INSERT INTO Schedule_Passenger (schedule_id, passenger_id)
VALUES (302, 13);

INSERT INTO Schedule_Passenger (schedule_id, passenger_id)
VALUES (302, 14);

INSERT INTO Schedule_Passenger (schedule_id, passenger_id)
VALUES (303, 15);

INSERT INTO Schedule_Passenger (schedule_id, passenger_id)
VALUES (303, 16);

INSERT INTO Schedule_Passenger (schedule_id, passenger_id)
VALUES (304, 17);

INSERT INTO Schedule_Passenger (schedule_id, passenger_id)
VALUES (304, 18);

INSERT INTO Schedule_Passenger (schedule_id, passenger_id)
VALUES (305, 19);

INSERT INTO Schedule_Passenger (schedule_id, passenger_id)
VALUES (305, 20);



--Ride
INSERT INTO Ride (schedule_id)
VALUES (300);

INSERT INTO Ride (schedule_id)
VALUES (302);

INSERT INTO Ride (schedule_id)
VALUES (303);

INSERT INTO Ride (schedule_id)
VALUES (304);

INSERT INTO Ride (schedule_id)
VALUES (305);

INSERT INTO Ride (schedule_id)
VALUES (306);

INSERT INTO Ride (schedule_id)
VALUES (307);

INSERT INTO Ride (schedule_id)
VALUES (308);

INSERT INTO Ride (schedule_id)
VALUES (309);

INSERT INTO Ride (schedule_id)
VALUES (301);



--Trip
INSERT INTO Trip (ride_id, passenger_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (401, 11, 101, 102, '08:00:00', '10:00:00');

INSERT INTO Trip (ride_id, passenger_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (402, 12, 102, 103, '09:00:00', '11:00:00');

INSERT INTO Trip (ride_id, passenger_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (403, 13, 103, 104, '10:00:00', '12:00:00');

INSERT INTO Trip (ride_id, passenger_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (404, 14, 104, 105, '11:00:00', '13:00:00');

INSERT INTO Trip (ride_id, passenger_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (405, 15, 105, 106, '12:00:00', '14:00:00');

INSERT INTO Trip (ride_id, passenger_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (406, 16, 106, 107, '13:00:00', '15:00:00');

INSERT INTO Trip (ride_id, passenger_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (407, 17, 107, 108, '14:00:00', '16:00:00');

INSERT INTO Trip (ride_id, passenger_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (408, 18, 108, 109, '15:00:00', '17:00:00');

INSERT INTO Trip (ride_id, passenger_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (409, 19, 109, 100, '16:00:00', '18:00:00');

INSERT INTO Trip (ride_id, passenger_id, starting_location_id, destination_location_id, start_time, end_time)
VALUES (400, 20, 100, 101, '17:00:00', '19:00:00');


--Payment
INSERT INTO Payment (trip_id, passenger_id, amount, charge_type, payment_type, payment_date)
VALUES (501, 11, 50.00, 'zelle', 'credit_card', '2022-03-01 10:00:00');

INSERT INTO Payment (trip_id, passenger_id, amount, charge_type, payment_type, payment_date)
VALUES (502, 12, 60.00, 'venmo', 'credit_card', '2022-03-02 11:00:00');

INSERT INTO Payment (trip_id, passenger_id, amount, charge_type, payment_type, payment_date)
VALUES (503, 13, 70.00, 'paypal', 'debit_card', '2022-03-03 12:00:00');

INSERT INTO Payment (trip_id, passenger_id, amount, charge_type, payment_type, payment_date)
VALUES (504, 14, 80.00, 'zelle', 'debit_card', '2022-03-04 13:00:00');

INSERT INTO Payment (trip_id, passenger_id, amount, charge_type, payment_type, payment_date)
VALUES (505, 15, 90.00, 'venmo', 'credit_card', '2022-03-05 14:00:00');

INSERT INTO Payment (trip_id, passenger_id, amount, charge_type, payment_type, payment_date)
VALUES (506, 16, 100.00, 'paypal', 'debit_card', '2022-03-06 15:00:00');

INSERT INTO Payment (trip_id, passenger_id, amount, charge_type, payment_type, payment_date)
VALUES (507, 17, 110.00, 'zelle', 'credit_card', '2022-03-07 16:00:00');

INSERT INTO Payment (trip_id, passenger_id, amount, charge_type, payment_type, payment_date)
VALUES (508, 18, 120.00, 'venmo', 'debit_card', '2022-03-08 17:00:00');

INSERT INTO Payment (trip_id, passenger_id, amount, charge_type, payment_type, payment_date)
VALUES (509, 19, 130.00, 'paypal', 'credit_card', '2022-03-09 18:00:00');

INSERT INTO Payment (trip_id, passenger_id, amount, charge_type, payment_type, payment_date)
VALUES (500, 20, 140.00, 'zelle', 'debit_card', '2022-03-10 19:00:00');



--Rating
INSERT INTO Rating (reviewer_id, reviewee_id, rating, review, review_date)
VALUES (11, 2, 5, 'Great driver!', '2022-03-01 10:00:00');

INSERT INTO Rating (reviewer_id, reviewee_id, rating, review, review_date)
VALUES (12, 3, 4, 'Nice ride, but arrived a bit late', '2022-03-02 11:00:00');

INSERT INTO Rating (reviewer_id, reviewee_id, rating, review, review_date)
VALUES (13, 4, 3, 'The car was not comfortable', '2022-03-03 12:00:00');

INSERT INTO Rating (reviewer_id, reviewee_id, rating, review, review_date)
VALUES (14, 5, 4, 'Smooth ride', '2022-03-04 13:00:00');

INSERT INTO Rating (reviewer_id, reviewee_id, rating, review, review_date)
VALUES (15, 6, 5, 'Awesome driver', '2022-03-05 14:00:00');

INSERT INTO Rating (reviewer_id, reviewee_id, rating, review, review_date)
VALUES (16, 7, 4, 'Good ride, but the driver was a bit reckless', '2022-03-06 15:00:00');

INSERT INTO Rating (reviewer_id, reviewee_id, rating, review, review_date)
VALUES (17, 8, 3, 'The car was not clean', '2022-03-07 16:00:00');

INSERT INTO Rating (reviewer_id, reviewee_id, rating, review, review_date)
VALUES (18, 9, 5, 'Excellent ride!', '2022-03-08 17:00:00');

INSERT INTO Rating (reviewer_id, reviewee_id, rating, review, review_date)
VALUES (19, 10, 4, 'Good driver, but the car was small', '2022-03-09 18:00:00');

INSERT INTO Rating (reviewer_id, reviewee_id, rating, review, review_date)
VALUES (20, 1, 5, 'Best ride ever!', '2022-03-10 19:00:00');







