-- 1. Insert into events table the information ‘Fluffy’, ‘2020-10-15’, ‘vet’, ‘antibiotics’.
INSERT INTO petEvent (petname, eventdate, eventtype, remark) 
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

-- 2. Insert into events table the information ‘Hammy’, ‘2020-10-15’, ‘vet’, ‘antibiotics’.
-- Note: Hammy is a male hamster of Diane born on 2010-10-30 and still didn't die.
INSERT INTO petPet (petname, owner, species, gender, birth, death) 
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL);

INSERT INTO petEvent (petname, eventdate, eventtype, remark) 
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

-- 3. Fluffy had 5 kittens, 2 of which are male.
INSERT INTO petEvent (petname, eventdate, eventtype, remark) 
VALUES ('Fluffy', '1995-05-15', 'litter', '5 kittens, 2 male, 3 female');

-- 4. On “1997-08-03” it was Claws who broke the rib.
INSERT INTO petEvent (petname, eventdate, eventtype, remark) 
VALUES ('Claws', '1997-08-03', 'vet', 'broken rib');

-- 5. Unfortunately, Puffball died on ‘2020-09-01’.
UPDATE petPet 
SET death = '2020-09-01' 
WHERE petname = 'Puffball';

-- 6. Harold asked me to remove his dog from my database due to GDPR.
DELETE FROM petPet 
WHERE petname = 'Buffy' AND owner = 'Harold';
