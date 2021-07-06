CREATE TABLE projects (
id INTEGER PRIMARY KEY,
title TEXT,
category TEXT,
funding_goal NUMERIC,
start_date TEXT,
end_date TEXT
)
;

CREATE TABLE users (
    id INTEGER PRIMARY KEY, name text, age integer);

CREATE TABLE pledges (id INTEGER PRIMARY KEY, amount integer, user_id integer, project_id integer);