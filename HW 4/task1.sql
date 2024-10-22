DROP TABLE IF EXISTS petEvent;
DROP TABLE IF EXISTS petPet;

CREATE TABLE petPet (
  petname VARCHAR(20),
  `owner` VARCHAR(45),
  species VARCHAR(15),
  gender ENUM('M', 'F'),
  birth DATE,
  death DATE,
  PRIMARY KEY (petname)
);

CREATE TABLE petEvent (
  petname VARCHAR(20),
  eventdate DATE,
  eventtype VARCHAR(20),
  remark VARCHAR(255),
  PRIMARY KEY (petname, eventdate),
  FOREIGN KEY (petname) REFERENCES petPet(petname)
);
