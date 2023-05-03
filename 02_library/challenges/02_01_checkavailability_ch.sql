-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT COUNT(Books.Title) as BookCount
FROM Books
WHERE Title = 'Dracula';

SELECT COUNT(Books.Title)
FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
WHERE Books.Title = 'Dracula'
  AND Loans.ReturnedDate IS NULL;

SELECT
  (SELECT COUNT(Books.Title)
    FROM Books
    WHERE Books.Title = 'Dracula') - -- This is a subtraction
  (SELECT COUNT(Books.Title)
    FROM Books
    JOIN Loans ON Books.BookID = Loans.BookID
    WHERE Books.Title = 'Dracula'
    AND Loans.ReturnedDate IS NULL)
  AS AvailableCopies;