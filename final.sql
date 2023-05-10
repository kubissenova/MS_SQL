create database final

/*create the table 'genres' where we have 'genres_id' and 'genres_name'*/
create table genres
(
genres_id int identity(1,1) primary key,
genres_name varchar(100) not null,
)

/*create the table 'production_company' where we have 'company_id' and 'company_name'*/
create table production_company
(
company_id int identity(1,1) primary key, 
company_name varchar(100) not null
)

/*create the table 'country' where we have 'country_id' and 'country_name'*/
create table country
(
country_id int identity(1,1) primary key,
country_name varchar(100)
)

/*create the table 'actors' where we have 'actors_id', 'actor' and 'actress'*/
create table actors
(
actors_id int identity (1,1) primary key,
actor varchar(100) default 'Absent',
actress varchar(100) default 'Absent'
)

/*create the table 'director' where we have 'director_id' and 'director_name'*/
create table director
(
director_id int identity(1,1) primary key,
director_name varchar(100) not null
)

/*create the table 'movies' where we have 'movies_id', 'movies_name', 'budget', 'pr_year' and foreign ke references*/
create table movies
(
movies_id int identity(1,1) primary key, 
movies_name varchar(100) not null unique,
budget int not null,
pr_year int not null check (pr_year>2010),
genres_id int foreign key references genres(genres_id),
company_id int foreign key references production_company(company_id),
country_id int foreign key references country(country_id),
actors_id int foreign key references actors(actors_id),
director_id int foreign key references director(director_id)
)

/*insert into genres 20 records*/
insert into genres
values ('Action'),
       ('Adventure'),
       ('Animated'),
       ('Comedy'),
       ('Drama'),
       ('Fantasy'),
       ('Historical'),
       ('Horror'),
       ('Musical'),
       ('Romance'),
       ('Science fiction'),
       ('Thriller'),
       ('Western'),
       ('Mystery'),
       ('Psychology'),
       ('Apocalypse'),
       ('Martial Art'),
       ('Sport'),
       ('Documentary'),
       ('Classic')
 
 /*insert into production_company 20 records*/
insert into production_company
values ('Walt Disney Studios'),
       ('Marvel'),
       ('Warner bros'),
       ('DS'),
       ('Lostfilm'),
       ('20 century fox '),
       ('Techiscope Techicolor'),
       ('Netflix'),
       ('Sony'),
       ('Barunson E&A'),
       ('BBC films'),
       ('Columbia'),
       ('Blue Sky'),
       ('DreamWorks'),
       ('HBO'),
       ('Metro Goldwyn Mayer'),
       ('Paramount Pictures'),
       ('Pixar Animation'),
       ('Searchlight Pictures'),
       ('Universal Pictures')

/*insert into country 20 records*/
insert into country
values ('Italy'),
       ('USA'),
       ('Australia'),
       ('Japan'),
       ('Spain'),
       ('Korea'),
       ('China'),
       ('Mexico'),
       ('Russia'),
       ('Kazakhstan'),
       ('Canada'),
       ('United Kingdom'),
       ('Uzbekistan'),
       ('Mongoly'),
       ('France'),
       ('Germany'),
       ('Poland'),
       ('Norway'),
       ('Denmark'),
       ('Lebanon')

/*insert into actors 20 records*/
insert into actors values ('Christian Bale', default), 
        ('Leonardo Di Caprio', default), 
        ('Andrew Garfield', 'Teresa Palmer'),
        ('Matthew McConaughey', 'Anne Hathaway'), 
        (default, 'Viola Davis'), 
        ('Theo james', 'Shailene Woodley'), 
        ('Zain Al Rafeea', default), 
        ('Song Kan Ho', 'Cho Yeo Jeong'),
        ('Matthew McConaughey', 'Michelle Dockery'), 
        ('Joaquin Phoenix', default),
        ('James McAvoy', 'Anya Taylor-Joy'), 
        ('Daniel Craig', 'Ana de Armas'),
        ('Hugh Jackman', default), 
        ('Ralph Fiennes', 'Anya Taylor-Joy'),
        ('Rami Malek', 'Lucy Boynton'), 
        (default, 'Margot Robbie'),
        (default, 'Emma Stone'),
        ('Will Smith', 'Margot Robbie'),
        ('Christian Bale', default), 
        ('Chris Evans', 'Mckenna Grace') 

/*insert into director 20 records*/
insert into director values ('Quentin Tarantino'),
       ('Guy Ritchie'),
       ('Christopher Nolan'),
       ('Mark Mylod'),
       ('M. Night Shyamalan'),
       ('Bong Joon Ho'),
       ('James Mangold'),
       ('Rian Johnson'),
       ('Bryan Singer, Dexter Fletcher'),
       ('Mel Gibson'),
       ('Neil Burger'),
       ('Todd Phillips'),
       ('Martin Scorsese'),
       ('Francis Ford Coppola'),
       ('David Fincher'),
       ('Craig Gillespie'),
       ('Nadine Labaki'),
       ('Glenn Ficarra, John Requa'),
       ('Tate Taylor'),
       ('Marc Webb')

