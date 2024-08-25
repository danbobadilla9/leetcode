-- Esta es la primera entrada de mi registro donde anoto apuntes sobre problemas de sql server, se iran resolviendo al menos 3 problemas diarios, con el unico fin de explorar temas desconocidos 



--  ###################################  Reto SQL 50: 1757. Recyclable and low fat producsts  ###################################

------------------------------ SOLUCIÓN 1 

-- Esta solucion creó que sería la más facil, sin embargo, al revisar la grafica vemos que la solución tarda al menos 1215ms, ¿Qué es más rapido?
SELECT product_id FROM Products  WHERE low_fats = 'Y' and recyclable  = 'Y'

--------------------------------------------------------------------- SOLUCIÓN 2

-- Dentro de las soluciones se encuentra una que es mucho más optimziada:, pero porque ? relamente creó que el problema es el servidor, ya que el tiempo más corto es de 383 y es la misma propuesta que la solución 01

SELECT 
    product_id 
FROM Products 
WHERE 
    CAST(low_fats AS CHAR) = CAST('Y' AS CHAR) 
    AND CAST(recyclable AS CHAR) = CAST('Y' AS CHAR)

--  ###################################  Reto SQL 50: 584. Find Customer Referee ###################################

------------------------------ SOLUCIÓN 1 

-- Unicamente se tiene que encontrar los clientes cuyo referee_id es diferente a 2, y en la tabla se tienen null 


SELECT name FROM customer where referee_id != 2 or referee_id is null


------------------------------ SOLUCIÓN 2

-- esta forma es muy buena cuando se trabaja en un backend, utilizamos coalesce para cambiar el null a 0 y luego evaluarlo 

SELECT name FROM customer where COALESCE(referee_id,0) <> 2

--  ###################################  Reto personal  ###################################

-- # Crea un usuario y asignale 1 privilegio para el esquema ordenes y asigna privilegios al usuario para que pueda leer datos de la tabla ordenes.cuenta y ordenes.menu 


CREATE LOGIN israel WITH PASSWORD = 'TuContraseñaSeguraAquí';
CREATE USER israel FOR LOGIN israel;


GRANT SELECT ON SCHEMA::ordenes TO israel;

GRANT SELECT ON ordenes.cuenta TO israel;
GRANT SELECT ON ordenes.menu TO israel;
-- POSTGRESQL 
GRANT SELECT ON TABLE ordenes.cuenta TO israel;
GRANT SELECT ON TABLE ordenes.menu TO israel;















