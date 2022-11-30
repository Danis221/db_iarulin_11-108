--3
select client.id, client.fio, debt.available
from client, debt
                 join client_debt cd on debt.id = cd.debt_id
where available = false
group by client.id, debt.available;

--4
select filial.id, sum(pay)
from filial
         join client c on filial.id = c.filial_id
         join payment p on c.id = p.client_id
group by filial.id;

--5
SELECT passport,fio, sum(pay + pay * count_of_debt/100) as amount
from client
         join payment p on client.id = p.client_id
    and count_of_debt>61
group by fio, passport;