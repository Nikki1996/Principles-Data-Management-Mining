/*DROP TABLES*/
DROP TABLE Domestic;
DROP TABLE ForeignTable;
DROP TABLE ReviewedBy;
DROP TABLE Critics;
DROP TABLE Movie;
DROP TABLE Distributors;

CREATE TABLE  Movie (
Title	VARCHAR2(500) NOT NULL
,Director	VARCHAR2(500) NOT NULL
,ReleaseDate	DATE NOT NULL
,Rating	NUMERIC NOT NULL
,RunningTime	INT NOT NULL
,Actors	VARCHAR2(500) NOT NULL
,DistributorName	VARCHAR2(500)	NOT NULL
 );

CREATE TABLE Domestic (
Com_Flg	NUMBER(1)	NOT NULL
,Drama_Flg	NUMBER(1)	NOT NULL
,Action_Flg	NUMBER(1)	NOT NULL
,Horror_Flg	NUMBER(1)	NOT NULL
,Funnieness	NUMBER(1)
,Dscrptn	VARCHAR2(500)
,Dtitle	VARCHAR2(500)	NOT NULL
,Director VARCHAR(500) NOT NULL
);

CREATE TABLE  Distributors (
DistributorName	VARCHAR2(500)	NOT NULL
,PhnNumber	NUMERIC	NOT NULL
,StreetAddress	VARCHAR2(500)	NOT NULL
,City	VARCHAR2(500)	NOT NULL
,State	VARCHAR2(500)	NOT NULL
,Zipcode	NUMERIC	NOT NULL
);

CREATE TABLE ForeignTable (
Ftitle	VARCHAR2(500)	NOT NULL
,Lang	VARCHAR2(500)	NOT NULL
,Subtitles	VARCHAR2(500)	NOT NULL
,Director VARCHAR(500) NOT NULL
);
CREATE TABLE Critics (
CriticName	VARCHAR2(500)	NOT NULL
,CriticPhnNumber INT NOT NULL
);
CREATE TABLE ReviewedBy (
Rtitle VARCHAR2(500)	NOT NULL
,CriticPhnNumber	INT 	NOT NULL
,Evaluation	VARCHAR2(500)	NOT NULL
,Director VARCHAR(500) NOT NULL
);
ALTER TABLE Movie ADD CHECK (Rating>=1 and Rating<=5 );
ALTER TABLE Movie ADD PRIMARY KEY (Title,Director);
ALTER TABLE Distributors ADD PRIMARY KEY (DistributorName);
ALTER TABLE Critics ADD PRIMARY KEY (CriticPhnNumber);
ALTER TABLE Movie ADD CONSTRAINT FKeyDName FOREIGN KEY (DistributorName) REFERENCES Distributors(DistributorName) ON DELETE CASCADE;
ALTER TABLE Domestic ADD CONSTRAINT FKeyDTitle FOREIGN KEY (Dtitle, Director) REFERENCES Movie(Title,Director) ON DELETE CASCADE;
ALTER TABLE ForeignTable ADD CONSTRAINT FKeyFtitle FOREIGN KEY (Ftitle, Director) REFERENCES Movie(Title,Director) ON DELETE CASCADE;
ALTER TABLE ReviewedBy ADD CONSTRAINT FKeyRtitle FOREIGN KEY (Rtitle, Director) REFERENCES Movie(Title,Director) ON DELETE CASCADE;
ALTER TABLE ReviewedBy ADD CONSTRAINT FKeyCriticPhNo FOREIGN KEY (CriticPhnNumber) REFERENCES Critics(CriticPhnNumber) ON DELETE CASCADE;
INSERT INTO Distributors (DistributorName, PhnNumber, StreetAddress, City, State, Zipcode) VALUES ( 'Harry Welscher', 8927937382, '1267', 'Los Angeles', 'Caulifornia', 22167);

INSERT INTO Distributors
(distributorname,	phnnumber,	streetaddress,	city,	state,	zipcode)  VALUES (
'Troma Films' , 6134981239 , '7263' , 'Vienna' , 'VA' , 28637
);

INSERT INTO Distributors
(distributorname,	phnnumber,	streetaddress,	city,	state,	zipcode)  VALUES (
'George Schwimmer' , 8548962592 , '7253' , 'Los Angeles' , 'Caulifornia' , 21967
);

INSERT INTO Movie
(title, director, releasedate, rating,	runningtime, actors, distributorname) VALUES (
'HUSH' , 'Tom Hanks' , '01-APR-98' ,5 , 150 , 'Pauly Shore, Bradley Cooper' , 'Troma Films'
);

INSERT INTO Movie
(title, director, releasedate, rating,	runningtime, actors, distributorname)  VALUES (
'HANGOVER' , 'Charles Melton' , '12-JUL-10' , 5 , 130 , 'Alan, Bradley Cooper, chin yan' , 'Troma Films' 
);

INSERT INTO Movie
(title, director, releasedate, rating,	runningtime, actors, distributorname)  VALUES (
'Legally Blonde' , 'John Woo' , '2-MAR-10' , 3.5 , 120 , 'Pauly Shore' , 'Harry Welscher' 
);

INSERT INTO Movie
(title, director, releasedate, rating,	runningtime, actors, distributorname)  VALUES (
'Movie 2' , 'Director 3' , '3-AUG-12' , 1 , 160 , 'Pauly Shore' , 'Harry Welscher' 
);

