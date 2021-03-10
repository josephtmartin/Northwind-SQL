--What is the cost after discount for each order?  Discounts should be applied as a percentage off.
SELECT o.OrderID, o.OrderDate, sum(od.Quantity * od.UnitPrice * (1 - Discount)) as OrderPrice
FROM Orders o
	join [Order Details] od
	on od.OrderID = o.OrderID
GROUP BY o.OrderID, o.OrderDate