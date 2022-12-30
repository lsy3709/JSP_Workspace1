drop table member;

CREATE TABLE IF NOT EXISTS member2(
   id VARCHAR(20) NOT NULL,
   passwd  VARCHAR(20),
   name VARCHAR(30),    
   PRIMARY KEY (id)
);
INSERT INTO member2 VALUES('1', '1234', '이상용1');
INSERT INTO member2 VALUES('2', '1235', '이상용2');


select * from member2;
