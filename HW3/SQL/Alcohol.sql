use hw3;
-- turn off only group by
SET SESSION sql_mode='';
-- Select countries with the highest/lowest alcohol consumption
select Year, Country, Alcohol from life_expectancy where (Year = 2010) and ((Alcohol = (select max(Alcohol) from life_expectancy where (Year=2010))))
union
select Year, Country, Alcohol from life_expectancy where (Year = 2010) and ((Alcohol = (select min(Alcohol) from life_expectancy where (Year=2010))))
union
select Year, Country, Alcohol from life_expectancy where (Year = 2011) and ((Alcohol = (select max(Alcohol) from life_expectancy where (Year=2011))))
union
select Year, Country, Alcohol from life_expectancy where (Year = 2011) and ((Alcohol = (select min(Alcohol) from life_expectancy where (Year=2011))))
union
select Year, Country, Alcohol from life_expectancy where (Year = 2012) and ((Alcohol = (select max(Alcohol) from life_expectancy where (Year=2012))))
union
select Year, Country, Alcohol from life_expectancy where (Year = 2012) and ((Alcohol = (select min(Alcohol) from life_expectancy where (Year=2012))))
union
select Year, Country, Alcohol from life_expectancy where (Year = 2013) and ((Alcohol = (select max(Alcohol) from life_expectancy where (Year=2013))))
union
select Year, Country, Alcohol from life_expectancy where (Year = 2013) and ((Alcohol = (select min(Alcohol) from life_expectancy where (Year=2013))))
union
select Year, Country, Alcohol from life_expectancy where (Year = 2014) and ((Alcohol = (select max(Alcohol) from life_expectancy where (Year=2014))))
union
select Year, Country, Alcohol from life_expectancy where (Year = 2014) and ((Alcohol = (select min(Alcohol) from life_expectancy where (Year=2014))))
union
select Year, Country, Alcohol from life_expectancy where (Year = 2015) and ((Alcohol = (select max(Alcohol) from life_expectancy where (Year=2015))))
union
select Year, Country, Alcohol from life_expectancy where (Year = 2015) and ((Alcohol = (select min(Alcohol) from life_expectancy where (Year=2015))))