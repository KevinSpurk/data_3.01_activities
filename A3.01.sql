use bank;

-- 3.01 A1 Q1
select A2 as district, count(client_id) as client_count from client c
join district d
on c.district_id = d.district_id
group by A2;

-- Q2
select d.district_id, count(client_id) as client_count 
from client c
right join district d
on c.district_id = d.district_id
group by d.district_id
having client_count is null
order by client_count;

select * from district
where A2 = 'Strakonice';

update district
set district_id = 100
where district_id = 20;

-- Q3
select  c.client_id from client c
left join district d
on c.district_id = d.district_id
where d.district_id is null
limit 20;
-- where c.district_id gives u only missing but not wrong. here also wrong ones because when there is a district_id in c taht is not in d, it is not a correct id, not present in d, therefore null

-- Q04
update district
set district_id = 20
where district_id = 100;

-- A4 Q1
select * from client c
join district d
on c.district_id = d.district_id
order by A3, A2
limit 200;

-- Q2
select A2 as district, A3 as region, count(client_id) as client_count from client c
join district d
on c.district_id = d.district_id
group by A2, A3;

select A2 as district, A4 as no_inh, (count(client_id) * (10000/A4)) as client_ratio from client c
join district d
on c.district_id = d.district_id
group by A2, A4;

select (count(client_id) * (10000/sum(A4))) as client_ratio from client c
join district d
on c.district_id = d.district_id;

-- by region
select A2 as district, A3 as region, A4 as no_int count(client_id) * (10000/A4) as client_ratio from client c
join district d
on c.district_id = d.district_id
group by A2, A3;

