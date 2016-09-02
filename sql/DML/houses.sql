-- delete existing rows
TRUNCATE houses CASCADE;
-- <><><><><><><><><><><><><><><>
-- Houses
-- <><><><><><><><><><><><><><><>

INSERT INTO houses (house_name, teacher)
VALUES
('Gryffindor', (SELECT id FROM teachers WHERE last_name='McGonagall' AND first_name='Minerva')),
('Ravenclaw', (SELECT id FROM teachers WHERE last_name='Flitwick' AND first_name='Filius')),
('Hufflepuff', (SELECT id FROM teachers WHERE last_name='Sprout' AND first_name='Pomona')),
('Slytherin', (SELECT id FROM teachers WHERE last_name = 'Snape' AND first_name = 'Severus'));
