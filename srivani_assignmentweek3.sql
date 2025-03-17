select * from world.city;
select Name from world.city where city.name like '%New%';
select Name, Population from world.city order by Population desc limit 10;
select Name, Population from world.city order by Population desc;
select Name, Population from world.city where name like 'Be%';
select Name, Population from world.city where population between 5000000 and 10000000;
select * from world.city order by name asc;
select name from world.city order by name asc;
select name, population from world.city order by population desc;
select name, population from world.city order by population desc limit 1;
select name, population from world.city order by population desc limit 10 offset 30;
select name, count(*) as frequency from city group by name order by frequency desc;
select name, population from world.city order by population ;
select name, population from world.city order by population asc;
select name, population from world.city order by population desc;
select name, population from world.city order by population asc limit 1;
select name, population from world.country order by population desc limit 1;
select country.name, city.name from country left join city on country.capital = city.id where country.name='spain';
select country.name, city.name from country left join city on country.capital = city.id where country.name='spain';+