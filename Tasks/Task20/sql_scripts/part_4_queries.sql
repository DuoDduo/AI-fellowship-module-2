-- Question 1
-- **Q1.** List all books published after 2015 along with their authors' names.
SELECT 
  books.title,
  authors.author_name,
   authors.author_id,
  books.date_of_publication

FROM 
  books
JOIN 
  authors
ON 
  books.author_id = authors.author_id
WHERE EXTRACT(YEAR FROM books.date_of_publication) > 2015;



-- **Q2.** Find all members who joined in the last 2 years and have a 'Premium' membership.

SELECT 
members.member_id,
members.member_name,
members.date_of_membership,
members.status,
members.type_of_membership

FROM members

WHERE EXTRACT(YEAR FROM members.date_of_membership) > 2021 and type_of_membership = 'premium' 

ORDER BY date_of_membership;

-- **Q3.** Display the total number of books written by each author, ordered by count (descending).
SELECT 
    author_id,
    author_name,
    number_of_books_written
FROM 
    Authors
ORDER BY 
    number_of_books_written DESC;

-- **Q4.** Show all currently borrowed books (books with no return date) along with the member's name and borrow date.

SELECT 
borrowhistory.member_id, members.member_name,books.title,books.book_id,borrowhistory.borrow_date, borrowhistory.return_date
FROM BorrowHistory
JOIN Members
ON members.member_id = borrowhistory.member_id
JOIN Books
ON books.book_id = borrowhistory.book_id

WHERE borrowhistory.return_date IS NULL;


-- **Q5.** List all library staff members working in the 'Circulation' department.
SELECT * FROM librarystaff 
JOIN Departments
ON departments.dept_id = librarystaff.dept_id
WHERE department_name = 'Circulation';


--Q6.** Calculate total cost of all book orders placed in 2024, grouped by fulfillment status
SELECT bookorders.fulfilment_status,
SUM(cost) AS total_cost
FROM BookOrders
WHERE EXTRACT(YEAR FROM order_date) = 2024
GROUP BY fulfilment_status
ORDER BY total_cost DESC;


-- **Q7.** Find the top 5 most borrowed books along with the number of times each has been borrowed.
SELECT
    books.title,
    books.book_id,
   
    COUNT( borrowhistory.book_id) AS times_borrowed
FROM 
    BorrowHistory
JOIN 
    Books ON books.book_id =  borrowhistory.book_id
GROUP BY 
    books.book_id, books.title
ORDER BY 
    times_borrowed DESC
LIMIT 5;


-- **Q8.** Identify members who have never borrowed a book.

SELECT * FROM members
LEFT JOIN borrowhistory
ON members.member_id = borrowhistory.member_id
WHERE borrowhistory.member_id IS NULL;


-- **Q9.** Show the average number of available copies per genre.
SELECT 
    books.genre,
    ROUND(AVG(books.available_copies), 2) AS avg_available_copies
FROM 
    Books
GROUP BY 
    books.genre
ORDER BY 
    avg_available_copies ASC;


-- -- **Q10.** List all books that are currently overdue (borrowed more than 30 days ago with no return date).
SELECT 
    books.book_id,
    books.title,
    members.member_name,
    borrowhistory.borrow_date,
	borrowhistory.return_date
FROM 
    BorrowHistory
JOIN 
    Books ON borrowhistory.book_id = books.book_id
JOIN 
    Members ON borrowhistory.member_id = members.member_id
WHERE 
    borrowhistory.return_date IS NULL
    AND borrowhistory.borrow_date < DATE '2024-03-30' - INTERVAL '30 days'
ORDER BY 
    borrowhistory.borrow_date ASC;


	-- **Q11.** Show each department's staff count and the average tenure (in years) of staff in that department.
SELECT 
    departments.department_name,
    COUNT(librarystaff.staff_id) AS staff_count,
    ROUND(AVG(EXTRACT(YEAR FROM AGE(CURRENT_DATE, librarystaff.hire_date))), 2) AS average_tenure_years
FROM 
    LibraryStaff
JOIN 
    Departments
ON librarystaff.dept_id = departments.dept_id
GROUP BY 
    departments.department_name
ORDER BY 
    staff_count DESC;


-- **Q12.** Generate a report showing monthly borrowing trends for the past year (count of books borrowed per month)
SELECT 
    TO_CHAR(borrow_date, 'Month') AS month_name,
    EXTRACT(YEAR FROM borrow_date) AS YEAR,
    COUNT(*) AS total_borrowed
FROM 
    BorrowHistory
GROUP BY 
    YEAR, month_name, EXTRACT(MONTH FROM borrow_date)
ORDER BY 
    YEAR, EXTRACT(MONTH FROM borrow_date);


-- -- **Q13.** Find authors whose books have been borrowed more than 10 times in total, along with their most popular book.
SELECT 
authors.author_name,
books.title AS most_popular_book,
COUNT(borrowhistory.book_id) AS total_borrows
FROM 
    Authors
JOIN 
    Books ON authors.author_id = books.author_id
JOIN 
    BorrowHistory ON books.book_id = borrowhistory.book_id
GROUP BY 
    authors.author_name, books.title
HAVING 
    COUNT(borrowhistory.book_id) > 10
ORDER BY 
    total_borrows DESC;


-- Q14. Calculate the total revenue from book orders per supplier, showing only suppliers with orders exceeding $5,000.

SELECT 
    supplier_name,
    SUM(cost * quantity) AS total_revenue
FROM 
    BookOrders
GROUP BY 
    supplier_name
HAVING 
    SUM(cost * quantity) > 5000
ORDER BY 
    total_revenue DESC;


-- **Q15.** Create a complex query that identifies "inactive" members (those who haven't borrowed a book in the last 6 months) who have a Premium membership.
SELECT 
    members.member_id,
    members.member_name,
    members.type_of_membership,
	members.status
FROM 
    Members
LEFT JOIN 
    BorrowHistory ON members.member_id = borrowhistory.member_id
WHERE 
    members.type_of_membership = 'premium'
	AND (borrowhistory.borrow_date IS NULL OR borrowhistory.borrow_date < DATE '2024-03-30' - INTERVAL '6 months')
GROUP BY 
    members.member_id, members.member_name,members.type_of_membership





	





