SELECT *
FROM genre
WHERE name LIKE 'R%';

SELECT *
FROM invoice
WHERE total > 20;

SELECT date
FROM invoice_line
    LIMIT 1;


SELECT name
FROM media_types
WHERE media_types_id =
      (SELECT album_id
       FROM track
       WHERE track_id = 4);

SELECT media_types_id
FROM media_types
WHERE name = 'MP3';

SELECT *
FROM playlist
WHERE playlist_id =
      (SELECT playlist_id
       FROM playlist_track
       WHERE track_id = 4);

SELECT *
FROM staff
WHERE city =
      (SELECT city
       FROM client
       WHERE city = 'Kazan');

SELECT *
FROM album
ORDER BY name;

SELECT *
FROM album
WHERE artist_id = 10;

SELECT *
FROM artist
WHERE length(name) > 5;


SELECT artist_id
FROM artist
WHERE name = 'Joji';

SELECT client
FROM client
WHERE city = 'Kazan';

SELECT client_id
FROM client
WHERE city = 'Danis';

SELECT name
FROM genre
WHERE genre_id = 2;

