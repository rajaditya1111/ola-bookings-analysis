#Create Database Ola;
USE Ola;

#1# Retrieve all successful bookings :-

-- #CREATE VIEW Successful_Bookings AS
-- #SELECT * FROM bookings
-- #WHERE Booking_Status = 'Success';

SELECT * FROM Successful_Bookings;



#2# Find average ride distance for each vehicle type :-

-- #CREATE VIEW avg_ride_distance_for_vehicle AS
-- #SELECT Vehicle_Type, AVG(Ride_Distance)
-- #AS avg_distance FROM bookings
-- #GROUP By Vehicle_Type;

SELECT * FROM avg_ride_distance_for_vehicle;




#3# Get the total number of cancelled rides by customers:-
 
-- # CREATE VIEW cancelled_rides AS
-- # SELECT COUNT(*) FROM bookings
-- # WHERE Booking_Status = 'Canceled by Customer';

 SELECT * FROM cancelled_rides;
 
 
 
#4# List top 5 customers who booked the highest number of rides:-
 
--  CREATE VIEW top5_customers AS
--  SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
--  from bookings
--  GROUP BY Customer_ID
--  ORDER BY total_rides DESC LIMIT 5;
 
SELECT * FROM top5_customers;



#5# Get the number of rides cancelled by drivers due to personal and car-related issues:-

-- CREATE VIEW canceled_rides_by_drivers AS
-- SELECT COUNT(*) FROM bookings
-- WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

SELECT * FROM canceled_rides_by_drivers;




#6# Find the maximum and minimum driver ratings for Prime Sedan bookings:

-- CREATE VIEW max_min_driver_rating AS
-- SELECT MAX(Driver_Ratings) AS max_rating,MIN(Driver_Ratings) AS min_rating
-- FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

SELECT * FROM max_min_driver_rating;




#7# Retrieve all rides where payment was made using UPI:

-- CREATE VIEW Upi_Payment AS
-- SELECT * FROM bookings
-- WHERE Payment_Method = 'UPI';

SELECT * FROM Upi_Payment;




#8# Find the average customer rating per vehicle type:

-- CREATE VIEW avg_customer_rating AS
-- SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_rating
-- FROM bookings
-- GROUP BY Vehicle_Type;

SELECT * FROM avg_customer_rating;




#9# Calculate the total booking value of rides completed successfully:

-- CREATE VIEW total_successful_ride_value AS
-- SELECT SUM(Booking_Value) as Total_successful_ride_value
-- FROM bookings
-- WHERE Booking_Status = 'Success'

SELECT * FROM total_successful_ride_value;




#10# List all incomplete rides along with the reason:

-- CREATE VIEW incomplete_rides_reason AS
-- SELECT Booking_ID, Incomplete_Rides_Reason
-- FROM bookings
-- WHERE Incomplete_Rides = 'Yes';


SELECT * FROM incomplete_rides_reason;



