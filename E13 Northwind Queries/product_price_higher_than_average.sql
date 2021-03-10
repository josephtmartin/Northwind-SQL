--Which products have a price that is higher than average?
SELECT p.ProductName, p.UnitPrice
FROM Products p
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products)
GROUP BY p.ProductName, p.UnitPrice