select p.first_name,p.last_name,p.city,s.division,p.age,p.shirt_or_hat,p.quiz_points from people p
JOIN states s ON p.state_code=s.state_abbrev;

go

select s.division,p.quiz_points,p.shirt_or_hat,count(p.shirt_or_hat) as Count_of_prize from people p
JOIN states s ON p.state_code=s.state_abbrev
group by s.division,p.quiz_points,p.shirt_or_hat
order by s.division;

go

select COUNT(*) from people p
JOIN states s ON p.state_code=s.state_abbrev;

select COUNT(*) from people p
LEFT JOIN states s ON p.state_code=s.state_abbrev;

select COUNT(*) from people p
RIGHT JOIN states s ON p.state_code=s.state_abbrev;


select COUNT(*) from people p
FULL OUTER JOIN states s ON p.state_code=s.state_abbrev;

go

select distinct p.state_code,s.state_abbrev from people p
JOIN states s ON p.state_code=s.state_abbrev
order by p.state_code;

select distinct p.state_code,s.state_abbrev from people p
LEFT JOIN states s ON p.state_code=s.state_abbrev
order by p.state_code;

select distinct p.state_code,s.state_abbrev from people p
RIGHT JOIN states s ON p.state_code=s.state_abbrev
order by p.state_code;


select distinct p.state_code,s.state_abbrev from people p
FULL OUTER JOIN states s ON p.state_code=s.state_abbrev
order by p.state_code;

go

select s.state_name,count(p.shirt_or_hat) as Count_of_hat from people p
JOIN states s ON p.state_code=s.state_abbrev
where p.shirt_or_hat='hat'
group by s.state_name,p.shirt_or_hat
order by s.state_name;

go

select s.division,p.team,COUNT(p.team) as count_of_team from people p 
JOIN states s
ON p.state_code=s.state_abbrev
group by s.division,p.team
order by count_of_team desc;

go

select state_code,MAX(quiz_points) as Max_Score,AVG(quiz_points) as Avg_Score from people 
group by state_code
order by Avg_Score desc;

go

select * from people
order by city asc;

INSERT into people (first_name,last_name,quiz_points,team,city,state_code,shirt_or_hat)
VALUES ('Walter','ST. John','93','Baffled Badgers','Buffalo','NY','hat'),
('Emerald','Chou','92','Angry Ants','Topeka','KS','shirt');

Update people set shirt_or_hat='shirt' where first_name='Bonnie' and last_name='Brooks';


select * from people where first_name='Lois' and last_name='Hart';



