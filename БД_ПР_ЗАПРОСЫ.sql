select LAST_NAME
from employees
where id_title=(
                                select id
                                from title
                                where name='KASSIR');


select SUM(count(id_prod))
from check_c
where id_prod=ANY(
                select id
                from product
                where id_producer=(
                                    select id
                                    from producer
                                    where id=56))
group by id_prod;



select name
from city
where id=ANY(
          select id_city
          from distributor
          where id=ANY(
                    select id_distr
                    from supply_info
                    where id = 3698 AND id_emp=ANY(
                                  select id
                                  from employees
                                  where id_title=ANY(
                                                  select id
                                                  from title
                                                  where name='TAKER'))));