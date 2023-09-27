--Name: Asir Nayeef
-- 1. make table
CREATE TABLE child_mortality(
   Year                    VARCHAR(19) NOT NULL PRIMARY KEY
  ,Underﬁve_mortality_rate VARCHAR(30)
  ,Infant_mortality_rate   VARCHAR(30)
  ,Neonatal_mortality_rate VARCHAR(30)
);
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('1990','93.4','64.8','36.8');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('1991','92.1','63.9','36.3');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('1992','90.9','63.1','35.9');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('1993','89.7','62.3','35.4');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('1994','88.7','61.4','??');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('1995','87.3','60.5','34.4');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('1996','85.6','59.4','33.7');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('1997','??','58.2','33.1');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('1998','82.1','56.9','32.3');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('1999','79.9','55.4','31.5');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2000','77.5','53.9','30.7');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2001','74.8','52.1','29.8');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2002','72','??','28.9');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2003','69.2','48.6','28');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2004','66.7','46.9','??');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2005','??','45.1','26.1');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2006','61.1','43.4','25.3');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2007','58.5','??','24.4');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2008','56.2','40.3','23.6');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2009','53.7','38.8','22.9');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2010','??','37.4','22.2');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2011','49.3','36','21.5');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2012','47.3','34.7','20.8');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2013','45.5','33.6','20.2');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2014','43.7','??','19.6');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2015','42.2','31.4','19.1');
INSERT INTO child_mortality(Year,Underﬁve_mortality_rate,Infant_mortality_rate,Neonatal_mortality_rate) VALUES ('2016','40.8','30.5','18.6');

--2 update with medians
update Child_mortality
set Underﬁve_mortality_rate = ((select Underﬁve_mortality_rate from Child_mortality where (Year = 1996)) + (select Underﬁve_mortality_rate from Child_mortality where (Year = 1998))) / 2
where (Year = 1997);
update Child_mortality
set Underﬁve_mortality_rate = ((select Underﬁve_mortality_rate from Child_mortality where (Year = 2004)) + (select Underﬁve_mortality_rate from Child_mortality where (Year = 2006))) / 2
where (Year = 2005);
update Child_mortality
set Underﬁve_mortality_rate = ((select Underﬁve_mortality_rate from Child_mortality where (Year = 2009)) + (select Underﬁve_mortality_rate from Child_mortality where (Year = 2011))) / 2
where (Year = 2010);
update Child_mortality
set Infant_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2001)) + (select Infant_mortality_rate from Child_mortality where (Year = 2003))) /2
where (Year = 2002);
update Child_mortality
set Infant_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2006)) + (select Infant_mortality_rate from Child_mortality where (Year = 2008))) /2
where (Year = 2007);
update Child_mortality
set Infant_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2013)) + (select Infant_mortality_rate from Child_mortality where (Year = 2015))) /2
where (Year = 2014);
update Child_mortality
set Neonatal_mortality_rate = ((select Neonatal_mortality_rate from Child_mortality where (Year = 1993)) + (select Neonatal_mortality_rate from Child_mortality where (Year = 1995))) /2
where (Year = 1994);
update Child_mortality
set Neonatal_mortality_rate = ((select Neonatal_mortality_rate from Child_mortality where (Year = 2003)) + (select Neonatal_mortality_rate from Child_mortality where (Year = 2005))) /2
where (Year = 2004);

-- 3. display entire table
SELECT *
FROM Child_mortality;

-- 4. years with min/max infant mortality
SELECT Year, min(Infant_mortality_rate)
From Child_mortality;
SELECT Year, max(Infant_mortality_rate)
FROM child_mortality;

--5. In what years the neonatal mortality rates were above average?
SELECT Year, Neonatal_mortality_rate
from Child_mortality
WHERE Neonatal_mortality_rate > (SELECT avg(Neonatal_mortality_rate) from Child_mortality);

--6. display Infant_mortality_rate in descending order.
SELECT Infant_mortality_rate
from Child_mortality
ORDER BY Infant_mortality_rate DESC;

--7. min, max, avg, variance, standard deviation for all values.
SELECT min(Underﬁve_mortality_rate), max(Underﬁve_mortality_rate), avg(Underﬁve_mortality_rate), variance(Underﬁve_mortality_rate), stdev(Underﬁve_mortality_rate) from Child_mortality;
SELECT min(Infant_mortality_rate), max(Infant_mortality_rate), avg(Infant_mortality_rate), variance(Infant_mortality_rate), stdev(Infant_mortality_rate) from Child_mortality;
SELECT min(Neonatal_mortality_rate), max(Neonatal_mortality_rate), avg(Neonatal_mortality_rate), variance(Neonatal_mortality_rate), stdev(Neonatal_mortality_rate) from Child_mortality;

-- 8. add table for above five mortality rate.
ALTER TABLE Child_mortality ADD Abovefive_mortality_rate int;

update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 1990)) - (select Underﬁve_mortality_rate from Child_mortality where (Year = 1990)))
where (Year = 1990);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 1991)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 1991)))
where (Year = 1991);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 1992)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 1992)))
where (Year = 1992);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 1993)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 1993)))
where (Year = 1993);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 1994)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 1994)))
where (Year = 1994);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 1995)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 1995)))
where (Year = 1995);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 1996)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 1996)))
where (Year = 1996);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 1997)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 1997)))
where (Year = 1997);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 1998)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 1998)))
where (Year = 1998);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 1999)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 1999)))
where (Year = 1999);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2000)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2000)))
where (Year = 2000);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2001)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2001)))
where (Year = 2001);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2002)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2002)))
where (Year = 2002);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2003)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2003)))
where (Year = 2003);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2004)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2004)))
where (Year = 2004);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2005)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2005)))
where (Year = 2005);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2006)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2006)))
where (Year = 2006);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2007)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2007)))
where (Year = 2007);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2008)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2008)))
where (Year = 2008);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2009)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2009)))
where (Year = 2009);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2010)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2010)))
where (Year = 2010);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2011)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2011)))
where (Year = 2011);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2012)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2012)))
where (Year = 2012);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2013)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2013)))
where (Year = 2013);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2014)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2014)))
where (Year = 2014);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2015)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2015)))
where (Year = 2015);
update Child_mortality
set Abovefive_mortality_rate = ((select Infant_mortality_rate from Child_mortality where (Year = 2016)) - (select Neonatal_mortality_rate from Child_mortality where (Year = 2016)))
where (Year = 2016);
--9. display table again
select * from Child_mortality;

--10. convert to JSON
select json_object('Year', year, 'Underﬁve_mortality_rate', Underﬁve_mortality_rate, 'Infant_mortality_rate', Infant_mortality_rate, 'Neonatal_mortality_rate', Neonatal_mortality_rate,'Abovefive_mortality_rate', Abovefive_mortality_rate) from Child_mortality

