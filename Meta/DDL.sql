-- USER TABLE SCHEMA
DROP TABLE IF EXISTS USER_TABLE CASCADE;
CREATE TABLE USER_TABLE (
	STD_ID INTEGER NOT NULL,
	FULL_NAME VARCHAR(100) NOT NULL,
	NICK_NAME VARCHAR(20),
	PASSWORD VARCHAR(256) NOT NULL,
	EMAIL VARCHAR(50) NOT NULL,
	MOBILE VARCHAR(15), 
	DATE_OF_BIRTH DATE,
	PRIMARY KEY(STD_ID)
);


 --  PROFILE SCHEMA
DROP TABLE IF EXISTS PROFILE;
CREATE TABLE PROFILE(
	STD_ID INTEGER NOT NULL REFERENCES USER_TABLE(STD_ID) ON DELETE CASCADE,
	HOUSE_NO VARCHAR(10),
	ROAD_NO VARCHAR(10),
	ZIP_CODE VARCHAR(10),
	CITY VARCHAR(30),
	COUNTRY VARCHAR(30),
	HOME_TOWN VARCHAR(100),
	PHOTO VARCHAR(100),
	FACEBOOK VARCHAR(100),
	TWITTER VARCHAR(100),
	LINKEDIN VARCHAR(100),
	GOOGLE_SCHOLAR VARCHAR(100),
	RESEARCHGATE VARCHAR(100),
	ABOUT VARCHAR(512),
	PRIMARY KEY(STD_ID)
);

-- ENDORSE
DROP TABLE IF EXISTS ENDORSE;
CREATE TABLE ENDORSE (
	GIVER_ID INTEGER NOT NULL REFERENCES USER_TABLE(STD_ID) ON DELETE CASCADE,
	TAKER_ID INTEGER NOT NULL REFERENCES USER_TABLE(STD_ID) ON DELETE CASCADE,
	TOPIC VARCHAR(30) NOT NULL,
	TIMESTAMP DATE,
	PRIMARY KEY(GIVER_ID,TAKER_ID,TOPIC),
	CONSTRAINT TOPIC_CONS FOREIGN KEY(TAKER_ID, TOPIC) REFERENCES EXPERTISE(STD_ID,TOPIC)
);

--EXPERTISE
DROP TABLE IF EXISTS EXPERTISE CASCADE;
CREATE TABLE EXPERTISE(
	STD_ID INTEGER NOT NULL,
	TOPIC VARCHAR(30) NOT NULL,
	PRIMARY KEY(STD_ID,TOPIC),
	CONSTRAINT STD_ID_EXPERTISE FOREIGN KEY(STD_ID) REFERENCES USER_TABLE(STD_ID) ON DELETE CASCADE
);

-- INSTITUTE
DROP TABLE IF EXISTS INSTITUTE CASCADE;
CREATE TABLE INSTITUTE (
	INSTITUTE_ID SERIAL NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	CITY VARCHAR(30),
	COUNTRY VARCHAR(50),
	TYPE VARCHAR(15),
	PRIMARY KEY(INSTITUTE_ID)
);

--POSTGRAD
DROP TABLE IF EXISTS POSTGRAD;
CREATE TABLE POSTGRAD(
	STD_ID INTEGER NOT NULL,
	MSC VARCHAR(100),
	PHD VARCHAR(100),
	PRIMARY KEY(STD_ID),
	CONSTRAINT STD_POSTGRAD FOREIGN KEY(STD_ID) REFERENCES USER_TABLE(STD_ID) ON DELETE CASCADE
);

--UNDERGRAD
DROP TABLE IF EXISTS UNDERGRAD;
CREATE TABLE UNDERGRAD(
	STD_ID INTEGER NOT NULL,
	HALL VARCHAR(20),
	DEPT VARCHAR(20),
	LVL SMALLINT,
	TERM SMALLINT,
	PRIMARY KEY(STD_ID),
	CONSTRAINT STD_ID_UNDERGRAD FOREIGN KEY(STD_ID) REFERENCES USER_TABLE(STD_ID) ON DELETE CASCADE,
	CONSTRAINT LEVEL_CONSTRAINT CHECK (LVL BETWEEN 1 AND 5),
	CONSTRAINT TERM_CONS CHECK (TERM BETWEEN 1 AND 2)
);


--WORKS
DROP TABLE IF EXISTS WORKS CASCADE;
CREATE TABLE WORKS(
	STD_ID INTEGER NOT NULL,
	INSTITUTE_ID SERIAL NOT NULL,
	FROM_ DATE NOT NULL,
	TO_ DATE,
	DESIGNATION VARCHAR(50) NOT NULL,
	PRIMARY KEY(STD_ID,INSTITUTE_ID,FROM_,TO_),
	CONSTRAINT INSTITUTE_FK FOREIGN KEY(INSTITUTE_ID) REFERENCES INSTITUTE(INSTITUTE_ID) ON DELETE CASCADE,
	CONSTRAINT STD_ID_FK FOREIGN KEY(STD_ID) REFERENCES USER_TABLE(STD_ID) ON DELETE CASCADE,
	CONSTRAINT JOIN_VALIDITY CHECK (FROM_ < TO_)
);
--PROFILE VIEW
CREATE OR REPLACE VIEW USER_PROFILE AS 
SELECT STD_ID,FULL_NAME,NICK_NAME,EMAIL,MOBILE,DATE_OF_BIRTH,AGE(DATE_OF_BIRTH) AS AGE,
HOUSE_NO,ROAD_NO,ZIP_CODE,CITY,COUNTRY,HOME_TOWN,PHOTO,FACEBOOK,TWITTER,LINKEDIN,
GOOGLE_SCHOLAR,RESEARCHGATE,ABOUT,HALL,DEPT,LVL,TERM,MSC,PHD,DESIGNATION,COMPANY
FROM USER_TABLE LEFT JOIN PROFILE USING(STD_ID) 
LEFT JOIN UNDERGRAD USING(STD_ID)
LEFT JOIN POSTGRAD USING(STD_ID) 
LEFT JOIN 
		   (SELECT STD_ID,DESIGNATION,NAME AS COMPANY 
		   FROM WORKS JOIN INSTITUTE USING(INSTITUTE_ID) 
		   WHERE TO_ IS NULL ORDER BY FROM_) AS CURRENT_WORK
USING(STD_ID);