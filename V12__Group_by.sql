SELECT album.name, count(a.artist_id)
from album
join artist a on a.artist_id = album.artist_id
GROUP BY album.name;

SELECT genre.name, count(t)
from genre
join track t on genre.genre_id = t.genre_id
group by genre.name;

SELECT track_id , max(total)
from invoice_line
join invoice i on i.invoice_id = invoice_line.invoice_id
group by  track_id
limit 1;

SELECT playlist, count(*)
from playlist
group by playlist
having count(*)>0;
