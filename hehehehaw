/*va*/
explain analyse select * from vinculos where a = '419117' /* 311ms */

create index vinculo_idx on vinculos(a)

explain analyse select * from vinculos where a = '419117' /* 48ms */ 

/*vb*/
explain analyse select * from vinculos where b = '%Silva' /* 330ms */ 

create index vinculo_iii on vinculos(b)

explain analyse select * from vinculos where b = '%Silva' /* 53ms */

select * from vinculos_2

/*v2f*/
explain analyse select * from vinculos_2 where f = '%610%'  /* 416ms */

create index vinculo_iif on vinculos_2(f)

explain analyse select * from vinculos_2 where f = '%610%'  /* 40ms */

/*v2g*/
explain analyse select * from vinculos_2 where g = '%610%' /* 365ms */

create index vinculo_iid on vinculos_2(g)

explain analyse select * from vinculos_2 where g = '%610%' /* 43ms */

/*v2h*/
explain analyse select * from vinculos_2 where h = 'Renata%' /* 374ms */

create index vinculo_iife on vinculos_2(h)

explain analyse select * from vinculos_2 where h = 'Renata' /*40ms */

/*v2i*/
explain analyse select * from vinculos_2 where i = '140%' /* 390ms */

create index vinculo_ieaiaio on vinculos_2(i)

explain analyse select * from vinculos_2 where i = '140%' /* 69ms */

/* join sem index, apaguei todos: 1m 20s*/
explain analyse SELECT a, g, h
FROM vinculos_2 v2
FULL JOIN vinculos v ON v.b = v2.i;

/* join com index, recriei todos: 27s 803ms */
explain analyse SELECT a, g, h
FROM vinculos_2 v2
FULL JOIN vinculos v ON v.b = v2.i;


