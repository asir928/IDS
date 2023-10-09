-- Use DB
use hw3;
-- delete where population is 0
delete from life_expectancy where Population=0;
delete from life_expectancy where Population is null;
-- temp table
create temporary table if not exists temptbl as (select * from life_expectancy);
-- cleanse data
update life_expectancy set Life_Expectancy = (select avg(Life_Expectancy) from temptbl) where Life_Expectancy is null;
update life_expectancy set Adult_Mortality = (select avg(Adult_Mortality) from temptbl)  where Adult_Mortality is null;
update life_expectancy set Alcohol = (select avg(Alcohol) from temptbl) where Alcohol is null;
update life_expectancy set BMI = (select avg(BMI) from temptbl) where BMI is null;
update life_expectancy set Total_Expenditure = (select avg(Total_Expenditure) from temptbl)  where Total_Expenditure is null;
update life_expectancy set GDP = (select avg(GDP) from temptbl) where GDP is null;
update life_expectancy set Percentage_Expenditure = (select avg(Percentage_Expenditure) from temptbl) where Percentage_Expenditure=0;
-- drop temp table
drop table temptbl;
-- select from table
select * from life_expectancy;
