--In which quarter in 1997 did we have the most revenue?
SELECT 
	TOP 1 Datepart(quarter, OrderDate) as QuarterNumber, 
	sum(od.UnitPrice * Quantity * (1-Discount)) as Revenue 
FROM Orders o
	join [Order Details] od
		on od.OrderID = o.OrderID
WHERE Year(OrderDate) = 1997
GROUP BY Datepart(quarter, OrderDate)
ORDER BY revenue DESC