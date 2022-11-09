CREATE MATERIALIZED VIEW invoice_lines_with_unit_price_more_20 AS SELECT * FROM invoice_line WHERE unit_price > 20;
SELECT * from invoice_lines_with_2_tracks;

CREATE MATERIALIZED VIEW tracks_with_mp4 AS SELECT * FROM track WHERE media_type_id = 3;
SELECT * from tracks_with_MT2;