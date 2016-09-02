-- delete existing rows
TRUNCATE teachers CASCADE;
-- <><><><><><><><><><><><><><><>
-- Teachers
-- <><><><><><><><><><><><><><><>

INSERT INTO teachers (first_name, last_name)
VALUES
('Minerva', 'McGonagall'),
('Filius', 'Flitwick'),
('Pomona', 'Sprout'),
('Severus', 'Snape');
