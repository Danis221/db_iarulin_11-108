drop table if exists client cascade;
drop table if exists debt cascade;
drop table if exists payment cascade;
drop table if exists filial cascade;

create table client(
                       id serial primary key,
                       fio text not null ,
                       passport int unique not null,
                       count_of_debt int,
                       max_possible_debt int not null
                           check (client.max_possible_debt<=50000 + client.count_of_debt*20000
                               and max_possible_debt <= 150000),
                       filial_id bigint references filial(id)
);

create table debt(
                     id serial primary key ,
                     credit bigint not null check ( debt.credit<150000 ),
                     debt_date date not null ,
                     available boolean default false
);

create table client_debt (
                             client_id int not null,
                             debt_id int not null,
                             constraint fk_client_id foreign key(client_id) references client(id),
                             constraint fk_dept_id foreign key(debt_id) references debt(id)
);

create table payment(
                        id serial primary key,
                        client_id int,
                        date_payment date,
                        pay int not null default 0,
                        number_day_of_debt int
                            check ( payment.number_day_of_debt <= 61 ),
                        constraint fk_client_id foreign key(client_id) references client(id)


);


create table filial(
                       id serial primary key ,
                       city varchar(50)
);