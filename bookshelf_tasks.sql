-- 1 
SELECT a.name
FROM authors a
JOIN authors_books ab ON a.id = ab.authors_id
GROUP BY a.name
ORDER BY COUNT(ab.books_id) DESC
LIMIT 1;
-- 2
SELECT *
FROM books
WHERE year IS NOT NULL
ORDER BY year ASC
LIMIT 5;
-- 3
SELECT COUNT(*)
FROM books
JOIN shelves ON books.shelves_id = shelves.id
WHERE shelves.title = 'полка в кабинете';
-- 4
SELECT b.title, a.name, b.year
FROM books b
JOIN shelves s ON b.shelves_id = s.id
JOIN authors_books ab ON b.id = ab.books_id
JOIN authors a ON ab.authors_id = a.id
WHERE s.title = 'полка в спальне';
-- 5
SELECT b.title, b.year
FROM books b
JOIN authors_books ab ON b.id = ab.books_id
JOIN authors a ON ab.authors_id = a.id
WHERE a.name = 'Лев Толстой';
-- 6
SELECT b.title
FROM books b
JOIN authors_books ab ON b.id = ab.books_id
JOIN authors a ON ab.authors_id = a.id
WHERE a.name LIKE 'А%';
-- 7
SELECT b.title, a.name
FROM books b
JOIN authors_books ab ON b.id = ab.books_id
JOIN authors a ON ab.authors_id = a.id
JOIN shelves s ON b.shelves_id = s.id
WHERE s.title LIKE '%верхняя%' OR s.title LIKE '%нижняя%';
-- 8
UPDATE books
SET friends_id = (
    SELECT id
    FROM friends
    WHERE name = 'Иванов Иван'
)
WHERE title = 'Божественная комедия' AND books.id = (
    SELECT books_id
    FROM authors_books
    JOIN authors
    ON authors_books.authors_id = authors.id
    WHERE authors.name = 'Данте Алигьери'
);
-- 9
INSERT INTO books (title, year, shelves_id, friends_id)
VALUES ('Краткие ответы на большие вопросы', 2020, 
    (SELECT id FROM shelves WHERE title = 'полка в кабинете'), NULL);

INSERT INTO authors_books (books_id, authors_id)
VALUES (
    (SELECT id FROM books WHERE title = 'Краткие ответы на большие вопросы'), 
    (SELECT id FROM authors WHERE name = 'Стивен Хокинг')

);