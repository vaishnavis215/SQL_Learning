-- logical operators--
select * from products;

-- AND operators 
select name,stock,price
 from 
 products 
 where
 price>200 AND stock<100;
 
 -- OR operator
 SELECT 
    name, stock, price
FROM
    products
WHERE
    price < 100 OR stock > 100;
    
    -- NOT operator
    SELECT 
    name, stock, price
FROM
    products
WHERE
   NOT price = 300 ;
 