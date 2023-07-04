
Base de datos Sakila

1-Muestra los nombres de los actores en orden alfab�tico por su apellido.

SELECT last_name FROM actor

2-Muestra los nombres de las ciudades en orden alfab�tico.

SELECT city FROM city

3-Muestra los nombres de las categor�as en orden descendente.

SELECT category_id from category 
ORDER BY category_id DESC

4-Muestra los t�tulos de las pel�culas en orden alfab�tico.

SELECT title FROM film

5- Muestra los nombres de los clientes en orden descendente por su apellido.

SELECT last_name FROM customer 
ORDER BY last_name DESC

6-Muestra los nombres de los pa�ses en orden alfab�tico.

SELECT country FROM country

7- Muestra los nombres de los idiomas en orden descendente.

SELECT name FROM language 
ORDER BY name DESC

8- Muestra los nombres de las tiendas en orden alfab�tico.

SELECT store_id FROM store

9- Muestra los nombres de los staffs en orden descendente por su apellido.

SELECT first_name, last_name FROM staff
ORDER BY last_name DESC

10 - Muestra los nombres de las pel�culas en orden alfab�tico inverso.

SELECT title FROM film
ORDER BY title DESC

11 - Muestra los nombres de los clientes en orden ascendente por su apellido.

SELECT first_name, last_name FROM customer 
ORDER BY last_name

12- Muestra los nombres de las ciudades en orden descendente.

SELECT city FROM city 
ORDER BY city DESC

13- Muestra los nombres de las categor�as en orden alfab�tico inverso.

SELECT name FROM category
ORDER BY name DESC

14 - Muestra los nombres de las pel�culas en orden descendente.

SELECT title FROM film
ORDER BY title DESC

15- Muestra los nombres de los clientes en orden alfab�tico por su nombre.

SELECT first_name FROM customer 
ORDER BY first_name

16 - Muestra los nombres de los pa�ses en orden descendente.

SELECT country FROM country
ORDER BY country DESC

17 - Muestra los nombres de los idiomas en orden alfab�tico inverso.

SELECT name	FROM language
ORDER BY name DESC

18- Muestra los nombres de las tiendas en orden ascendente.

SELECT store_id FROM store
ORDER BY store_id

19- Muestra los nombres de los staffs en orden alfab�tico por su apellido.

SELECT first_name, last_name FROM staff
ORDER BY last_name

20-Muestra los nombres de las pel�culas en orden descendente inverso.

SELECT title FROM film
ORDER BY title DESC