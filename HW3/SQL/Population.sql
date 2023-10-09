use hw3;
-- turn off only group by
SET SESSION sql_mode='';
-- Select countries with the highest/lowest population
select Year, Country, Population from life_expectancy where (Year = 2010) and ((Population = (select max(Population) from life_expectancy where (Year=2010))))
union
select Year, Country, Population from life_expectancy where (Year = 2010) and ((Population = (select min(Population) from life_expectancy where (Year=2010))))
union
select Year, Country, Population from life_expectancy where (Year = 2011) and ((Population = (select max(Population) from life_expectancy where (Year=2011))))
union
select Year, Country, Population from life_expectancy where (Year = 2011) and ((Population = (select min(Population) from life_expectancy where (Year=2011))))
union
select Year, Country, Population from life_expectancy where (Year = 2012) and ((Population = (select max(Population) from life_expectancy where (Year=2012))))
union
select Year, Country, Population from life_expectancy where (Year = 2012) and ((Population = (select min(Population) from life_expectancy where (Year=2012))))
union
select Year, Country, Population from life_expectancy where (Year = 2013) and ((Population = (select max(Population) from life_expectancy where (Year=2013))))
union
select Year, Country, Population from life_expectancy where (Year = 2013) and ((Population = (select min(Population) from life_expectancy where (Year=2013))))
union
select Year, Country, Population from life_expectancy where (Year = 2014) and ((Population = (select max(Population) from life_expectancy where (Year=2014))))
union
select Year, Country, Population from life_expectancy where (Year = 2014) and ((Population = (select min(Population) from life_expectancy where (Year=2014))))
union
select Year, Country, Population from life_expectancy where (Year = 2015) and ((Population = (select max(Population) from life_expectancy where (Year=2015))))
union
select Year, Country, Population from life_expectancy where (Year = 2015) and ((Population = (select min(Population) from life_expectancy where (Year=2015))))

