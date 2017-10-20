CREATE TABLE items (
        id serial,
        title    varchar(100),
        description text,
        media_type varchar(40),
        url text,
        creation_time timestamp DEFAULT current_timestamp,
        creator_id integer,
        CONSTRAINT item_pk PRIMARY KEY(id)
);


CREATE TABLE people (
        id serial,
        first_name varchar(100),
        last_name varchar(100),
        email  varchar(200),
        image_url text,
        creation_time timestamp DEFAULT current_timestamp,
        CONSTRAINT people_pk PRIMARY KEY(id)
);

INSERT INTO people (first_name, last_name, email, image_url) 
VALUES('Akash', 'Mukherjee', 'akashdmukherjee@gmail.com', 'https://scontent.fblr2-1.fna.fbcdn.net/v/t1.0-9/14322366_1796764037278979_6576221208079004628_n.jpg?oh=2b47eb501dcacbfe00895cddc302d0e6&oe=5A8886B6');
INSERT INTO people (first_name, last_name, email, image_url) 
VALUES('Vivek', 'Aithal', 'vivekaithal44@gmail.com', 'https://scontent.fblr2-1.fna.fbcdn.net/v/t1.0-9/12189818_1118205578189925_7711438717580749421_n.jpg?oh=946b298fd942d3435dcb84cfad0cd090&oe=5A3D7D1E');
INSERT INTO people (first_name, last_name, email, image_url) 
VALUES('Nidhi', 'Joshi', 'nidhi.joshi1@gmail.com', 'https://scontent.fblr2-1.fna.fbcdn.net/v/t1.0-9/20728005_10203589696980803_3753816778904177563_n.jpg?oh=cb2a194921294fc6a5e38de9141af5fa&oe=5A881302');


INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('Rising Temperature in India', 'India became hotter by 3.5% (~1°C) over last 100 years, most of it witnessed in last 20 years. <br/> National Average Temperature of India rose by 3.5% (~1°C) over the last 100 years (1915-2014).
Looking at 5-year moving averages year over year, we see that there was a significant bump in temperature post-1976 and another major rise in temperature after year 1994. <br/> Clearly India has gotten a lot hotter in the last 20 years. What could have happened in the last 20 years, which caused this? Leave your comments below. 
Some clues:
- Rise in Industrialization
- Rise in cars emitting CO2
- Rise in Deforestation
', 'image', 'static/images/viz/1.png', '2015-12-10 18:33:46.591471', 1);
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('Population Density 2015', 'If you thought your city is over-crowded, think again.
Mumbai is, by far, the most crowded city in India.

*If Mumbai and Delhi were of the same size, you would find 3 people in Mumbai for every person in Delhi.

*If Mumbai and Tokyo Metropolis were of the same size, you would find 6 people in Mumbai for every person in Tokyo Metropolis.

*If Mumbai and Moscow were of the same size, you would find 11 people in Mumbai for every person in Moscow.

*If Mumbai and Sydney were of the same size, you would find 18 people in Mumbai for every person in Sydney.

Food for thought: Are we all moving into the so called "big" cities and making them "smaller"? Should we as a country be growing the less-ventured towns and cities?', 'image', 'static/images/viz/2.png', '2015-12-23 18:33:46.591471', 1);
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('India Startups of 2015', 'YourStory recently published their list of India''s top 100 Startups for 2015. #INDIA100.
', 'image', 'static/images/viz/3.png', '2015-12-24 18:33:46.591471', 1);
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('IMDB ratings of Bollywood Sequels', 'There has been a fad of sequels in Bollywood of late. But does the audience love the sequels as much as the prequels? Find out below.', 'image', 'static/images/viz/4.png', '2016-01-29 18:33:46.591471', 3);
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('TVF Permanent Roommates -- Season 1 Report', 'Permanent Roommates is coming back on the internet tomorrow.
Being huge fans of TVF Qtiyapa, like the rest of the nation, we decided to take a look back at Season 1.

PR Season 1 captivated us with the freshness and humor in a relationship, with which we could all relate to. Even data proves that it struck the right emotional chords with the Indian audience.

We can''t wait for Permanent Roommates Season 2!', 'image', 'static/images/viz/5.png', '2016-02-13 18:33:46.591471', 1);



SELECT 
		  i.id as item_id
		, i.title
		, i.description
		, i.media_type
		, i.url
		, i.creation_time
		, p.first_name as creator_first_name
FROM items i
LEFT OUTER JOIN people p ON i.creator_id = p.id
ORDER BY i.creation_time DESC;


