

INSERT INTO movie_table
(title, director, release_date,	rating,	running_time(mins),	actors,	distributor_name) VALUES (
"JEFFTOWNE" , "Daniel Kraus" , "3/25/2017" ,5 , 150 , "George Clooney,Bradley Cooper,Hugh Jackman,Brad Pitt,Robert De Niro" , "Troma Films"
);


INSERT INTO movie_table
(title, director, release_date,	rating,	running_time(mins),	actors,	distributor_name) VALUES (
"JESSICKA RABID" , "Matthew Reel" , "12/26/2010" , 5 , 130 , "Leonardo DiCaprio,Christian Bale,Robert Downey Jr,Brad Pitt" , "Troma Films" 
);


INSERT INTO movie_table
(title, director, release_date,	rating,	running_time(mins),	actors,	distributor_name) VALUES (
"DEADPOOL" , "John Woo" , "1/29/2000" , 3.5 , 120 , "Pauly Shore" , "20th Century Fox" 
);



INSERT INTO movie_table
(title, director, release_date,	rating,	running_time(mins),	actors,	distributor_name) VALUES (
"BOHEMAIN RHAPSODY" , "Bryan Singer" , "3/28/2012" , 1 , 160 , "Pauly Shore" , "20th Century Fox" 
);



INSERT INTO movie_table
(title, director, release_date,	rating,	running_time(mins),	actors,	distributor_name) VALUES (
"WONDERWOMEN" , "Paul Vecchiali" , "8/29/2015" , 5, 180 , "Jack Nicholson, Robert De Niro" , "Warner Bros"
);



INSERT INTO distributor_table
(distributor_name,	phone_number,	street_address,	city,	state,	zipcode) VALUES (
"20th Century Fox" , 1111111111 , "ABC" , "Los Angeles" , "CA" , 90001
);

INSERT INTO distributor_table
(distributor_name,	phone_number,	street_address,	city,	state,	zipcode) VALUES (
"Troma Films" , 2222222222 , "XYZ" , "Los Angeles" , "CA" , 90003
);

INSERT INTO distributor_table
(distributor_name,	phone_number,	street_address,	city,	state,	zipcode) VALUES (
"Warner Bros" , 3333333333 , "WWW" , "Los Angeles" , "CA" , 90004
);

INSERT INTO domestic_table
(comdey_flag,drama_flag,action_flag,horror_flag,funniness,description,title_d) VALUES (
 0 , 0 , 0 ,0, 0,"This is the desciption 1." , "JEFFTOWNE"
);

INSERT INTO domestic_table
(comdey_flag,drama_flag,action_flag,horror_flag,funniness,description,title_d) VALUES (
 1 , 0 , 0 ,0, 1,"This is the desciption 2." , "BOHEMAIN RHAPSODY"
);
INSERT INTO domestic_table
(comdey_flag,drama_flag,action_flag,horror_flag,funniness,description,title_d) VALUES (
 0 , 0 , 0 ,1, 0,"This is the desciption 3." , "JESSICKA RABID"
);
INSERT INTO domestic_table
(comdey_flag,drama_flag,action_flag,horror_flag,funniness,description,title_d) VALUES (
 0 , 0 , 1 ,0, 0,"This is the desciption 4." , "DEADPOOL"
);

INSERT INTO domestic_table
(comdey_flag,drama_flag,action_flag,horror_flag,funniness,description,title_d) VALUES (
 0 , 1 , 0 ,0, 0,"This is the desciption 5." , "WONDERWOMEN"
);


INSERT INTO foreign_table
(title_f,director ,language,subtitles) VALUES (
"JEFFTOWNE", "Daniel Kraus", "English", "Yes"
);

INSERT INTO foreign_table
(title_f,director ,language,subtitles) VALUES (
"BOHEMAIN RHAPSODY", "Bryan Singer", "English", "Yes"
);

INSERT INTO foreign_table
(title_f,director ,language,subtitles) VALUES (
"JESSICKA RABID", "Matthew Reel", "Spanish", "No"
);

INSERT INTO foreign_table
(title_f,director ,language,subtitles) VALUES (
"DEADPOOL", "John Woo", "English", "Yes"
);

INSERT INTO foreign_table
(title_f,director ,language,subtitles) VALUES (
"WONDERWOMEN", "Paul Vecchiali", "Spanish", "No"
);

INSERT INTO critics_table
(critic_name,critic_phone_number) VALUES (
"Roger Ebert",9999999999
);



INSERT INTO critics_table
(critic_name,critic_phone_number) VALUES (
"Olivia",8888888888
);

INSERT INTO critics_table
(critic_name,critic_phone_number) VALUES (
"Isla",7777777777
);

INSERT INTO critics_table
(critic_name,critic_phone_number) VALUES (
"Emily",6666666666
);

INSERT INTO critics_table
(critic_name,critic_phone_number) VALUES (
"Sophia",5555555555
);

INSERT INTO reviewed_by_table
(critic_phone_number,evaluation,title_r,director) VALUES (
9999999999,"This is demo eval data 1", "DEADPOOL", "John Woo"
);
INSERT INTO reviewed_by_table
(critic_phone_number,evaluation,title_r,director) VALUES (
8888888888,"This is demo eval data 2", "WONDERWOMEN", "Paul Vecchiali"
);

INSERT INTO reviewed_by_table
(critic_phone_number,evaluation,title_r,director) VALUES (
7777777777,"This is demo eval data 3", "JEFFTOWNE", "Daniel Kraus"
);

INSERT INTO reviewed_by_table
(critic_phone_number,evaluation,title_r,director) VALUES (
6666666666,"This is demo eval data 4", "BOHEMAIN RHAPSODY", "Bryan Singer"
);

INSERT INTO reviewed_by_table
(critic_phone_number,evaluation,title_r,director) VALUES (
5555555555,"This is demo eval data 5", "JESSICKA RABID", "Matthew Reel"
);




