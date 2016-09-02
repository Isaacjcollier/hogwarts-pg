-- delete existing rows
TRUNCATE teachers CASCADE;
-- <><><><><><><><><><><><><><><>
-- Teachers
-- <><><><><><><><><><><><><><><>

INSERT INTO teachers (first_name, last_name, house)
VALUES
('Minerva', 'McGonagall', 'Gryffindor'),
('Filius', 'Flitwick', 'Ravenclaw'),
('Pomona', 'Sprout', 'Hufflepuff'),
('Severus', 'Snape', 'Slytherin');
