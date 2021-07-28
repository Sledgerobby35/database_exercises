USE codeup_test_db;
# Pink Floyd Albums
SELECT 'Pink Floyd albums' as ' ';
# Sgt. Pepper's Lonely Hearts Club Band release date
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
# Genre of Nevermind released by Nirvana
SELECT genre FROM albums WHERE name = 'Nevermind';
# Albums made in the 90's
SELECT * FROM albums WHERE release_date < '2000-01-01'
AND release_date > '1989-12-31';
# Albums that sold less that 20 Million Copies
SELECT * FROM albums WHERE sales < 20.0;
# Albums of the genre Rock
SELECT * FROM albums WHERE genre = 'Rock';