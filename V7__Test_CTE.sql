WITH cte_track AS (
    SELECT album_id,
           (CASE
                WHEN album_id = 5
                    THEN 'Favourite'
                ELSE 'Norm track'
               END)review
    FROM track)
SELECT album_id, review
from cte_track;

WITH cte_invoice AS (
    SELECT invoice,
           (CASE
                WHEN total > 299
                    THEN 'Valuable'
                ELSE 'Not worth it'
               END)value
    FROM invoice)
SELECT invoice, value
from cte_invoice;


WITH t AS (
    UPDATE playlist SET name = name||'M'
        RETURNING *
)
SELECT * FROM t;



WITH t2 AS(
    DELETE  FROM playlist_track WHERE playlist_id = 3
        RETURNING *
)
DELETE FROM playlist_track;

	
	