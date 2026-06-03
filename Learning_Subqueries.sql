select 
Country_name,
Est_gdp_in_billions, 
Est_population_in_millions
from 
economic_indicators
where Pct_unemployment > 5 
and Time_period > 2015;

select 
Country_name,
time_period,
round(avg(Est_gdp_in_billions)),
round(avg(Est_gdp_in_billions))
from 
(
select 
Country_name,
Time_period,
Est_gdp_in_billions, 
Est_population_in_millions
from 
economic_indicators
where Pct_unemployment > 5 
and Time_period > 2015) as GDP

group by Country_name, Time_period;

select avg(Est_gdp_in_billions)
from economic_indicators
where Time_period = 2020;

select 
	eco. country_name,
    eco. Est_gdp_in_billions,
	eco. Est_gdp_in_billions,
    bas. pct_managed_drinking_water_services
from 
	economic_indicators as eco 
left join
	basic_services as bas
on 
	eco.Country_name = bas.Country_name and 
    eco.time_period = bas.time_period
where 
	eco.Time_period = 2020
    and bas. pct_managed_drinking_water_services < 90
    and eco. Est_gdp_in_billions > (select avg(Est_gdp_in_billions)
										from economic_indicators
										where Time_period = 2020);
	


