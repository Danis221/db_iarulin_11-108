CREATE TABLE playlist
(
    playlist_id serial primary key,
    name        varchar(50)
);

CREATE TABLE media_types
(
    media_types_id serial primary key,
    name           varchar(50)
);

CREATE TABLE genre
(
    genre_id serial primary key,
    name     varchar(50)
);



CREATE TABLE artist
(
    artist_id serial primary key,
    name      varchar(50)
);


CREATE TABLE album
(
    album_id  serial primary key,
    name      varchar(50),
    artist_id bigint references artist (artist_id)
);

CREATE TABLE track
(
    track_id      serial primary key,
    name          varchar(50),
    album_id      bigint references album (album_id),
    media_type_id bigint references media_types (media_types_id),
    genre_id      bigint references genre (genre_id),
    composer      varchar(30),
    milliseconds  bigint,
    bytes         int,
    unit_price    real
);

CREATE TABLE playlist_track
(
    playlist_id bigint references playlist (playlist_id),
    track_id    bigint references track (track_id)
);

CREATE TABLE staff
(
    employee_id serial primary key,
    first_name varchar(30) not null ,
    last_name varchar(30) not null ,
    company varchar(30),
    city varchar(30),
    email varchar(30) not null,
    reposts_to bigint   references staff(employee_id)
);

CREATE TABLE client
(
    client_id serial primary key,
    first_name varchar(30) not null ,
    last_name varchar(30) not null ,
    company varchar(30),
    city varchar(30),
    email varchar(30) not null,
    support_rep_id serial references staff(employee_id)
);

CREATE TABLE invoice
(
    invoice_id serial primary key,
    customer_id bigint references client(client_id),
    date date,
    billing_adress varchar(100),
    billing_city varchar(30),
    billing_state varchar(30),
    billing_country varchar(30),
    billing_postal_code varchar(50),
    total int
);

CREATE TABLE invoice_line
(
    invoice_line_id serial primary key,
    invoice_id bigint references invoice(invoice_id),
    date date,
    track_id serial references track(track_id),
    unit_price int
);




