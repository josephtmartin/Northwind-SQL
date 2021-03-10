--What is the undiscounted subtotal for each Order (identified by OrderID).
SELECT o.OrderID, sum(od.Quantity * od.UnitPrice) as OrderPrice
FROM Orders as o
	join [Order Details] od
	on od.OrderID = o.OrderID
GROUP BY o.OrderID