INSERT INTO LibraryStaff (
  staff_id, staff_name, job_title, dept_id, gender, address, phone_number, hire_date, manager_id
)
VALUES
  (1, 'Jennifer Walsh', 'Head Librarian', 1, 'female', '892 Library Lane Springfield IL', '-2555', '2018-01-15', NULL),
  (2, 'Mark Patterson', 'Assistant Librarian', 1, 'male', '445 Book Street Chicago IL', '-2556', '2019-03-10', 1),
  (3, 'Rebecca Foster', 'Children''s Librarian', 2, 'female', '678 Story Avenue Evanston IL', '-2557', '2020-06-22', 1),
  (4, 'Thomas Anderson', 'Reference Librarian', 3, 'male', '234 Research Drive Naperville IL', '-2558', '2021-01-08', 1),
  (5, 'Maria Gonzalez', 'Circulation Manager', 4, 'female', '567 Checkout Lane Aurora IL', '-2559', '2019-09-15', 1),
  (6, 'Kevin O''Brien', 'Technical Services Manager', 5, 'male', '123 Catalog Street Rockford IL', '-2560', '2020-11-03', 1),
  (7, 'Laura Mitchell', 'Youth Services Coordinator', 2, 'female', '789 Teen Avenue Peoria IL', '-2561', '2021-04-18', 3),
  (8, 'Daniel Rodriguez', 'IT Support Specialist', 6, 'male', '456 Technology Road Joliet IL', '-2562', '2022-02-01', 1),
  (9, 'Carol Williams', 'Acquisitions Librarian', 5, 'female', '321 Purchase Street Waukegan IL', '-2563', '2019-07-12', 6),
  (10, 'Paul Johnson', 'Security Guard', 7, 'male', '654 Safety Lane Schaumburg IL', '-2564', '2021-08-25', 1),
  (11, 'Susan Miller', 'Branch Manager', 1, 'female', '987 Branch Road Springfield IL', '-2565', '2017-05-10', 1),
  (12, 'Robert Davis', 'Interlibrary Loan Coordinator', 3, 'male', '147 Exchange Street Chicago IL', '-2566', '2020-03-14', 4),
  (13, 'Patricia Wilson', 'Adult Programming Librarian', 8, 'female', '258 Event Avenue Evanston IL', '-2567', '2021-09-07', 1),
  (14, 'James Brown', 'Maintenance Supervisor', 7, 'male', '369 Repair Drive Naperville IL', '-2568', '2018-12-20', 1),
  (15, 'Linda Garcia', 'Community Outreach Coordinator', 8, 'female', '741 Public Lane Aurora IL', '-2569', '2020-08-11', 1),
  (16, 'Michael Martinez', 'Digital Services Librarian', 6, 'male', '852 Digital Street Rockford IL', '-2570', '2022-01-25', 8),
  (17, 'Barbara Taylor', 'Collection Development Specialist', 5, 'female', '963 Selection Avenue Peoria IL', '-2571', '2019-11-18', 6),
  (18, 'William Anderson', 'Evening Supervisor', 4, 'male', '159 Night Street Joliet IL', '-2572', '2021-06-03', 5),
  (19, 'Elizabeth Thomas', 'Senior Reference Librarian', 3, 'female', '357 Knowledge Drive Waukegan IL', '-2573', '2018-04-16', 4),
  (20, 'David Jackson', 'Systems Administrator', 6, 'male', '468 Network Lane Schaumburg IL', '-2574', '2020-10-29', 8),
  (21, 'Mary White', 'Cataloging Librarian', 5, 'female', '579 Index Street Springfield IL', '-2575', '2019-02-08', 6),
  (22, 'Charles Harris', 'Part-time Librarian', 1, 'male', '681 Flexible Avenue Chicago IL', '-2576', '2022-07-14', 2),
  (23, 'Lisa Clark', 'Special Collections Librarian', 3, 'female', '792 Archive Drive Evanston IL', '-2577', '2020-12-01', 4),
  (24, 'Christopher Lewis', 'Custodial Supervisor', 7, 'male', '814 Clean Street Naperville IL', '-2578', '2019-05-23', 14),
  (25, 'Sarah Robinson', 'Volunteer Coordinator', 8, 'female', '925 Service Lane Aurora IL', '-2579', '2021-03-17', 15);

SELECT * FROM LibraryStaff;
