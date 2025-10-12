import pandas as pd
from sqlalchemy import create_engine
USER = "postgres"
PASS = "@user56"
HOST = "localhost"
PORT = "5432"
DB = "library_db"

engine = create_engine(f'postgresql://{USER}:{PASS}@{HOST}:{PORT}/{DB}')