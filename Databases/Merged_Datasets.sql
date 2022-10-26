select * from asthma_by_county;

-- In joining these tables, you will occationally need to
-- drop the different variations of the "County/county/COUNTY/etc..."
-- so as there are not duplicates in the joined table... be warned!

select *
into join1
from air_pollutants as ap
inner join asthma_by_county as abc
on trim(ap."County") = trim(abc."COUNTY");

alter table join1 drop column "County";

select *
into join2
from join1 as j
inner join demographic_data as dg
on trim(j."COUNTY") = trim(dg."County");

alter table join2 drop column "COUNTY";

select *
into join3
from join2 as j
inner join electric_substations as es
on trim(j."County") = trim(es."COUNTY");

select *
into join4
from join3 as j
inner join ev_chargers as ec
on trim(j."County") = trim(ec."county");

select *
into join5
from join4 as j
inner join wildfires as w
on trim(j."County") = trim(w."Counties");

alter table join5 drop column "County";
alter table join5 drop column "county";
alter table join5 drop column "Counties";

select *
into join6
from join5 as j
inner join registered_evs as revs
on trim(j."COUNTY") = trim(revs."County");

select * from demographic_data;
select * from join1;
select * from join2;
select * from join3;
select * from join4;
select * from join5;
select * from join6;
select * from electric_substations;
select * from ev_chargers;
select * from wildfires;
select * from registered_evs;