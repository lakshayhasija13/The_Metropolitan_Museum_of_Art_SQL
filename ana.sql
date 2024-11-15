-- Overview of data
SELECT *
FROM met
LIMIT 10;

-- Finding no of american decorative art collection
SELECT COUNT(*)
FROM met
WHERE department = 'American Decorative Arts';

-- Count the number of pieces where the category includes ‘celery’.
SELECT COUNT(*)
FROM met
WHERE category LIKE '%celery%';

-- Find the title and medium of the oldest piece(s) in the collection.
SELECT DISTINCT title, medium
FROM met
WHERE date IN (
  SELECT MIN(date)
  FROM met
);

-- Find the top 10 countries with the most pieces in the collection.
SELECT country, COUNT(*)
FROM met
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- Find the categories HAVING more than 100 pieces.
SELECT category, COUNT(*)
FROM met
GROUP BY 1
HAVING COUNT(*) > 100;

-- Count the number of pieces where the medium contains ‘gold’ or ‘silver’
SELECT COUNT(*)
FROM met
WHERE medium = 'Gold' or medium = 'Silver'
ORDER BY 1 DESC;
