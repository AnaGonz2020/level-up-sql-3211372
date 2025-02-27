-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

-- SELECT *
--FROM Customers
--WHERE Email = 'atapley2j@kinetecoinc.com'(
--SET ...

-- hOW TO STRUCTURE A SUBQUERY
INSERT INTO anniversary
(CustomerID, PartySize)
VALUES (
  (SELECT CustomerID
    FROM Customers
    WHERE Email = 'atapley2j@kinetecoinc.com'),
    4);

SELECT * FROM anniversary;

UPDATE anniversary
SET PartySize = 3
WHERE CustomerID = 92;
