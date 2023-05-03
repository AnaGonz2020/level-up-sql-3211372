-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT COUNT(Loans.LoanID) AS LoanCount, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
Group BY Loans.PatronID
ORDER BY LoanCount ASC
Limit 10;