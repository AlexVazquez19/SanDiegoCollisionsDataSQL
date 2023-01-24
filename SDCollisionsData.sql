select * from sdcollisionsdata;

create view MostDangerousMakes as
select veh_make, count(case when person_injury_lvl = 'FATAL' then 1 end) as fatality_count
	from sdcollisionsdata 
	group by veh_make
	order by fatality_count desc;

create view MostDangerousModels as
select veh_model, count(case when person_injury_lvl = 'FATAL' then 1 end) as fatality_count
	from sdcollisionsdata 
	group by veh_model
	order by fatality_count desc;
	
	