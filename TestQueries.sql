/* This script populates the Testing of the Gift Horse LLC Database
Written by Bashier Elfergani on October 18 2018*/

-- Test Query 1
SELECT 
ProdID, ProdName, ProdDesc, ProdPrice
FROM Products
ORDER BY ProdID 

-- Test Query 2
SELECT ProdID, ProdName, ItemID, ItemDesc, ItemQty
FROM Products INNER JOIN BasketContents USING (ProdID)
INNER JOIN Items USING (ItemID)
ORDER BY ProdID ASC, ItemID DESC


-- Test Query 3
SELECT 
OrdID, OrdDate, CustFname, CustLname, ShipAddr, ShipCity, ShipDate, ShipCompany, ProdID, ProdName, ProdQty, UnitPrice
FROM Customers INNER JOIN Orders USING (CustID)
INNER JOIN OrderLine USING (OrdID)
INNER JOIN Products USING (ProdID)
WHERE OrdID IN ('100500' , '100555', '100422')


-- Test Query 4
SELECT VendCompany, VendCIty, ItemID, ItemPrice
FROM Vendors INNER JOIN Items USING (VendID)
ORDER BY VendCIty, VendCompany, ItemID

-- End of Script
