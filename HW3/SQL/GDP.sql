use hw3;
-- turn off only group by
SET SESSION sql_mode='';
-- Select countries with the highest/lowest GDP
select Year, Country, GDP from life_expectancy where (Year = 2010) and ((GDP = (select max(GDP) from life_expectancy where (Year=2010))))
union
select Year, Country, GDP from life_expectancy where (Year = 2010) and ((GDP = (select min(GDP) from life_expectancy where (Year=2010))))
union
select Year, Country, GDP from life_expectancy where (Year = 2011) and ((GDP = (select max(GDP) from life_expectancy where (Year=2011))))
union
select Year, Country, GDP from life_expectancy where (Year = 2011) and ((GDP = (select min(GDP) from life_expectancy where (Year=2011))))
union
select Year, Country, GDP from life_expectancy where (Year = 2012) and ((GDP = (select max(GDP) from life_expectancy where (Year=2012))))
union
select Year, Country, GDP from life_expectancy where (Year = 2012) and ((GDP = (select min(GDP) from life_expectancy where (Year=2012))))
union
select Year, Country, GDP from life_expectancy where (Year = 2013) and ((GDP = (select max(GDP) from life_expectancy where (Year=2013))))
union
select Year, Country, GDP from life_expectancy where (Year = 2013) and ((GDP = (select min(GDP) from life_expectancy where (Year=2013))))
union
select Year, Country, GDP from life_expectancy where (Year = 2014) and ((GDP = (select max(GDP) from life_expectancy where (Year=2014))))
union
select Year, Country, GDP from life_expectancy where (Year = 2014) and ((GDP = (select min(GDP) from life_expectancy where (Year=2014))))
union
select Year, Country, GDP from life_expectancy where (Year = 2015) and ((GDP = (select max(GDP) from life_expectancy where (Year=2015))))
union
select Year, Country, GDP from life_expectancy where (Year = 2015) and ((GDP = (select min(GDP) from life_expectancy where (Year=2015))))