EXPLAIN ANALYZE SELECT genre.name, count(t)
from genre
         join track t on genre.genre_id = t.genre_id
group by genre.name;

EXPLAIN ANALYZE SELECT track_id , max(total)
from invoice_line
         join invoice i on i.invoice_id = invoice_line.invoice_id
group by  track_id
limit 1;

create index album_name on album(name);

CREATE INDEX unit_price_hash_idx on track USING hash(unit_price);

EXPLAIN ANALYZE SELECT name
from album
where artist_id not in(1, 4);

EXPLAIN ANALYZE SELECT unit_price
from track
where unit_price > 100;

