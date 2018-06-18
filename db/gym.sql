DROP TABLE bookings;
DROP TABLE members;
DROP TABLE gym_classes;

CREATE TABLE members (
  id serial4 PRIMARY KEY,
  name VARCHAR(255)
);
CREATE TABLE gym_classes (
  id serial4 PRIMARY KEY,
  name VARCHAR(255)
);
CREATE TABLE bookings (
  id serial4 PRIMARY KEY,
  member_id INT4 REFERENCES members(id) ON DELETE CASCADE,
  gymclass_id INT4 REFERENCES gym_classes(id) ON DELETE CASCADE
);
