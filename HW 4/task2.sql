INSERT INTO petEvent (petname, eventdate, eventtype, remark) 
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petPet (petname, owner, species, gender, birth, death) 
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL);

INSERT INTO petEvent (petname, eventdate, eventtype, remark) 
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

UPDATE petEvent
SET remark = '5 kittens, 2 male, 3 female'
WHERE petname = 'Fluffy' AND eventdate = '1995-05-15';

UPDATE petEvent
Set petName = 'Claws'
WHERE petName='Slim' AND eventdate='1997-08-03';

UPDATE petPet 
SET death = '2020-09-01' 
WHERE petname = 'Puffball';

DELETE FROM petPet 
WHERE petname = 'Buffy' AND owner = 'Harold';
