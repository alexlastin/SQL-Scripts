

SELECT TotalQuantity, Product.Name FROM
(SELECT ProductID, SUM(Quantity) as TotalQuantity FROM Sales GROUP BY ProductID) AS AggregateSales
LEFT JOIN Product on AggregateSales.ProductID = Product.id