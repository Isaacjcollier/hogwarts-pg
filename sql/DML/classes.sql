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
