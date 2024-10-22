DROP TABLE IF EXISTS petEvent;
DROP TABLE IF EXISTS petPet;

CREATE TABLE petPet (
  petname VARCHAR(20) PRIMARY KEY,
  owner VARCHAR(45),
  species ENUM('M', 'F'),
  gender VARCHAR(15),
  birth DATE,
  death DATE
);

CREATE TABLE petEvent (
  petname VARCHAR(20),
  eventdate DATE,
  eventtype VARCHAR(20),
  remark VARCHAR(255),
  PRIMARY KEY (petname, eventdate),
  FOREIGN KEY (petname) REFERENCES petPet(petname)
);
