# 📊 Life Expectancy Forecasting Project
### Global Gender Gap Analysis | Machine Learning | Time Series | MySQL | Power BI

---

## Tools Used

| Tool | What I Used It For |
|------|--------------------|
| Python | Data wrangling, ML modeling, ARIMA forecasting |
| Pandas | Wide-to-long transformation, merging male/female datasets |
| Scikit-learn | Random Forest Regression — predicting life expectancy by country and year |
| Statsmodels | ARIMA time series forecasting |
| Matplotlib / Seaborn | EDA visualizations, predicted vs actual plots |
| MySQL + SQLAlchemy | Stored cleaned data in a relational database for live BI connection |
| Power BI | Interactive multi-visual dashboard connected directly to MySQL |

---

## Questions This Project Answers

**1. Where is the gender gap in life expectancy largest?**
→ Top 10 countries by gap identified for latest available year (2022)

**2. Is the global gender gap closing or widening over time?**
→ Trend analysis from 1960–2022 across 200+ countries

**3. Can we predict life expectancy for any country and year?**
→ Random Forest model using Year and Country as features — MAE of 0.68 years, R² = 0.98

**4. Where is life expectancy headed in the next 15 years?**
→ ARIMA forecasts for contrasting countries showing different trajectory patterns

**5. Which countries rank highest and lowest globally?**
→ Country-level rankings for both male and female life expectancy

---
<img width="1567" height="795" alt="image" src="https://github.com/user-attachments/assets/f418e3be-a6be-46b8-8b3a-9dcdc317531d" />

---

## Note on R² = 0.98
Life expectancy is a slow-moving, highly structured time series. Year and Country alone explain ~98% of variance because countries follow stable long-term trends. MAE of 0.68 years means predictions are within 8 months on average — meaningful accuracy for policy planning purposes.

---

## MySQL Setup
The MySQL pipeline requires a local MySQL instance.
Set your password as an environment variable before running:
- Windows: `set DB_PASSWORD=yourpassword`
- Mac/Linux: `export DB_PASSWORD=yourpassword`

## 🗂️ Dataset
- Source: Cleaned from World Bank life expectancy datasets (separated by Male and Female)
- Shape: ~17,000 rows per gender, covering 200+ countries over 60+ years
- Format: Long-format with columns for Country, Country Code, Year, and Life Expectancy

 
*Links to dataset*: <br/>

Life expectancy at birth, male (years)- https://data.worldbank.org/indicator/SP.DYN.LE00.MA.IN?end=2022&start=2013 <br/>

Life expectancy at birth, female (years) - https://data.worldbank.org/indicator/SP.DYN.LE00.FE.IN <br/>
