/*****************************************
* Create the sandbpe8_payne database
*****************************************/
DROP DATABASE IF EXISTS kix_database;
CREATE DATABASE kix_database;
USE kix_database;  -- MySQL command

-- create the tables
CREATE TABLE mail (
  name        VARCHAR(35)        NOT NULL,
  email       VARCHAR(45)        NOT NULL,
  subject      VARCHAR(45)    NOT NULL,
  message      VARCHAR(355)   NOT NULL,
  PRIMARY KEY (name)
);


-- create the users and grant priveleges to those users
GRANT SELECT, INSERT, DELETE, UPDATE
ON kix_database.*
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';