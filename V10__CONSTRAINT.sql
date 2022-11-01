ALTER table person
    add check ((char_length(first_name) > 2)),
    add check ((char_length(last_name) > 2)),
    add check ((char_length(last_name) > 2)),
    add check ((char_length(city) > 2)),
    ALTER COLUMN email set NOT NULL,
    ALTER COLUMN first_name set NOT NULL,
    ALTER COLUMN last_name set NOT NULL,
    ALTER COLUMN city set NOT NULL;

ALTER TABLE album
    ALTER COLUMN name set NOT NULL,
    ADD CHECK (char_length(name) > 0);

ALTER TABLE artist
    add check ((char_length(name) > 2)),
    ALTER COLUMN name set NOT NULL;

ALTER TABLE genre
    add check ((char_length(name) > 2)),
    ALTER COLUMN name set NOT NULL;

ALTER TABLE invoice
    add check ( total > 0 );

ALTER TABLE media_types
    add check ( char_length(name) > 0 );

ALTER TABLE playlist
    add check ( char_length(name) > 0 );

ALTER TABLE role
    add check ( char_length(role) > 0 );

ALTER TABLE invoice_line
    add check ( invoice_line.unit_price > 0 ),
    ALTER COLUMN date set NOT NULL;

ALTER TABLE track
    add check ( milliseconds > 0 ),
    add check ( bytes > 0 ),
    add check ( unit_price > 0 ),
    ALTER COLUMN milliseconds set NOT NULL,
    ALTER COLUMN bytes set NOT NULL,
    ALTER COLUMN unit_price set NOT NULL;


