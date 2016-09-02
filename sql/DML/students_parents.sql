-- delete existing rows
TRUNCATE parents CASCADE;
-- <><><><><><><><><><><><><><><>
-- Join table students & parents
-- <><><><><><><><><><><><><><><>

INSERT INTO students_parents (parent_id, student_id)
VALUES
 ((SELECT id FROM parents WHERE last_name = 'Weasley'),
  (SELECT id FROM students WHERE first_name = 'Bill')),
 ((SELECT id FROM parents WHERE last_name = 'Weasley'),
  (SELECT id FROM students WHERE first_name = 'Percy Ignatius')),
 ((SELECT id FROM parents WHERE last_name = 'Weasley'),
  (SELECT id FROM students WHERE first_name = 'Charlie')),
 ((SELECT id FROM parents WHERE last_name = 'Chang'),
  (SELECT id FROM students WHERE last_name = 'Chang')),
 ((SELECT id FROM parents WHERE last_name = 'Edgecombe'),
  (SELECT id FROM students WHERE last_name = 'Edgecombe')),
 ((SELECT id FROM parents WHERE last_name = 'Diggory'),
  (SELECT id FROM students WHERE last_name = 'Diggory')),
 ((SELECT id FROM parents WHERE last_name = 'Flinch-Fletchley'),
  (SELECT id FROM students WHERE last_name = 'Flinch-Fletchley')),
 ((SELECT id FROM parents WHERE last_name = 'Bulstrode'),
  (SELECT id FROM students WHERE last_name = 'Bulstrode')),
 ((SELECT id FROM parents WHERE last_name = 'Crabbe'),
  (SELECT id FROM students WHERE last_name = 'Crabbe')),
 ((SELECT id FROM parents WHERE last_name = 'Malfoy'),
  (SELECT id FROM students WHERE last_name = 'Malfoy'));
