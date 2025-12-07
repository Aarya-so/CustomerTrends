# 🛒 Customer Purchase Behavior Analysis  
### 🚀 With Currency Exchange API Integration, Python ETL, MySQL Storage & Power BI Dashboard

This project analyzes customer purchase behavior using a structured dataset enriched through **real-time Currency Exchange API**, processed in **Python**, stored in **MySQL**, and visualized in **Power BI**.

It demonstrates:
- Data cleaning & preprocessing  
- API integration using Python `requests`  
- Currency conversion logic  
- SQL database creation & table loading  
- Business insights using visual dashboards  

---

## 📁 **Project Overview**

Many businesses operate globally and deal with customers who pay in multiple currencies.  
This project enriches a customer dataset by converting purchase amounts into **USD and INR** using live API data, enabling deeper financial analysis.

The pipeline includes:

1. **Python (Jupyter Notebook)**  
   - Data loading  
   - Cleaning & transformation  
   - Calling a **Currency Exchange API**  
   - Creating new columns:  
     - `purchase_amount_usd`  
     - `purchase_amount_inr`  
   - Merging API data with customer dataset  
   - Uploading the final dataset to MySQL  

2. **MySQL Database**  
   - Stores cleaned customer data  
   - Used for SQL analysis  
   - Connected directly to Power BI  

3. **Power BI Dashboard**  
   - Visual insights into customer spending patterns  
   - Category analysis  
   - Seasonality  
   - Demographics  
   - Purchase behavior  
   - Currency-based revenue comparison (USD vs INR)

---

## 🔧 **Tech Stack**

| Component | Technology |
|----------|------------|
| Backend Processing | Python, Pandas, Requests |
| API | Currency Exchange API |
| Database | MySQL (via SQLAlchemy & pymysql) |
| Visualization | Power BI Desktop |
| Environment | Jupyter Notebook |

---

## 🌐 **Currency Exchange API Integration**

The project integrates a real-time/external API to fetch exchange rates:

API features used:
- Fetch USD/INR exchange rate
- Apply conversion formula to original purchase amount
- Add new fields to dataset:
  - `purchase_amount_usd`
  - `purchase_amount_inr`
  - `conversion_rate_used`

Example code snippet:

```python
import requests

API_KEY = "48e3ef6961aba5523394ff60"

url = f"https://v6.exchangerate-api.com/v6/{API_KEY}/latest/USD"

response = requests.get(url).json()

print(response)  # Debug to see what you get

rates = response['conversion_rates']

df['Purchase_EUR'] = df['purchase_amount'] * rates['EUR']
df['Purchase_INR'] = df['purchase_amount'] * rates['INR']
df['Purchase_GBP'] = df['purchase_amount'] * rates['GBP']

#Output will show Currency exchange of various countries

