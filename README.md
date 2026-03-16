# 📊 Marketing Campaign Analytics Project
### End-to-End Data Analysis using SQL, Excel, and Power BI

## 📌 Project Overview
This project analyzes marketing campaign performance by transforming raw campaign data into meaningful business insights. The goal was to identify which marketing channels, regions, and product campaigns drive the highest customer engagement and revenue.

The project follows a complete **data analytics workflow**, including data cleaning, SQL analysis, KPI creation using DAX, and building an interactive dashboard.

**Tools used:** SQL, Microsoft Excel, Power BI.

---

## 🎯 Project Objectives
- Clean and prepare raw marketing campaign data
- Analyze campaign performance across marketing channels
- Identify regions with the highest customer engagement
- Measure marketing efficiency using response rate and ROI
- Build an interactive dashboard to support business decision-making

---

## 📂 Dataset Description

The dataset contains information about marketing campaigns including target customers, responses, campaign cost, and revenue generated.

| Column | Description |
|------|-------------|
| Campaign_ID | Unique identifier for each campaign |
| Campaign_Name | Name of the marketing campaign |
| Channel | Marketing channel used |
| Region | Geographic region targeted |
| Customer_Segment | Customer segment targeted |
| Product_Type | Product promoted in the campaign |
| Customers_Targeted | Number of customers targeted |
| Customers_Responded | Number of customers who responded |
| Campaign_Cost | Total campaign cost |
| Revenue_Generated | Revenue generated from campaign |

---

# 🧹 Step 1 — Data Cleaning (Excel)

The raw dataset was first cleaned using **Microsoft Excel**.

### Tasks Performed
- Checked for missing values  
- Removed duplicate campaign records  
- Standardized categorical values (channels, regions, product types)  
- Ensured proper formatting of numeric columns  
- Validated dataset consistency  

### Example Formula Used

```excel
=COUNTBLANK(range)
```

### Calculated Metrics Created

**Response Rate**

```
Customers_Responded / Customers_Targeted
```

**Cost per Acquisition**

```
Campaign_Cost / Customers_Responded
```

**ROI**

```
(Revenue_Generated - Campaign_Cost) / Campaign_Cost
```

These steps ensured the dataset was **clean and ready for analysis**.

---

# 🗄 Step 2 — Data Exploration Using SQL

After cleaning the dataset, SQL queries were used to analyze campaign performance and validate metrics.

### Example Queries

**Total Revenue Generated**

```sql
SELECT SUM(Revenue_Generated) AS Total_Revenue
FROM campaigns;
```

**Campaign Performance by Channel**

```sql
SELECT Channel,
       SUM(Customers_Responded) AS Total_Responses
FROM campaigns
GROUP BY Channel
ORDER BY Total_Responses DESC;
```

**Regional Campaign Performance**

```sql
SELECT Region,
       SUM(Customers_Responded) AS Total_Responses
FROM campaigns
GROUP BY Region;
```

SQL analysis helped identify **high-performing channels and regions** before visualization.

---

# 📊 Step 3 — Data Modeling & DAX Measures (Power BI)

The dataset was imported into **Power BI** where additional calculations were created using **DAX measures**.

### Key Measures

**Total Revenue**

```DAX
Total Revenue = SUM(campaign[Revenue_Generated])
```

**Total Responses**

```DAX
Total Responses = SUM(campaign[Customers_Responded])
```

**Total Campaign Cost**

```DAX
Total Cost = SUM(campaign[Campaign_Cost])
```

**Response Rate**

```DAX
Response Rate =
DIVIDE(
    SUM(campaign[Customers_Responded]),
    SUM(campaign[Customers_Targeted])
)
```

**Return on Investment (ROI)**

```DAX
ROI =
DIVIDE(
    SUM(campaign[Revenue_Generated]) -
    SUM(campaign[Campaign_Cost]),
    SUM(campaign[Campaign_Cost])
)
```

These measures enabled **dynamic KPI tracking inside the dashboard**.

---

# 📈 Step 4 — Interactive Dashboard Development (Power BI)

An interactive **Marketing Campaign Analytics Dashboard** was developed to visualize key performance metrics.

### Dashboard Components

**KPI Summary**
- Total Revenue
- Total Responses
- Response Rate
- Total Campaign Cost
- ROI

**Visualizations**
- Campaign Performance by Channel
- Customer Response by Region
- Campaign Cost vs Revenue
- Revenue by Product Type

**Interactive Filters**
- Region
- Channel
- Customer Segment
- Product Type

These filters allow users to explore campaign performance across multiple dimensions.

---

# 🔍 Key Insights

From the analysis:

- **Social Media campaigns generated the highest customer responses**, indicating strong digital engagement.
- The **East region showed the highest campaign engagement**, suggesting stronger marketing performance in that region.
- **Investment Plan campaigns generated the highest revenue** among product categories.
- Marketing campaigns achieved an **ROI of approximately 7.9×**, indicating efficient marketing spending.

---

# 📸 Dashboard Preview

![Dashboard Screenshot](images/dashboard.png)

---

# 🛠 Tools & Technologies

- SQL  
- Microsoft Excel  
- Microsoft Power BI  
- DAX (Data Analysis Expressions)

---

# 🚀 Skills Demonstrated

- Data Cleaning
- Data Transformation
- SQL Querying
- KPI Design
- Data Visualization
- Dashboard Development
- Marketing Analytics

---

# 👩‍💻 Author

**Anjali Pandey**  
Aspiring Data Analyst | Power BI | SQL | Data Analytics

---

⭐ If you found this project useful, feel free to star the repository.# Marketing-Campaign-Analytics
