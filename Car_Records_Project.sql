CREATE SCHEMA Cars;

USE Cars;

-- Read The Dataset --
SELECT * FROM car_dekho;

-- Count All Records --
SELECT COUNT(*) FROM car_dekho;
-- There are '7927' cars in this dataset. 

-- How many cars is be available in 2023?
SELECT COUNT(*) FROM car_dekho 
WHERE year = 2023;

-- How many cars is be available in 2020, 2021, and 2022?
SELECT year AS Year, COUNT(*) AS no_cars_available
FROM car_dekho
WHERE year IN (2020, 2021, 2022)
GROUP BY year 
ORDER BY Year;

-- List total number of cars by year.
SELECT year AS Year, COUNT(*) AS no_cars_available
FROM car_dekho
GROUP BY year 
ORDER BY Year DESC;

-- How many 'diesel cars' will be available in 2020?
SELECT COUNT(*) AS diesel_cars_available_2023 FROM car_dekho
WHERE year = 2020 AND fuel = 'Diesel';

-- How many 'petrol cars' will be available in 2020?
SELECT COUNT(*) AS diesel_cars_available_2023 FROM car_dekho
WHERE year = 2020 AND fuel = 'Petrol';

-- Print out all cars based on their fuel in 2020, 2021, 2022, and 2023?
SELECT year, fuel, COUNT(*) AS no_cars 
FROM car_dekho
WHERE year in (2020, 2021, 2022, 2023)
GROUP BY fuel, year;

-- Where year had more than 100 cars? 
SELECT year, COUNT(*) no_cars
FROM car_dekho
GROUP BY year
HAVING COUNT(*) > 100
ORDER BY no_cars DESC;

-- Provide a full detail from cars between 2015 and 2023.
SELECT *
FROM car_dekho
WHERE year BETWEEN 2015 AND 2023;

-- Count all cars between 2015 and 2023.
SELECT COUNT(*) AS total_cars_2015_to_2023
FROM car_dekho 
WHERE year BETWEEN 2015 AND 2023;