INSERT INTO Movie
(title, director, releasedate, rating,	runningtime, actors, distributorname)  VALUES (
'A STAR IS BORN' , 'Bradley Cooper' , '10-DEC-14' , 5, 180 , 'Actor 1, Actor 2, Actor 3, Actor 4' , 'George Schwimmer'
);

INSERT INTO Domestic
(com_flg,drama_flg,action_flg,horror_flg,funnieness,dscrptn,dtitle,director) VALUES (
 1, 0, 0, 1, 1,'Desciption 1' , 'HUSH', 'Tom Hanks'
);

INSERT INTO Domestic
(com_flg,drama_flg,action_flg,horror_flg,funnieness,dscrptn,dtitle,director) VALUES (
0, 0, 0, 1, 0,'Desciption 2' , 'Movie 2', 'Director 3'
);
INSERT INTO Domestic
(com_flg,drama_flg,action_flg,horror_flg,funnieness,dscrptn,dtitle,director) VALUES (
 1 , 0 , 0 ,0, 5,'Desciption 3' , 'HANGOVER', 'Charles Melton'
);
INSERT INTO Domestic
(com_flg,drama_flg,action_flg,horror_flg,funnieness,dscrptn,dtitle,director)VALUES (
 1 , 0 , 1 ,0, 4,'Desciption 4' , 'Legally Blonde', 'John Woo'
);

INSERT INTO Domestic
(com_flg,drama_flg,action_flg,horror_flg,funnieness,dscrptn,dtitle,director) VALUES (
 0 , 1 , 0 ,0, 0,'Desciption 5' , 'A STAR IS BORN', 'Bradley Cooper'
);

INSERT INTO ForeignTable
(ftitle,lang,subtitles,director) VALUES (
'HUSH', 'English', 'Yes', 'Tom Hanks'
);

INSERT INTO ForeignTable (ftitle,lang,subtitles,director) VALUES (
'Movie 2', 'English', 'Yes', 'Director 3'
);

INSERT INTO ForeignTable
(ftitle,lang,subtitles,director) VALUES (
'HANGOVER', 'Spanish', 'No', 'Charles Melton'
);

INSERT INTO ForeignTable
(ftitle,lang,subtitles,director)VALUES (
'Legally Blonde', 'English', 'Yes', 'John Woo'
);

INSERT INTO ForeignTable
(ftitle,lang,subtitles,director) VALUES (
'A STAR IS BORN', 'Spanish', 'No', 'Bradley Cooper'
);

INSERT INTO Critics
(criticname,criticphnnumber) VALUES (
'Roger Ebert',7625482348
);

INSERT INTO Critics
(criticname,criticphnnumber) VALUES (
'TOM',8274528937
);

INSERT INTO Critics
(criticname,criticphnnumber) VALUES (
'RAIN',2543726469
);

INSERT INTO Critics
(criticname,criticphnnumber)VALUES (
'JESSICA',7354287562
);

INSERT INTO Critics
(criticname,criticphnnumber) VALUES (
'ETHAN',7353764562
);

INSERT INTO ReviewedBy
(rtitle, criticphnnumber,evaluation, director) VALUES (
'Legally Blonde',7625482348,'Evaluation 1', 'John Woo'
);
INSERT INTO ReviewedBy
(rtitle, criticphnnumber,evaluation, director) VALUES (
'A STAR IS BORN', 8274528937,'Evaluation 2', 'Bradley Cooper'
);

INSERT INTO ReviewedBy
(rtitle, criticphnnumber,evaluation, director) VALUES (
'HUSH', 2543726469,'Evaluation 3', 'Tom Hanks'
);

INSERT INTO ReviewedBy
(rtitle, criticphnnumber,evaluation, director) VALUES (
'Movie 2', 7354287562,'Evaluation 4', 'Director 3'
);

INSERT INTO ReviewedBy
(rtitle, criticphnnumber,evaluation, director) VALUES (
'HANGOVER', 7353764562,'Evaluation 5', 'Charles Melton'
);

INSERT INTO ReviewedBy
(rtitle, criticphnnumber,evaluation, director) VALUES (
'Legally Blonde', 7625482348,'Evaluation 6', 'John Woo'
);


/*SELECT STATEMENTS*/
SELECT DistributorName from Distributors where City = 'Los Angeles';
SELECT DISTINCT(m.Director) from Movie m, Distributors d1, Domestic d2 where d1.DistributorName = 'Troma Films' AND d2.horror_flg = 1 AND d2.dtitle = m.title AND d1.DistributorName = m.distributorname;
SELECT DISTINCT(M.TITLE) FROM MOVIE M, DOMESTIC D1 WHERE D1.DTITLE = M.TITLE AND D1.FUNNIENESS = 1 AND d1.COM_FLG = 1 AND M.ACTORS LIKE '%Pauly Shore%';
SELECT DISTINCT(M.TITLE) FROM MOVIE M, REVIEWEDBY R, DOMESTIC D, critics c WHERE M.TITLE = R.RTITLE AND D.ACTION_FLG = 1 AND R.DIRECTOR = 'John Woo' AND C.CRITICPHNNUMBER = R.CRITICPHNNUMBER AND C.CRITICNAME = 'Roger Ebert';
SELECT TITLE FROM MOVIE WHERE ACTORS LIKE '%,%,%,%';
SELECT COUNT(*) as No_of_Movies_With_5_str_Ratng FROM MOVIE WHERE RATING = 5;