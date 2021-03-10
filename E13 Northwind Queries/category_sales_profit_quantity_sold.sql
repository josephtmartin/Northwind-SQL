--I need a list of sales figures broken down by category name.  Include the total $ amount sold over all time and the total number of items sold.
SELECT c.CategoryName, sum(od.UnitPrice * Quantity  * (1-Discount)) as Revenue, count(od.Quantity) as TotalAmountSold
FROM Products p
	join [Order Details] od 
		on p.ProductID = od.ProductID
	join Categories c
		on c.CategoryID = p.CategoryID
GROUP BY c.CategoryName 
ORDER BY revenue DESC