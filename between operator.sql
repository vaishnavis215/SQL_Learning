-- special operators  between
SELECT 
    name, stock, price
FROM
    products
WHERE
    price BETWEEN 100 AND 500
        AND stock BETWEEN 200 AND 300
ORDER BY price
LIMIT 5;