--create extension tablefunc;
/*select distinct d.category from dimfilm d 
select distinct d.rating from dimfilm d*/

select * from crosstab( 
     $$
      select df.category ,df.rating ,sum(ri.amount )
      from dimfilm df join rental_info ri on df.filmkey=ri.filmkey
      GROUP by df.category, df.rating
      order by df.category, df.rating
     $$
     ,
     $$ select distinct df.rating from dimfilm df join rental_info ri on df.filmkey=ri.filmkey order by 1 $$ 
) as ct (
     Category varchar,
     G varchar,
     NC17 varchar,
     PG varchar,
     PG13 varchar,
     R varchar
); 

/*select df.category ,df.rating ,sum(ri.amount )
from dimfilm df join rental_info ri on df.filmkey=ri.filmkey
GROUP by df.category, df.rating
order by df.category, df.rating*/
