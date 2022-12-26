.open CTA2_L_daily_ridership.db
--- .schema

-- Select Stations.Station_Name, count(Stops.Stop_Name)
-- From Stations inner join Stops On (Stations.Station_ID = Stops.Station_ID)
-- group by Stations.Station_Name
-- order by  Station_Name asc;

-- Declare @total as float;
-- Declare @uic as float;

-- Set @total = (Select sum(Num_Riders) From Ridership);
-- Set @uic   = (Select sum(Num_Riders) From Ridership Where Station_ID = 40350);

-- Select @uic/@total * 100.0;

Select Stations.Station_Name, count(Stops.Stop_Name)
From Stations inner join Stops On (Stations.Station_ID = Stops.Station_ID)
group by Stations.Station_Name
order by  Station_Name  asc;



