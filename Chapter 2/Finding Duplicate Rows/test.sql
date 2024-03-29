SELECT Customer.CustomerID,
  Customer.FirstName,
  Customer.LastName,
  COUNT(Orders.CustomerID) as NUM_ORDERS
FROM Customer
  JOIN Orders ON Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  Customer.FirstName,
  Customer.LastName
ORDER BY NUM_ORDERS DESC

