# Schema Information

## subjects
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
description | text      |
author_id   | integer   | not null, foreign key (references users), indexed

## decks
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null
objective   | text      |
subject_id  | integer   | not null

## cards
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
deck_id     | integer   | not null, foreign key (references decks), indexed
question    | text      | not null
answer      | text      | not null

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