/*insert into movies 20 records*/
insert into movies values ('Inception', '160000000', '2011', '6', '3', '2', '2', '3'),
       ('Bohemian Phapsody', '50000000', '2018', '9', '6', '2', '15', '9'),
    ('Parasits', '15500000','2019', '12', '10', '6', '8', '6'),
       ('Interstellar', '165000000', '2014', '11', '17', '2', '4', '3'),
    ('Split', '9000000', '2016', '12', '20', '2', '11', '5'),
       ('The Dark Knight Rises', '250000000', '2012', '1', '3', '2', '1', '3'),
    ('Menu', '30000000', '2022', '8', '19', '2', '14', '4'),
       ('Hacksaw Ridge', '40000000', '2016', '5', '10', '2', '3', '10'),
    ('Capernaum', '4000000', '2018', '5', '12', '20', '7', '17'),
       ('Focus','50100000', '2015', '10', '3', '2', '18', '18'),
    ('Joker', '70000000', '2019', '12', '3', '2', '10', '12'),
       ('Cruella', '200000000', '2021', '5', '1', '2', '17', '16'),
    ('Gifted', '7000000', '2017', '5', '17', '2', '20', '20'),
       ('Logan', '120000000', '2017', '1', '6', '2', '13', '7'),
    ('The Gentlemen', '22000000', '2019', '1', '17', '2', '9', '2'),
       ('The Help', '25000000', '2011', '5', '6', '2', '5', '19'),
    ('Ford v ferrari', '97600000', '2019', '18', '3', '2', '19', '7'),
       ('Knives out', '40000000', '2019', '4', '6', '2', '12', '8'),
    ('Divergent', '85000000', '2014', '1', '20', '2', '6', '11'),
       ('I, Tonya', '11000000', '2017', '5', '3', '2', '16', '16')

select * from genres
select * from production_company
select * from country
select * from actors
select * from director
select * from movies

/*find the name of movies where pr_year='2019'*/
select * from movies
where pr_year='2019'

/*find the name of actress where 2nd letter is 'n'*/
select * from actors
where actress like '_n%'

/*find the name of countries where first letter of countries are between 'a' and 'c'*/
select * from country
where country_name like '[a-c]%'

/*find the name of movies where pr_year is '2011', '2014', '2018'*/
select * from movies
where pr_year in ('2011', '2014', '2018')

/*find the name of movies where budget is between 500000000 and 100000000*/
select * from movies 
where budget between 50000000 and 100000000


/*join two tables with 'right join' function*/
select movies_name, actress
from movies 
right join actors on actors.actors_id = movies.actors_id

/*join two tables with 'left join' function*/
select director.director_id, 
       director.director_name,
       production_company.company_id, 
       production_company.company_name
from director left join production_company
on director.director_id = production_company.company_id

/*display the name of movie, where genres_id = 5*/
select * from genres inner join movies on genres.genres_id = movies.genres_id where movies.genres_id = 5

/*display the name of movie, where actor is Leonardo Di Caprio*/
select * from actors inner join movies on actors.actors_id = movies.actors_id where actors.actor = 'Leonardo Di Caprio'

/*find the names of movies and name of genres, where director_name = 'Christopher Nolan'*/
select * from movies inner join director on director.director_id = movies.director_id inner join genres on genres.genres_id = movies.genres_id
where director.director_name = 'Christopher Nolan'



/*count all countries of table*/
select count(*) as number_of_countries
from country


/*count a genres, where genres_id = 1*/
select count(*) as number_of_genre
from movies 
where genres_id = '1'


/*display the max budget of company, where company_id = 20*/
select max(budget) as max_budget_of_company
from movies
where company_id = '20'


/*display the min budget of all movies*/
select min(budget) as min_budget 
from movies 


/*display the average budget of all movies*/
select avg(budget) as avg_budget 
from movies



select count(movies_name) as 'movies from', country_id
from movies
group by country_id

select sum(budget) as 'budget', genres_id
from movies
group by genres_id

select sum(budget) as 'budget', director_id
from movies
group by director_id
order by sum(budget) desc

select max(budget) as 'budget', genres_id
from movies
group by genres_id
having max(budget) < 100000000

select count(movies_name) as 'movies', pr_year
from movies
group by pr_year
having count(movies_name) > 2

create table movie_log
(
	logID int identity(1,1) not null,
	movie_id int not null,
	operation nvarchar(10) not null,
	updatedDate datetime not null	
)


create trigger trgmoviesInsert on movies
for insert	
as
    insert into movie_log(movie_id, operation, updatedDate)
    select movies_id ,'inserted', getdate() from inserted

insert into movies values ('X man', '160000000', '2011', '6', '2', '2', '2', '2')
insert into movies values ('Batman', '160000000', '2011', '6', '2', '2', '2', '2')

create trigger trgmoviesUpdated on movies
after update
as
    insert into dbo.movie_log(movie_id, operation, updatedDate)
    select movies_id,'updated', getdate() from deleted  

update movies
set movies_name = 'Avatar'
where movies_id = '23'


select * from movies
select * from movie_log