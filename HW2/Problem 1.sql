-- Create the table
CREATE TABLE USArrests(
   State    VARCHAR(14) NOT NULL PRIMARY KEY
  ,Murder   NUMERIC(4,1) NOT NULL
  ,Assault  INTEGER 
  ,UrbanPop INTEGER  NOT NULL
);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Alabama',13.2,236,58);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Alaska',10,263,48);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Arizona',8.1,294,80);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Arkansas',8.8,190,50);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('California',9,276,91);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Colorado',7.9,204,78);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Connecticut',3.3,110,77);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Delaware',5.9,238,72);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Florida',15.4,335,80);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Georgia',17.4,NULL,60);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Hawaii',5.3,46,83);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Idaho',2.6,120,54);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Illinois',10.4,249,83);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Indiana',7.2,113,65);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Iowa',2.2,56,57);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Kansas',6,115,66);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Kentucky',9.7,109,52);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Louisiana',15.4,249,66);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Maine',2.1,83,51);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Maryland',11.3,300,67);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Massachusetts',4.4,149,85);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Michigan',12.1,255,74);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Minnesota',2.7,72,66);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Mississippi',16.1,259,44);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Missouri',9,178,70);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Montana',6,109,53);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Nebraska',4.3,102,62);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Nevada',12.2,252,81);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('New Hampshire',2.1,57,56);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('New Jersey',7.4,159,89);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('New Mexico',11.4,285,70);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('New York',11.1,254,86);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('North Carolina',13,337,45);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('North Dakota',0.8,45,44);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Ohio',7.3,120,75);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Oklahoma',6.6,151,68);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Oregon',4.9,159,67);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Pennsylvania',6.3,106,72);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Rhode Island',3.4,174,87);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('South Carolina',14.4,279,48);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('South Dakota',3.8,86,45);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Tennessee',13.2,188,59);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Texas',12.7,201,80);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Utah',3.2,120,80);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Vermont',2.2,48,32);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Virginia',8.5,156,63);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Washington',4,145,73);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('West Virginia',5.7,81,39);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Wisconsin',2.6,53,66);
INSERT INTO USArrests(State,Murder,Assault,UrbanPop) VALUES ('Wyoming',6.8,161,60);


-- 2. update georgia
update USArrests
set Assault = (select avg(Assault) from USArrests)
where Assault is null;

select * from USArrests;

-- 3. Get min/max/avg/varience for everything
select min(Murder) , max(Murder), avg(Murder), variance(Murder)
from USArrests;
select min(Assault) , max(Assault), avg(Assault), variance(Assault)
from USArrests;
select min(UrbanPop) , max(UrbanPop), avg(UrbanPop), variance(UrbanPop)
from USArrests;

-- 4. state with the maxium murder rate
SELECT State, max(Murder) 
from USArrests;

-- 5. show states by the percentage of urban population 
select *
from USArrests
order by UrbanPop;

-- 6. show number and list of states with higher murder rates than arizona.
select count(*)
from USArrests
where (Murder > 8.1);
select *
from USArrests
where (Murder > 8.1);
