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
