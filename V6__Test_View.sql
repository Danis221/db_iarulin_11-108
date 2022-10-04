CREATE VIEW album_name_start_with_a
AS SELECT * FROM album
WHERE name LIKE '%A%';

CREATE VIEW album_id
AS SELECT name, artist_id FROM album_name_start_with_a
WHERE album_id < 5
WITH LOCAL CHECK OPTION;

CREATE VIEW album_name_The_Smiths
AS SELECT name FROM album_id
WHERE  name LIKE '%Smiths%'
WITH CASCADED CHECK OPTION;