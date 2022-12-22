USE JSPBookDB;

CREATE TABLE IF NOT EXISTS member(
   id int NOT NULL AUTO_INCREMENT,
   passwd  VARCHAR(20),
   name VARCHAR(30),    
   PRIMARY KEY (id)
);
