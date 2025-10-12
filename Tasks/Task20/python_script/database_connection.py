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
# print(df_authors.head())
