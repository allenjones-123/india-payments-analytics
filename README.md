# India UPI & Fintech Payments Analytics Platform

A production-style analytics project built to simulate how modern data teams transform raw financial data into actionable insights using dbt, Snowflake, and Power BI.

## Project Overview

This project analyzes India’s UPI ecosystem across:

📈 Transaction Volume & Value Growth
📱 App Market Share Trends
🏦 Financial Inclusion (PMJDY Accounts)
🌍 State-wise Banking Penetration

The goal is to demonstrate end-to-end analytics engineering + business intelligence capabilities.

## Architecture
<img width="711" height="1001" alt="ARCHITECTURE_DIAGRAM drawio" src="https://github.com/user-attachments/assets/5ae563fb-b98c-4405-8c7e-a103c039e480" />

### Key Components:
Snowflake → Data warehouse
dbt → Transformation + modeling
Power BI → Visualization layer

### Tech Stack
Layer	                   Tool
Storage	              Snowflake
Transformation	         dbt
Visualization	        Power BI
Language	               SQL
Version Control	          Git

## Data Models
### 🔹 Staging Layer
stg_rbi_data
stg_upi_apps
stg_pmjdy

### 🔹 Mart Layer
upi_growth_trend
app_market_share
pmjdy_summary
financial_inclusion_impact


## Data Quality (dbt Tests)

Implemented key data validations:

✔️ not_null checks on critical fields
✔️ unique constraints (e.g., month)
✔️ Integrity validation across models

👉 Ensures production-grade reliability.

## Dashboard Features
### 1. UPI Growth Overview
Total Volume & Value KPIs
Monthly Growth Trends
Rolling Growth Analysis

### 2. Market Share Analysis
App-wise dominance (Google Pay, PhonePe, etc.)
Market share evolution over time
Top app ranking

### 3. Financial Inclusion
PMJDY accounts by state
Contribution % by region
Relationship between banking access & transactions

## Key Business Insights
📈 UPI shows strong exponential growth with periodic corrections
🏆 Market dominated by few players (Google Pay, PhonePe)
🌍 Financial inclusion correlates with transaction adoption
⚠️ Growth volatility suggests sensitivity to policy or macro changes

<img width="1322" height="725" alt="image" src="https://github.com/user-attachments/assets/6729f9f7-c28d-4580-801c-16477ed32489" />
<img width="1327" height="745" alt="image" src="https://github.com/user-attachments/assets/d2e9f398-1b5d-464b-9c0a-02aa788dd5b6" />
<img width="1323" height="742" alt="image" src="https://github.com/user-attachments/assets/8701ddf2-efb2-422b-9770-d912bdcf525c" />


## What This Project Demonstrates
End-to-end data pipeline thinking
Strong SQL + dbt modeling skills
Ability to translate data into business insights
Experience with analytics engineering workflows

## How to Run
#### install dependencies
pip install dbt-snowflake

#### run models
dbt run

#### test data quality
dbt test

#### generate docs
dbt docs generate
dbt docs serve


## Future Improvements
Add Airflow orchestration
Automate data ingestion
Introduce incremental models
Add cost optimization (FinOps layer)

## Author

Alan James (Data & Analytics Intern)

Snowflake | dbt | Power BI
Focus: Analytics Engineering & Data Platforms






