--  ###################################  Reto SQL 50: 595. Big Countries  ###################################

-- Basicamente pide hallar el pais con mayor poblacion y area, de acuerdo a los requerimientos que nos estsan solicitando, de entrada lo que se podria hacer es un where para filtrar de acuerdo a lo que nos estan pidiendo 


------------------------------ SOLUCIÓN 1 
SELECT name,population,area from world where area >= 3000000 or population >= 25000000



------------------------------ SOLUCIÓN 2
-- Esta solucion me parecio bastante buena ya que mezcla un subquery, este subquery va a evular las conduciones y regresa una bandera con 1 o 0, junto con todas las columnas de la tabla
-- una vez regresadas va a utilizar un where para poder filtrarlas 

Select name, population,area 
from (
    Select *, case when area>=3000000 or population>=25000000 then 1 else 0 end as big_flag from world
    ) a where big_flag=1


--  ###################################  Reto SQL 50: 1148. Article Views I  ###################################

-- basicamente nos piden buscar los autores que vieron su propio articulo, para ello unicamente hacer un where y un distict para no repetir los mismos ids 

------------------------------ SOLUCIÓN 1 
SELECT distinct  author_id as id FROM views
WHERE views.author_id = viewer_id
order by views.author_id asc;

------------------------------ SOLUCIÓN 2
-- Otra manera es la siguiente, no es la mejor pero cumple con lo mismo 


SELECT
    author_id AS id
FROM
    Views
WHERE
    author_id = viewer_id
GROUP BY 
    author_id
HAVING COUNT(author_id) >= 1

--  ###################################  Crea un trigger que valide si se encuentra un id en una tabla y realice el update   ###################################

