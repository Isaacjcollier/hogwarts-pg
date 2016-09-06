-- delete existing rows
TRUNCATE classes CASCADE;
-- <><><><><><><><><><><><><><><>
-- Classes
-- <><><><><><><><><><><><><><><>

INSERT INTO classes (subject, teacher_id)
VALUES
  ('History of Magic', (SELECT id FROM teachers WHERE last_name = 'McGonagall')),
  ('Muggle Studies', (SELECT id FROM teachers WHERE last_name = 'Flitwick')),
  ('Flying', (SELECT id FROM teachers WHERE last_name = 'Sprout')),
  ('Defence Against the Dark Arts', (SELECT id FROM teachers WHERE last_name = 'Snape')),
  ('Potion Creating', (SELECT id FROM teachers WHERE last_name = 'Snape'));

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

-- delete existing rows
TRUNCATE parents CASCADE;

-- <><><><><><><><><><><><><><><>
  -- Create parents
-- <><><><><><><><><><><><><><><>

INSERT INTO parents (first_name, last_name)
VALUES
  -- Weasley's parents
  ('Arthur', 'Weasley'),
  ('Molly', 'Weasley'),
  -- Flinch-Fletchley Parents
  ('Merill', 'Flinch-Fletchley'),
  ('Thomas', 'Flinch-Fletchley'),
  -- Chang's parents
  ('Madam', 'Chang'),
  -- Diggory's parents
  ('Amos', 'Diggory'),
  -- Crabbe's parents
  ('Mr D', 'Crabbe'),
  ('Irma', 'Crabbe'),
  -- Draco's parents
  ('Lucius', 'Draco'),
  ('Narcissa', 'Draco');
