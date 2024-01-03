use cars;
-- READ DATA--
select * from car_dekho;
-- TOTAL CARS; TO GET A COUNT OF TOTAL RECORDS--
select count(*) from car_dekho;
-- The manger a	asked the employee how many cars will be available in 2023-- 
select count(*) from car_dekho where year = 2023;
-- The manger asked employee how many cars is available in 2020,2021,2022--
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- client asked me to print the total of all cars by year, i don't see all the details--
select year, count(*)from car_dekho group by year;
-- client asked to car dealer agent how many disel cars will be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";
-- client asked to car dealer agent how many petrol cars will be in 2020--
select count(*) from car_dekho where year = 2020 and fuel = "Petrol";
-- The manger told the employee to give a print all the fuel cars (petrol, diesel, cng) come by all yaer--
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;
-- Manager said there were more than 100 cars in a given year, which year had more then 100 cars?--
select  year, count(*) from car_dekho group by year having count(*)>100;
-- Manager said to the employee all cars count details between 2015 and 2023; we need a compile list-- 
select count(*) from car_dekho where year between 2015 and 2023;
select * from car_dekho where year between 2015 and 2023;

-- End--