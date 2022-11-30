insert into client(fio, passport, count_of_debt, max_possible_debt, filial_id)
VALUES ('Ярулин Данис Ралифович', 8011, 2, 60000, 1),
       ('Селенцев Владислав Адреевич', 9010, 5, 150000, 1),
       ('Казначеев Илья Аднреевич', 8812, 1, 50000, 2),
       ('Чураев Адель Николаевич', 1011, 2, 78000, 3);

INSERT INTO debt (credit, debt_date, available)
VALUES (70000, '2022-11-02', true),
       (50000, '2022-11-28', false),
       (100000, '2022-11-28', false),
       (120000, '2022-11-26', false),
       (50000, '2022-11-25', false);

INSERT INTO filial (city)
VALUES ('Kazan'),
       ('Moscow'),
       ('Samara'),
       ('Chelabinsk ');


INSERT INTO payment (date_payment, pay, number_day_of_debt, client_id)
VALUES ('2022-11-24', 0, 50, 21),
       ('2022-11-18', 10000, 10, 22),
       ('2022-11-05', 4000, 60,23),
       ('2022-11-21', 50000, 50,24),
       ('2022-11-29', 40000, 10,21);

INSERT INTO client_debt (client_id, debt_id)
VALUES (1, 3),
       (4, 1),
       (3, 2),
       (1, 2);



