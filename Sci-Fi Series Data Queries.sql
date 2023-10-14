create database WEBSERIES;
-- Table1: SciFiWebSeries
CREATE TABLE SciFiWebSeries (
    series_id INT PRIMARY KEY,
    title VARCHAR(255),
    release_year INT,
    genre VARCHAR(255),
    average_rating DECIMAL(3, 1),
    seasons INT,
    episodes INT,
    main_actors TEXT,
    language VARCHAR(50),
    platform VARCHAR(50),
    viewership VARCHAR(50),
    production_company VARCHAR(255),
    director VARCHAR(255),
    awards_won INT,
    awards_nominated INT,
    creator VARCHAR(255),
    streaming_status VARCHAR(50),
    description TEXT
);

INSERT INTO SciFiWebSeries
VALUES
(1, "Black Mirror", 2011, "Drama, Sci-Fi", 8.8, 6, 22, "Bryce Dallas Howard, Jon 
Hamm", "English", "Netflix", "25 million", "Zeppotron, House of Tomorrow", 
"Various", 14, 58, "Charlie Brooker", "Available", "A series of stand-alone dramas 
- sharp, suspenseful, satirical tales that explore techno-paranoia."),
(2, "Stranger Things", 2016, "Drama, Horror, Sci-Fi", 8.7, 4, 34, "Millie Bobby 
Brown, Winona Ryder, David Harbour", "English", "Netflix", "64 million", "21 Laps 
Entertainment, 360, Duffer Brothers Productions", "Duffer Brothers", 7, 43, "Matt 
Duffer, Ross Duffer", "Available", "In a small town where everyone knows 
everyone, a group of kids discovers a strange girl and a secret experiment."),
(3, "Westworld", 2016, "Drama, Sci-Fi, Western", 8.6, 3, 28, "Evan Rachel Wood, 
Thandie Newton, Jeffrey Wright", "English", "HBO", "13 million", "Kilter Films, Bad 
Robot Productions, Warner Bros. Television", "Various", 9, 46, "Jonathan Nolan, 
Lisa Joy", "Available", "In a futuristic theme park, guests experience the stories of
android hosts with artificial consciousness."),
(4, "The Expanse", 2015, "Drama, Mystery, Sci-Fi", 8.5, 6, 60, "Thomas Jane, 
Steven Strait, Shohreh Aghdashloo", "English", "Amazon Prime", "5 million", 
"Alcon Television Group, Sean Daniel Company", "Various", 2, 20, "Mark Fergus, 
Hawk Ostby", "Available", "Two detectives and a ship's officer must work 
together to expose a conspiracy that threatens the Solar System's fragile 
state."),
(5, "The OA", 2016, "Drama, Fantasy, Mystery, Sci-Fi", 7.9, 2, 16, "Brit Marling, 
Jason Isaacs, Emory Cohen", "English", "Netflix", "10 million", "Plan B 
Entertainment, Anonymous Content, Netflix", "Zal Batmanglij", 1, 3, "Brit Marling,
Zal Batmanglij", "Available", "A young blind woman returns home, her sight 
restored, with strange abilities and a mysterious mission."),
(6, "The Mandalorian", 2019, "Action, Adventure, Fantasy, Sci-Fi", 8.7, 2, 16, 
"Pedro Pascal, Gina Carano, Carl Weathers", "English", "Disney+", "30 million", 
"Lucasfilm, Golem Creations", "Various", 11, 39, "Jon Favreau", "Available", "A 
lone bounty hunter in the outer reaches of the galaxy navigates his way through 
the New Republic's turmoil."),
(7, "Dark", 2017, "Crime, Drama, Mystery, Sci-Fi", 8.8, 3, 26, "Louis Hofmann, 
Lisa Vicari, Oliver Masucci", "German", "Netflix", "4 million", "Wiedemann & Berg 
Television", "Baran bo Odar, Jantje Friese", 4, 13, "Baran bo Odar, Jantje Friese", 
"Available", "A missing child leads four estranged families on a frantic hunt for 
answers as they unearth a mind-bending time travel conspiracy."),
(8, "Altered Carbon", 2018, "Action, Drama, Sci-Fi", 8.0, 2, 18, "Joel Kinnaman, 
James Purefoy, Martha Higareda", "English", "Netflix", "20 million", "Mythology 
Entertainment, Skydance Television, Netflix", "Various", 1, 8, "Laeta Kalogridis", 
"Available", "In a future where consciousness can be transferred to different 
bodies, a soldier seeks the truth about his new existence."),
(9, "The Witcher", 2019, "Action, Adventure, Drama, Fantasy, Mystery, Sci-Fi", 
8.2, 2, 16, "Henry Cavill, Anya Chalotra, Freya Allan", "English", "Netflix", "76 
million", "Platige Image, Sean Daniel Company, Netflix", "Various", 5, 30, "Lauren
Schmidt Hissrich", "Available", "Geralt of Rivia, a solitary monster hunter, 
navigates a world filled with magic and dangerous creatures."),
(10, "Counterpart", 2017, "Drama, Sci-Fi, Thriller", 8.1, 2, 20, "J.K. Simmons, 
Harry Lloyd, Nazanin Boniadi", "English", "Starz", "2 million", "Gilbert Films, 
Anonymous Content, Media Rights Capital", "Various", 2, 8, "Justin Marks", 
"Available", "A UN employee discovers the agency he works for is hiding a 
gateway to a parallel dimension.");




CREATE TABLE ActorsInSciFiWebSeries (
    actor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate DATE,
    gender VARCHAR(10),
    nationality VARCHAR(50),
    total_appearances INT,
    series_id INT,
    FOREIGN KEY (series_id) REFERENCES SciFiWebSeries(series_id)
);


INSERT INTO ActorsInSciFiWebSeries (actor_id, first_name, last_name, birthdate, gender, nationality, total_appearances, series_id)
VALUES
(1, 'Bryce', 'Dallas Howard', '1981-03-02', 'Female', 'American', 1, 1),
(2, 'Millie', 'Bobby Brown', '2004-02-19', 'Female', 'British', 1, 2),
(3, 'Evan', 'Rachel Wood', '1987-09-07', 'Female', 'American', 2, 3),
(4, 'Thomas', 'Jane', '1949-02-22', 'Male', 'American', 2, 4),
(5, 'Brit', 'Marling', '1982-08-07', 'Female', 'American', 2, 5),
(6, 'Pedro', 'Pascal', '1975-04-02', 'Male', 'Chilean-American', 1, 6),
(7, 'Louis', 'Hofmann', '1997-06-03', 'Male', 'German', 1, 7),
(8, 'Joel', 'Kinnaman', '1979-11-25', 'Male', 'Swedish-American', 1, 8),
(9, 'Henry', 'Cavill', '1983-05-05', 'Male', 'British', 1, 9),
(10, 'J.K.', 'Simmons', '1955-01-09', 'Male', 'American', 1, 10);


CREATE TABLE RolesInSciFiWebSeries (
    series_id INT,
    actor_id INT,
    role VARCHAR(50),
    FOREIGN KEY (series_id) REFERENCES SciFiWebSeries(series_id),
    FOREIGN KEY (actor_id) REFERENCES ActorsInSciFiWebSeries(actor_id)
);


INSERT INTO RolesInSciFiWebSeries (series_id, actor_id, role)
VALUES
(1, 1, 'Lacie Pound'),
(2, 2, 'Eleven'),
(3, 3, 'Dolores Abernathy'),
(4, 4, 'Detective Joe Miller'),
(5, 5, 'Prairie Johnson'),
(6, 6, 'The Mandalorian'),
(7, 7, 'Jonas Kahnwald'),
(8, 8, 'Takeshi Kovacs'),
(9, 9, 'Geralt of Rivia'),
(10, 10, 'Howard Silk');

select * from SciFiWebSeries;
-- Questions on Table 1: Sci-Fi Web Series
-- 1.	What are the columns in the "Sci-Fi Web Series" table?
	SHOW COLUMNS FROM SciFiWebSeries;

    
    
-- 2.	Can you provide the titles of all the sci-fi web series released before 2018?
SELECT title
FROM SciFiWebSeries
WHERE release_year < 2018;


-- 3.	Which sci-fi web series has the highest average rating?
SELECT title
FROM SciFiWebSeries
ORDER BY average_rating DESC
LIMIT 1;


-- 4.	How many seasons does "Stranger Things" have?
SELECT seasons
FROM SciFiWebSeries
WHERE title = 'Stranger Things';


-- 5.	What is the viewership of "The Witcher"?
SELECT viewership
FROM SciFiWebSeries
WHERE title = 'The Witcher';


-- 6.	List the streaming platforms for all the series in the table.
SELECT DISTINCT platform
FROM SciFiWebSeries;
	
-- 7.	Find the series with the most awards won.
SELECT title, awards_won
FROM SciFiWebSeries
ORDER BY awards_won DESC
LIMIT 1;

-- Questions on Table 2: Actors in Sci-Fi Web Series
-- 8.	What information is stored in the "Actors in Sci-Fi Web Series" dataset?
SELECT 
    *
FROM
    ActorsInSciFiWebSeries
WHERE
    EXTRACT(YEAR FROM birthdate) BETWEEN 1990 AND 1999;

select * from SciFiWebSeries;
-- 9.	Identify the actors born in the 1990s.


SELECT * FROM `ActorsInSciFiWebSeries`
 WHERE EXTRACT(YEAR FROM birthdate)
 BETWEEN 1990 AND 
 1999;



-- 10.	Who is the youngest actor in the dataset?
SELECT * FROM `ActorsInSciFiWebSeries` 
ORDER BY birthdate 
DESC LIMIT 1;

-- 11.	List actors who have appeared in more than one sci-fi web series.
SELECT
 a.first_name, a.last_name
FROM
 `ActorsInSciFiWebSeries` a
JOIN `RolesinSci-FiWebSeries` r ON a.actor_id = r.actor_id
WHERE r.role = 'Dolores Abernathy';



-- 12.	Find the nationality of the actor with the most total appearances.
SELECT
 nationality
FROM `ActorsInSciFiWebSeries`
GROUP BY nationality
ORDER BY SUM(total_appearances) DESC
LIMIT 1;

-- 13.	Retrieve actors who have worked in series with an average rating above 8.
-- Questions on Table 3: Roles in Sci-Fi Web Series
-- 14.	Explain the purpose of the "Roles in Sci-Fi Web Series" dataset.
SELECT 
r.role
FROM 
`RolesinSci-FiWebSeries` r
JOIN
 `ActorsInSciFiWebSeries` a ON r.actor_id = a.actor_id
WHERE a.first_name = 'Millie';


-- 15.	Find all roles played by an actor with the first name "Millie."
SELECT 
r.role,



-- 16.	List the actors who portrayed the character "Dolores Abernathy."
-- 17.	Identify the series where "Henry Cavill" played a role.
-- 18.	List roles played in the series with an average rating above 8.
SELECT * FROM SciFiWebSeries;
SELECT 
s.title, r.role
FROM `SciFiWebSeries` s
JOIN `RolesInSciFiWebSeries` r ON s.series_id = r.series_id
WHERE s.average_rating > 8;


19.	Find the series with the most roles listed in the dataset.







