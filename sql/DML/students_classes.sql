-- delete existing rows
TRUNCATE students_classes;
-- <><><><><><><><><><><><><><><>
-- Join table students & classes
-- <><><><><><><><><><><><><><><>

INSERT INTO students_classes (class_id, student_id)
VALUES
((SELECT id FROM classes WHERE subject = 'History of Magic'),
(SELECT id FROM students WHERE last_name = 'Weasley' AND first_name = 'Bill')),
((SELECT id FROM classes WHERE subject = 'History of Magic'),
(SELECT id FROM students WHERE last_name = 'Weasley' AND first_name = 'Charlie')),
((SELECT id FROM classes WHERE subject = 'History of Magic'),
(SELECT id FROM students WHERE last_name = 'Weasley' AND first_name = 'Percy Ignatius')),
((SELECT id FROM classes WHERE subject = 'Muggle Studies'),
(SELECT id FROM students WHERE last_name = 'Chang' AND first_name = 'Cho')),
((SELECT id FROM classes WHERE subject = 'Muggle Studies'),
(SELECT id FROM students WHERE last_name = 'Edgecombe' AND first_name = 'Marietta')),
((SELECT id FROM classes WHERE subject = 'Flying'),
(SELECT id FROM students WHERE last_name = 'Diggory' AND first_name = 'Cedric')),
((SELECT id FROM classes WHERE subject = 'Defence Against the Dark Arts'),
(SELECT id FROM students WHERE last_name = 'Flinch-Fletchley' AND first_name = 'Justin')),
((SELECT id FROM classes WHERE subject = 'Potion Creating'),
(SELECT id FROM students WHERE last_name = 'Bulstrode' AND first_name = 'Millicent')),
((SELECT id FROM classes WHERE subject = 'Flying'),
(SELECT id FROM students WHERE last_name = 'Crabbe' AND first_name = 'Vincent')),
((SELECT id FROM classes WHERE subject = 'Flying'),
(SELECT id FROM students WHERE last_name = 'Malfoy' AND first_name = 'Draco'));
