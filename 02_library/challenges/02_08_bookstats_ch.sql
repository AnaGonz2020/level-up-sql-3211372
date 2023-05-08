-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Published, COUNT(DISTINCT(Title)) AS PublishCount
FROM Books
GROUP By Published
ORDER BY Published ASC;
