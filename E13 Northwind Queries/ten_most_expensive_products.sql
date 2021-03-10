--What are our 10 most expensive products?
SELECT TOP 10 *
FROM Products p
ORDER BY p.UnitPrice DESC