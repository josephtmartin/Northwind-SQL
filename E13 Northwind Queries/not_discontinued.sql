--What products are currently for sale (not discontinued)?
SELECT * 
FROM Products p
WHERE p.Discontinued = 0