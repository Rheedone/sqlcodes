use united_nations;

create table access_to_basic_services(
    Region VARCHAR(32),
    Sub_region VARCHAR(25),
    Country_name INTEGER NOT NULL,
    Time_period INTEGER NOT NULL,
    Pct_managed_drinking_water_services NUMERIC(5,2),
    Pct_managed_sanitation_services NUMERIC(5,2),
    Est_population_in_millions NUMERIC(11,6),
    Est_gdp_in_billions NUMERIC(8,2),
    Land_area NUMERIC(10,2),
    Pct_unemployment NUMERIC(5,2)
);

alter table access_to_basic_services
modify column Country_name VARCHAR(35) NOT NULL;


select * from access_to_basic_services;

update  access_to_basic_services
set Pct_unemployment = 4.53
Where country_name = 'China'
and Time_period = 2016;

truncate access_to_basic_services;

select * from country_list;

select distinct
	country_name
from
	access_to_basic_services;
    
/* select 
	count(country_name)
from 
	access_to_basic_services;
    
    case 
		when country_name = 'Nigeria' then 1
        where country_name = 'Togo' then 2
        else 3
	end as Rank
    
    select 
		row_number() over (partion by country_name order by date desc) as number 
	 where salary > (select avg(salary) from access_to_basic_services) ;*/

drop table if exists country_list;

create table country_list
(country_name varchar(225));

insert into country_list (
	country_name
)
select distinct
country_name 
from access_to_basic_services;
    
select 
*
from  
country_list;
      
select 
	country_name, 
    time_period,
    pct_managed_drinking_water_services 
from 
	access_to_basic_services
where 
	time_period = 2015;
/*order by 
	pct_managed_drinking_water_services;*/


