create schema  cars;
select * from cars.car_dekho;

-- 1. Read data --
use cars;
select * from car_dekho;

-- 2. Total Cars: To get a count of total records --
use cars;
select count(*) from car_dekho;

-- 3. The manager asks to employee how many cars avilable in 2023? --
use cars;
select count(*) from car_dekho where year =2023;

-- 4. The manager asks to employee how many cars avilable in 2020,21,22? --
use cars;
select count(*) from car_dekho where year =2020;
select count(*) from car_dekho where year =2021;
select count(*) from car_dekho where year =2022;
-- Or--
select count(*) from car_dekho where year in(2020,2021,2022) group by year;

-- 5. The manager asks to employee To print the total of all cars by year. I dont see all the details? --
use cars;
select year,count(*) from car_dekho group by year;

-- 6. The client asks to car dialer agent How many diesel cars will be in 2020?  --
use cars;
select count(*) from car_dekho where year=2020 and fuel like "Diesel";

-- 7. The client requested to car dialer agent How many petrol cars will be in 2020?  --
use cars;
select * from car_dekho;-- 
select count(*) from car_dekho where year=2020 and fuel like "%petrol%";

-- 8. The manager told to employee to give a print all the fuel cars (petrol, diesel and CNG) come by all year?  --
use cars;
select * from car_dekho;-- 
select year, count(*) from car_dekho where fuel like "%petrol%" group by year;
select year, count(*) from car_dekho where fuel like "%diesel%" group by year;
select year, count(*) from car_dekho where fuel like "%CNG%" group by year;

-- 9. The manager said there where more than 100 cars in a given year, which year had more than 100 cars?  --
use cars;
select year, count(*) as count from car_dekho group by year having count>100;

-- 10. The manager said the employee all cars count details between 2015 and 2023, we need a complete count?  --
use cars;
select  count(*) as count from car_dekho where year between 2015 and 2023;

-- 11. The manager said the employee all cars details between 2015 and 2023, we need a complete list?  --
use cars;
select  * from car_dekho where year between 2015 and 2023;


