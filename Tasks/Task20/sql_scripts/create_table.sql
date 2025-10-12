CREATE TABLE Authors(
author_id int PRIMARY KEY,
author_name VARCHAR NOT NULL,
country_of_origin VARCHAR NOT NULL,
number_of_books_written int

);

CREATE TABLE Books(
book_id int PRIMARY KEY,
title VARCHAR,
author_id int REFERENCES Authors(author_id),
genre VARCHAR,
date_of_publication DATE,
publisher varchar,
isbn varchar unique,
language_ varchar,
available_copies int,
age_rating varchar
)
DROP TYPE IF EXISTS fulfilment_status CASCADE;

CREATE TYPE fulfilment_status as ENUM('processing','pending','fulfilled');
CREATE TABLE BookOrders(
order_id int PRIMARY KEY,
order_date date,
book_id int REFERENCES Books(book_id),
cost decimal,
quantity int,
supply_date date,
fulfilment_status fulfilment_status DEFAULT 'processing',
supplier_name varchar not null
)

CREATE TYPE gender as ENUM ('male','female');
CREATE TYPE type_of_membership as ENUM ('student', 'standard', 'premium');
CREATE TYPE status as ENUM ('active', 'suspended');
CREATE TABLE Members(
member_id int PRIMARY KEY,
member_name varchar not null,
gender gender not null,
email_address varchar not null,
phone_number varchar not null,
address varchar not null,
age int,
type_of_membership type_of_membership DEFAULT 'student',
date_of_membership date,
status status DEFAULT 'active'
)

CREATE TABLE BorrowHistory(
borrowed_id int PRIMARY KEY,
book_id int REFERENCES Books(book_id),
member_id int REFERENCES Members(member_id),
borrow_date date,
return_date date
)
CREATE TABLE Departments(
dept_id int PRIMARY KEY,
department_name varchar not null,
manager_name varchar not null
)
CREATE TYPE gender as ENUM ('male','female');

CREATE TABLE LibraryStaff(
staff_id int PRIMARY KEY,
staff_name varchar not null,
job_title varchar not null,
dept_id int REFERENCES Departments(dept_id),
gender gender,
address varchar not null,
phone_number varchar not null,
hire_date date,
manager_id int
)




