-- 1.
SELECT COUNT(movies.id) AS movies
FROM movies
JOIN companies ON movies.company_id = companies.id
WHERE companies.title = 'Universal Pictures';
-- 2.
SELECT COUNT(*) AS movies
FROM movies
JOIN directors ON movies.director_id = directors.id
WHERE directors.full_name = 'Фрэнсис Форд Коппола';
-- 3.
SELECT COUNT(*) AS movies
FROM movies
WHERE year >= YEAR(CURDATE()) - 20;
-- 4. Главное чтобы были два дефиса и цифра с точкой
SELECT DISTINCT movies.title AS genre
FROM directors
JOIN movies ON directors.id = movies.director_id
WHERE directors.full_name = 'Стивен Спилберг';
-- 5.
SELECT movies.title, movies.genre_id, directors.full_name AS director
FROM movies
JOIN directors ON movies.director_id = directors.id
ORDER BY movies.budget DESC
LIMIT 5;
-- 6.
SELECT directors.full_name, COUNT(movies.id) AS movie_count
FROM directors
JOIN movies ON directors.id = movies.director_id
GROUP BY directors.id, directors.full_name
ORDER BY movie_count DESC
LIMIT 1;
-- 7.
SELECT movies.title, genres.title AS genre
FROM movies
JOIN genres ON movies.genre_id = genres.id
WHERE movies.company_id = (
    SELECT company_id
    FROM movies
    GROUP BY company_id
    ORDER BY SUM(budget) DESC
    LIMIT 1
);
-- 8.
SELECT AVG(budget) AS AverageBudget
FROM movies
JOIN companies ON movies.company_id = companies.id
WHERE companies.title = 'Warner Bros.';
-- 9.
SELECT genres.id AS genre_id, genres.title AS genre_id, COUNT(movies.id) AS NumberOfMovies, AVG(movies.budget) AS AverageBudget
FROM movies
JOIN genres ON movies.genre_id = genres.id
GROUP BY genres.id, genres.title;
-- 10.
DELETE movies
FROM movies
JOIN genres ON movies.genre_id = genres.id
WHERE movies.title = 'Дикие истории' AND genres.title = 'комедия'