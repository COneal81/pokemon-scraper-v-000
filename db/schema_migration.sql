-- Write your sql commands to create your db schema here.
-- It should create a table in a new table in the db/ director

CREATE TABLE IF NOT EXISTS poekmon(
  id INTEGER PRIMARY KEY,
  name TEXT,
  type TEXT);
