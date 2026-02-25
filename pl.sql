# Stored the cleaned merged dataset in a relational database so Power BI could connect directly for live dashboard refresh rather than reading from a flat file every time.

import sqlalchemy
import os
from dotenv import load_dotenv

load_dotenv()  # reads from .env file — never hardcode credentials

# .env file should contain: DB_PASSWORD=yourpassword .env must be in .gitignore — never push it to GitHub

DB_PASSWORD = os.environ.get("DB_PASSWORD")
DB_USER     = os.environ.get("DB_USER", "urvi_user")
DB_HOST     = os.environ.get("DB_HOST", "localhost")
DB_PORT     = os.environ.get("DB_PORT", "3306")
DB_NAME     = os.environ.get("DB_NAME", "life_expectancy_db")

engine = sqlalchemy.create_engine(
    f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
)

# Save cleaned merged data to MySQL
rows_written = merged_data.to_sql(
    "life_expectancy",
    con=engine,
    if_exists="replace",
    index=False
)

print(f"✅ {rows_written} rows written to MySQL table 'life_expectancy'")
print(f"   Database: {DB_NAME}")
print(f"   Table:    life_expectancy")
print(f"   Columns:  {list(merged_data.columns)}")
```
