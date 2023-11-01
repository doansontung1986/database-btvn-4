USE sakila;

-- 1. Lấy ra tên các thành phố và tên các quốc gia tương ứng của thành phố đó
SELECT ci.city as City, co.country as Country
FROM city ci
INNER JOIN country co
ON ci.country_id = co.country_id;

-- 2. Lấy ra tên các thành phố của nước Mỹ
SELECT ci.city as 'Cities in United States'
FROM city ci
INNER JOIN country co
ON ci.country_id = co.country_id
WHERE co.country = 'United States';

-- 3. Lấy ra các địa chỉ của thành phố Hanoi
SELECT ad.address as 'Address in Hanoi'
FROM city ci
INNER JOIN country co
ON ci.country_id = co.country_id
INNER JOIN address ad
ON ci.city_id = ad.city_id
WHERE ci.city = 'Hanoi';

-- 4. Lấy ra tên, mô tả, tên category của các bộ phim có rating = R
SELECT f.title, f.description, c.name
FROM film f
INNER JOIN film_category fc
ON f.film_id = fc.film_id
INNER JOIN category c
ON c.category_id = fc.category_id
WHERE f.rating = 'R';

-- 5. Lấy ra thông tin của các bộ phim mà diễn viên NICK WAHLBERG tham gia
SELECT f.*
FROM film f
INNER JOIN film_actor fa
ON f.film_id = fa.film_id
INNER JOIN actor a
ON a.actor_id = fa.actor_id
WHERE first_name = 'NICK' AND last_name = 'WAHLBERG';

-- 6. Tìm email của các khách hàng ở Mỹ
SELECT c.email
FROM customer c
INNER JOIN address a
ON c.address_id = a.address_id
INNER JOIN city ci
ON ci.city_id = a.city_id
INNER JOIN country co
ON ci.country_id = co.country_id
WHERE co.country = 'United States';