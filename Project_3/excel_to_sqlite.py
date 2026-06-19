import pandas as pd
import sqlite3

df = pd.read_excel("Dataset for Data Analytics 3.xlsx")

conn = sqlite3.connect("project3.db")

df.to_sql(
    "orders",
    conn,
    if_exists="replace",
    index=False
)

print("Database Created Successfully")

conn.close()