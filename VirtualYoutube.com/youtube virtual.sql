create database youtube;
use youtube;
create table videos(title varchar(30), link varchar(100), creator varchar(30), views int(8));
select * from videos;
DELETE FROM videos where id=23;
insert into videos(link) values('https://www.youtube.com/embed/2i4t-SL1VsU');