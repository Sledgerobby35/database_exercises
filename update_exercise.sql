USE codeup_test_db;
SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums;
SELECT * FROM albums WHERE release_date < '1980-01-01';
UPDATE albums
SET release_date = '1800-11-26'
WHERE release_date < '1980-01-01';
SELECT * FROM albums WHERE release_date < '1900-01-01';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';
