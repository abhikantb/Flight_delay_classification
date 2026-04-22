CREATE TABLE flights (
    airline VARCHAR(10),
    flight INT,
    airportfrom VARCHAR(10),
    airportto VARCHAR(10),
    dayofweek INT,
    time INT,
    duration_min INT,
    delay INT,
    airline_name VARCHAR(255),
    exp_years NUMERIC,
    src_hub_type VARCHAR(50),
    dest_hub_type VARCHAR(50),
    src_type VARCHAR(50),
    src_elevation_ft NUMERIC,
    src_num_runways NUMERIC,
    src_length_ft NUMERIC,
    src_width_ft NUMERIC,
    src_lighted NUMERIC,
    src_closed NUMERIC,
    src_surface VARCHAR(50),
    dest_type VARCHAR(50),
    dest_elevation_ft NUMERIC,
    dest_num_runways NUMERIC,
    dest_length_ft NUMERIC,
    dest_width_ft NUMERIC,
    dest_lighted NUMERIC,
    dest_closed NUMERIC,
    dest_surface VARCHAR(50),
    distance_type VARCHAR(50)
);


-- 1.Determine the number of flights that are delayed on various days of the week
select dayofweek,count(*) as no_of_delayed_flights from flights 
where delay=1 group by dayofweek order by no_of_delayed_flights desc;

--2.Determine the number of delayed flights for various airlines
select airline_name ,count(*) as no_of_delayed_flights from flights 
where delay=1 group by airline_name ORDER BY no_of_delayed_flights DESC;

--3.Determine how many delayed flights land at airports with at least 10 runways
SELECT COUNT(*) AS delayed_flights_count FROM flights
WHERE delay = 1   AND dest_num_runways >= 10;

--4.Compare the number of delayed flights at airports higher than average elevation and those that 
--are lower than average elevation for both source and destination airports
	
select
'No. of Delays' AS category,
-- Source Airport Counts
(select count(*) from flights where delay=1 and src_elevation_ft > (select avg(src_elevation_ft) from flights)) AS src_above_avg,
(select count(*) from flights where delay=1 and src_elevation_ft > (select avg(src_elevation_ft) from flights)) AS src_below_avg,
-- Destination Airport Counts
(select count(*) from flights where delay=1 and dest_elevation_ft > (select avg(dest_elevation_ft) from flights)) AS dest_above_avg,
(select count(*) from flights where delay=1 and dest_elevation_ft > (select avg(dest_elevation_ft) from flights)) AS dest_below_avg;






