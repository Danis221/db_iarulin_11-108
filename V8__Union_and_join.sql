WITH RECURSIVE recursion1 AS (
    SELECT invoice_line_id, unit_price, track_id
    FROM invoice_line
    WHERE track_id = 3

    UNION

    SELECT invoice_line.invoice_line_id, invoice_line.unit_price, invoice_line.track_id
    FROM invoice_line
             INNER JOIN recursion1
                        ON recursion1.track_id = invoice_line.track_id
)SELECT * FROM recursion1;

WITH RECURSIVE recursion2 AS (
    SELECT track_id, name, media_type_id, genre_id
    FROM track
    WHERE media_type_id = 3

    UNION

    SELECT track.track_id, track.name, track.media_type_id, track.genre_id
    FROM track
             INNER JOIN recursion2
                        ON recursion2.media_type_id = track.genre_id
)SELECT * FROM recursion2