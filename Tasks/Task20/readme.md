
# 📚 Library Database Management System

## 📖 Overview
This project is an individual **Database Programming Assignment** that demonstrates the complete process of designing, implementing, querying, and analyzing a relational database system for a **Library Management System**.

It covers SQL database creation, data loading, querying, Python connectivity using SQLAlchemy, and data visualization using Pandas and Matplotlib.

---

## 🎯 Learning Objectives
By completing this project, I was able to:
- Design and create a relational database using PostgreSQL.
- Insert and manage data while maintaining referential integrity.
- Write and execute SQL queries for data analysis.
- Connect PostgreSQL with Python using `SQLAlchemy` and `psycopg2`.
- Translate SQL queries into Pandas operations.
- Create insightful visualizations from database data.

---

## 🏗️ Project Structure

```

Library-Database-Management-System/
│
├── SQL_Scripts/
│   ├── 01_create_tables.sql      # Database and table creation script
│   ├── 02_load_data.sql          # Data insertion script
│   ├── part_4_queries.sql            # All SQL queries (Q1 - Q15)
│
├── Python_Scripts/
│   ├── database_connection.py    # PostgreSQL connection setup
│   ├── part_5_pandas_queries.ipynb         # SQL-to-Pandas query translations
│   ├── part_6_visualizations.ipynb         # Data visualization scripts
│
├── Screenshots/
│   ├── Part1/                    # Table creation screenshots
│   ├── Part2/                    # Data loading screenshots
│   ├── Part3/                    # Query execution outputs
│   ├── Part4/                    # VSCode connection screenshots
│   ├── Part5/                    # Pandas query outputs
│   └── Part6/                    # Visualization charts
│
├── REPORT.pdf                    # Final project report
└── README.md                     # Project documentation (this file)

````

---

## 🧱 Database Schema

### Tables:
1. **Authors** – Stores author information.  
2. **Departments** – Contains library departments.  
3. **LibraryStaff** – Tracks staff working in different departments.  
4. **Members** – Contains library member details and membership type.  
5. **Books** – Stores book details including author, genre, and availability.  
6. **BorrowHistory** – Tracks book borrow and return transactions.  
7. **BookOrders** – Records book orders and supplier information.

---

## ⚙️ Setup Instructions

### 1️⃣ Database Creation
1. Open **pgAdmin** or **VSCode PostgreSQL extension**.  
2. Run the following:
   ```sql
   CREATE DATABASE library_db;
   \c library_db
````

3. Execute the `01_create_tables.sql` file to create all tables.

---

### 2️⃣ Data Loading

Run all the `sql codes in load_data` file to insert at least 15 sample records into each table.

---

### 3️⃣ Query Execution

Execute `part_4_queries.sql` to run and verify all required SQL queries (Q1 – Q15).

---

## 🐍 Python Connection

Example code to connect PostgreSQL to Python using **SQLAlchemy**:

```python
import pandas as pd
from sqlalchemy import create_engine
from urllib.parse import quote_plus

USER = "postgres"
PASS = quote_plus("@user56") 
HOST = "localhost"
PORT = "5432"
DB = "library_db"

engine = create_engine(f'postgresql://{USER}:{PASS}@{HOST}:{PORT}/{DB}')

df_books = pd.read_sql("SELECT * FROM Books", engine)
df_authors = pd.read_sql("SELECT * FROM Authors", engine)

print(df_books.head())
print(df_authors.head())
```

This connection allows me to query data directly from the PostgreSQL database using Pandas.

---

## 📊 Visualizations

Created using **Matplotlib** and **Seaborn**:

1. 📘 **Bar Chart** – Top 10 authors by number of books written
2. 👥 **Pie Chart** – Distribution of members by membership type
3. 📈 **Line Graph** – Monthly borrowing trends over time
4. 📚 **Horizontal Bar Chart** – Book genres by total available copies
5. 📦 **Stacked Bar Chart/Heatmap** – Book orders by fulfillment status and supplier

Each visualization includes labels, legends, and interpretations for clarity.

---

## 💡 Insights Summary

* Premium members form the largest portion of total memberships.
* Certain authors consistently publish books that are more frequently borrowed.
* Borrowing trends fluctuate throughout the year, peaking during academic sessions.
* A few suppliers handle most of the order fulfillments.
* Some members remain inactive for long periods, showing opportunities for re-engagement.

---

## 🧩 Tools and Technologies

* **PostgreSQL** – Relational database system
* **VSCode** – SQL execution and management
* **SQLAlchemy / psycopg2** – Database connectivity in Python
* **Pandas** – Data manipulation and analysis
* **Matplotlib / Seaborn** – Data visualization

---

## 🚀 How to Run

1. Create the database and tables using `01_create_tables.sql`.
2. Load sample data with `02_load_data.sql`.
3. Run SQL queries or execute Python scripts to analyze data.
4. Generate visualizations using `visualizations.ipynb`.

---

## 👩‍💻 Author

**Name:** Blessing James
**Project:** Library Database Management System (Individual Assignment)
**Course:** AI Engineering
**Year:** 2025

---

## 📚 References

* [PostgreSQL Documentation](https://www.postgresql.org/docs/)
* [Pandas Documentation](https://pandas.pydata.org/docs/)
* [SQLAlchemy Documentation](https://docs.sqlalchemy.org/)
* [Matplotlib Gallery](https://matplotlib.org/stable/gallery/)

---

**© 2025 Blessing James – Library Database Management System Assignment**


