UPDATE album
SET artist_id = 2 WHERE name = 'Ручеёк';

UPDATE artist
SET name = 'jijo' WHERE artist_id = (SELECT artist_id FROM album
                                     WHERE album.name = 'Nectar');

UPDATE client
SET client_id = 1, first_name = 'Denis' WHERE first_name = 'Danis';

UPDATE genre
SET name = 'Rep' where name='Hip-hop';

UPDATE invoice
SET date = (SELECT date FROM invoice_line
WHERE track_id = 1);
UPDATE media_types
SET name = 'MP4' WHERE media_types_id = 1;

