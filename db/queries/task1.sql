-- Creating a Database

create DATABASE t20_world_cup;

-- using database for framing tables and inserting data into particular database

use t20_world_cup;

-- Creating a table teams

create table teams (
    id int AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE(name)
);

-- Inserting data

insert into teams (name,country,founded) values
("team1","india",2007),
("team2","South Africa",2008),
("team3","England",2009),
("team4","Bangladesh",2005),
("team5","Australia",2007),
("team6","UAE",2021),
("team7","Sri lanka",2014),
("team8","West indies",2009),
("team9","Afghanisthan",2010),
("team10","New Zealand",2011);

-- Retrive all teams 

select * from teams;

-- Retrieving a specific team by name

select * from teams where name="team7";

-- List of teams founded before certain year

select * from teams where founded < 2009;

-- inserting a new team 

insert into teams (name,country,founded) values ("team11","Pakistan",2001);

-- Update the country of specific team

update teams set country="canada" where name="team5";

-- Delete a team by its name

DELETE from teams where name="team7";
