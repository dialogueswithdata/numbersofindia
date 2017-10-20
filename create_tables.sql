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
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('The Journey of IPL Teams across 8 seasons', '#IPL Season 9, 2016 is about to start in April.
We looked back at the eight seasons till now, to find out which teams have consistently been at top across seasons and which ones were inconsistent.

Clearly, Chennai Super Kings, previously led by Mahendra Singh Dhoni has been the most consistent team. They landed a spot in the top 4 in each and every season.

Apart from CSK, Mumbai Indians and Kolkata Knight Riders won the IPL two times each.
Rajasthan Royals, had a drastic fall in rankings, after their first season championship. But, they have shown signs of recovery in the recent seasons. Unfortunately, they won''t be part of #IPL 2016.

Delhi Daredevils and Kings XI Punjab had the bumpiest rides across eight seasons. However, looking at their squads, we see huge potential in them to snatch the top spots in 2016.
Royal Challengers Bangalore has been so close to winning an IPL multiple times. We would love to see them win this year.
Deccan Chargers/SunRisers Hyderabad had won the championship in 2009. But, it''s time they pull up their socks and raise the bar.

IPL - Indian Premier League 2016 has two new teams joining us:
The Gujarat Lions and Rising Pune Supergiants
We''re super excited to watch them surprise us.', 'image', 'static/images/viz/6.png', '2016-02-24 18:33:46.591471', 1);
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('Educational DNA of Indian Women corporate heads and entrepreneurs', 'According to a study by International Center for Research on Women, higher levels of education helps women in bringing meaningful impact not only to their life but to communities. In the spirit of International Women’s Day, for a change instead of focusing on the problems (like low participation rate of women in urban workforce, gender pay gap etc.), let’s look at the educational background of women corporate leaders and entrepreneurs.', 'image', 'static/images/viz/7.png', '2016-03-10 18:33:46.591471', 3);
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('Domestic vs Foreign tourists visit to Indian historical ', 'Monuments/sites provide an insight into a country’s history. The Archaeological Survey of India (ASI) is responsible for protection, restoration and maintenance of India’s monuments and sites. The ASI has classified 116 historical monuments/sites to be centrally protected monuments and sites. The Taj Mahal is being of them. We all know, the Taj Mahal is one of the most famous Indian monument among both domestic and foreign tourist. (54,23,990 domestic and 6,48,511 foreign tourists visited it in 2014.)

It will be fascinating to compare the preference of domestic and foreign tourists for other Indian monuments/sites. Instead of comparing the 115 monuments/sites (excluding Taj Mahal), we selected 29 sites, which had difference between the percentage share for domestic and foreign tourist either greater than 0.2 or lesser than -0.2.

The Sun Temple at Konark is more famous among domestic tourists compared to foreign tourists. The group of monuments at Mamallapuram has the least difference between the percentage shares while Agra Fort is the more famous among foreign tourists. One other interesting observation, most of the sites which are popular among foreign tourist are in Delhi and Agra region. On a lighter note, we hope some of these monuments will make it to your list of historical places to visit!', 'image', 'static/images/viz/8.png', '2016-03-31 18:33:46.591471', 3);
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('Character Names Potrayed by Bollywood Khans', 'Salman Khan has portrayed the character name "Prem" many more times than Shah Rukh Khan has portrayed "Raj" or "Rahul".
Aamir Khan brings variety in character names portrayed, just like in his unique characters.', 'image', 'static/images/viz/9.png', '2016-04-16 18:33:46.591471', 1);
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('Business School Job Offer Report for Class of 2015', 'June is here, it’s about time for onset of new academic session at many Indian Business schools. It will be worth examining the job offer statistics for the outgoing class of 2016. 

For many B-schools, the placements statistics for class 2016 is still not available therefore we thought let’s compare the premier Indian B-school based on the job offer reports for the class 2015.', 'image', 'static/images/viz/10.png', '2016-05-31 18:33:46.591471', 3);
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('Fatalities on Roads of India', 'In the year 2015, 400 people died every day in road accidents. 77.1% of the road accidents occurred because of driver''s fault. 

In this visualization we will probe about the number of fatalities (injuries and deaths) caused due to various improper driving activities and will also explore type of vehicles involved in road fatalities.', 'image', 'static/images/viz/11.png', '2016-08-21 18:33:46.591471', 3);
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('Air Quality & Noise Levels on Diwali', 'Every year we look forward to celebrate #Diwali with colorful and glittering fireworks. Have we ever given a thought to measure the impact of fireworks on our environment?

We decided to analyze the changes in the air quality and noise levels during last year’s Diwali. In this visualization we cover following topics.
- Particulate Matter-10 (PM10) levels on Diwali day vs normal days [2015] 
- PM10 levels on Diwali day [2014 vs 2015]
- Noise Levels on Diwali day [2015]

As we all prepare to celebrate Diwali this weekend, let’s be thoughtful and celebrate the festival of lights, in an environment friendly way. 

Happy Diwali to everyone :)', 'image', 'static/images/viz/12.png', '2016-10-24 18:33:46.591471', 3);
INSERT INTO items (title, description, media_type, url, creation_time, creator_id)
VALUES ('Constituency-wise characteristics of Incumbent Lok Sabha PMs (2014)', 'The Incumbent Lok Sabha is made up of 11.4% women, 74.4% graduates, 34.3% MPs with criminal cases against them and 81.7% Crorepatis. 

Which number surprises you? 

All data was collected from http://myneta.info/', 'image', 'static/images/viz/13.png', '2017-09-06 18:33:46.591471', 2);





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


