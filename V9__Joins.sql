SELECT * from artist
    INNER JOIN album  ON artist.artist_id = album.album_id ;

SELECT * from person p
    INNER JOIN invoice i on p.person_id = i.customer_id;

SELECT * FROM album
    LEFT JOIN track t on album.album_id = t.album_id;

SELECT * from album
RIGHT JOIN artist a on album.artist_id = a.artist_id;

SELECT * FROM media_types
    FULL JOIN track t on media_types.media_types_id = t.media_type_id;

SELECT  * from track t
CROSS Join genre g join album a on a.album_id = t.album_id;

SELECT * from artist
                 natural join person;

SELECT a.name Artist, p.first_name Person
FROM artist a
         JOIN person p ON a.artist_id = p.person_id;

SELECT p.name
FROM playlist p
WHERE EXISTS(SELECT 1
             FROM track t
             WHERE t.track_id = p.playlist_id);

SELECT p.name
FROM playlist p
WHERE NOT EXISTS(SELECT 1
             FROM track t
             WHERE t.track_id = p.playlist_id);