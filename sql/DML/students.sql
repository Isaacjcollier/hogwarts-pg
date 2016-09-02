-- delete existing rows
TRUNCATE students CASCADE;
-- <><><><><><><><><><><><><><><>
-- Create students
-- <><><><><><><><><><><><><><><>

INSERT INTO students (first_name, last_name, year)
VALUES
-- Gryffindor : head : Professor Minerva McGonagall
  ('Bill', 'Weasley', 1982),
  ('Charlie', 'Weasley', 1983),
  ('Percy Ignatius', 'Weasley', 1987),
-- Ravenclaw : head : Professor Filius Flitwick
  ('Cho', 'Chang', 1990),
  ('Marietta', 'Edgecombe', 1990),
-- Hufflepuff : head : Professor Pomona Sprout
  ('Cedric', 'Diggory', 1989),
  ('Justin', 'Flinch-Fletchley', 1991),
-- Slytherin : head :  Severus Snape
  ('Millicent', 'Bulstrode', 1991),
  ('Vincent', 'Crabbe', 1991),
  ('Draco', 'Malfoy', 1991);
