INSERT INTO playlist (playlist_id, name)
VALUES (1, 'грустный ');
INSERT INTO playlist (playlist_id, name)
VALUES (2, 'веселый');

INSERT INTO media_types (media_types_id, name)
VALUES (1, 'MP3');
INSERT INTO media_types (media_types_id, name)
VALUES (2, 'M4A ');
INSERT INTO media_types (media_types_id, name)
VALUES (3, 'FLAC');

INSERT INTO genre (genre_id, name)
VALUES (1, 'Rock');
INSERT INTO genre (genre_id, name)
VALUES (2, 'Indie');
INSERT INTO genre (genre_id, name)
VALUES (3, 'Country');
INSERT INTO genre (genre_id, name)
VALUES (4, 'Post-punk');
INSERT INTO genre (genre_id, name)
VALUES (5, 'Rap');
INSERT INTO genre (genre_id, name)
VALUES (6, 'Pop Music');
INSERT INTO genre (genre_id, name)
VALUES (7, 'Hip Hop');

INSERT INTO artist (artist_id, name)
VALUES (1, 'Broncho');
INSERT INTO artist (artist_id, name)
VALUES (2, 'Joji');
INSERT INTO artist (artist_id, name)
VALUES (3, 'The Smiths');
INSERT INTO artist (artist_id, name)
VALUES (4, 'галантерея');
INSERT INTO artist (artist_id, name)
VALUES (5, 'Weezer');
INSERT INTO artist (artist_id, name)
VALUES (6, 'Дайте танк (!)');
INSERT INTO artist (artist_id, name)
VALUES (7, 'Буерак');
INSERT INTO artist (artist_id, name)
VALUES (8, 'Moriarty');
INSERT INTO artist (artist_id, name)
VALUES (9, 'Лепс');
INSERT INTO artist (artist_id, name)
VALUES (10, 'Ручеёк');
INSERT INTO artist (artist_id, name)
VALUES (11, 'Ice Cube');

INSERT INTO album (album_id, name, artist_id)
VALUES (1, 'Nectar', 2);
INSERT INTO album (album_id, name, artist_id)
VALUES (3, 'AlbumThe Smiths', 3);
INSERT INTO album (album_id, name, artist_id)
VALUES (4, 'Albumгалантерея', 4);
INSERT INTO album (album_id, name, artist_id)
VALUES (5, 'AlbumWeezer', 5);
INSERT INTO album (album_id, name, artist_id)
VALUES (6, 'Малегький', 6);
INSERT INTO album (album_id, name, artist_id)
VALUES (7, 'Стратсь к курению', 7);
INSERT INTO album (album_id, name, artist_id)
VALUES (8, 'БД', 7);
INSERT INTO album (album_id, name, artist_id)
VALUES (9, 'Лепс', 9);
INSERT INTO album (album_id, name, artist_id)
VALUES (10, 'Ручеёк', 10);
INSERT INTO album (album_id, name, artist_id)
VALUES (11, 'AlbumIce Cube', 10);
INSERT INTO album (album_id, name, artist_id)
VALUES (20, 'Ballads21', 2);

INSERT INTO track (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price)
VALUES (1, 'самый грустный', 1, 1, 1, null, 10000, 100, 100);
INSERT INTO track (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price)
VALUES (4, 'экспонат', 1, 1, 1, null, 2000, 50, 500);



INSERT INTO playlist_track (playlist_id, track_id)
VALUES (1, 1);
INSERT INTO playlist_track (playlist_id, track_id)
VALUES (2, 4);

INSERT INTO staff (employee_id, first_name, last_name, company, city, email, reposts_to)
VALUES (1, 'Danis', 'Iarulin', 'whatever', 'Kazan', 'test@test.mail', 1);
INSERT INTO staff (employee_id, first_name, last_name, company, city, email, reposts_to)
VALUES (2, 'Denis', 'NeIarulin', 'whatever2.0', 'Moscow', 'test@test.mail', 1);


INSERT INTO client (client_id, first_name, last_name, company, city, email, support_rep_id)
VALUES (1, 'NeDanis', 'Iarulin', 'Newhatever', 'Kazan', 'test@test.mail', 1);
INSERT INTO client (client_id, first_name, last_name, company, city, email, support_rep_id)
VALUES (2, 'NeDenis', 'NeIarulin', 'Newhatever2.0', 'Moscow', 'test@test.mail', 1);



INSERT INTO invoice (invoice_id, customer_id, date, billing_adress, billing_city, billing_state, billing_country,
                     billing_postal_code, total)
VALUES (7, 1, null, null, null, null, null, null, 10000);
INSERT INTO invoice (invoice_id, customer_id, date, billing_adress, billing_city, billing_state, billing_country,
                     billing_postal_code, total)
VALUES (8, 2, null, null, null, null, null, null, 10);



INSERT INTO invoice_line (invoice_line_id, invoice_id, date, track_id, unit_price)
VALUES (1, 7, '2022-09-15', 1, 25);
INSERT INTO invoice_line (invoice_line_id, invoice_id, date, track_id, unit_price)
VALUES (2, 8, '2022-09-09', 4, 35);










