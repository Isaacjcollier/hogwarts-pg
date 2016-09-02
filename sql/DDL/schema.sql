DROP DATABASE IF EXISTS hogwarts;
CREATE DATABASE hogwarts;
\c hogwarts;

CREATE TABLE students (
  id serial primary key,
  first_name varchar NOT NULL,
  last_name varchar NOT NULL,
  year int
);

CREATE TABLE parents (
  id serial primary key,
  first_name varchar NOT NULL,
  last_name varchar NOT NULL
);

CREATE TABLE teachers (
  id serial primary key,
  first_name varchar NOT NULL,
  last_name varchar NOT NULL
);

CREATE TABLE classes (
  id serial primary key,
  subject varchar NOT NULL,
  teacher_id integer
);

CREATE TABLE classes_teachers (
  id serial primary key,
 teacher_id integer REFERENCES teachers(id)
);

CREATE TABLE houses (
  id serial primary key,
  house_name varchar NOT NULL,
  teacher varchar
);
-- Join Tables

CREATE TABLE students_parents (
  parent_id integer REFERENCES parents(id),
  student_id integer REFERENCES students(id)
);

CREATE TABLE students_classes (
  student_id integer REFERENCES students(id),
  class_id integer REFERENCES classes(id)
);
