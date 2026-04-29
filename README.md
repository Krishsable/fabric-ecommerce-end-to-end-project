# 🚀 End-to-End Data Engineering Project using Microsoft Fabric

## 📌 Project Overview

This project demonstrates an end-to-end data engineering pipeline using Microsoft Fabric, covering data ingestion, transformation, and analytics using real-world dirty data.

---

## 🏗️ Architecture (High Level)

* Source: CSV files (E-commerce dataset)
* Ingestion: Data Pipeline (Blob → Lakehouse)
* Storage: Lakehouse (Raw/Bronze layer)
* Processing: PySpark (planned - Silver layer)
* Analytics: SQL + Real-time dashboards (planned)

---

## 📊 Dataset

Brazilian E-Commerce Dataset (Olist)

---

## 🚀 Day 1 — Data Ingestion

* Ingested multiple CSV files into Lakehouse
* Created raw tables:

  * orders_raw
  * customers_raw
  * order_items_raw
  * products_raw
  * payments_raw

---

## ⚠️ Data Quality Issues Identified

* Duplicate records in orders
* Missing values in payment_value
* Negative values in payment_value
* Inconsistent date formats
* Missing customer_id in some records

---

## 🧠 Engineering Approach

* Raw layer stores data **as-is** (schema kept as string intentionally)
* Data cleaning and type casting will be handled in the **Silver layer**
* Designed with **Medallion Architecture (Bronze → Silver → Gold)**

---

## 📸 Project Proof

Screenshots available in:

* `screenshots/pipeline/`
* `screenshots/lakehouse/`
* `screenshots/sql/`

---

## 🛠️ Tools & Technologies

* Microsoft Fabric
* Data Pipeline
* Lakehouse
* SQL
* PySpark (upcoming)

---

## 🔜 Next Steps

* Data cleaning & transformation (Silver layer)
* Implement error handling in pipelines
* Add incremental loading
* Build Gold layer KPIs
* Implement CI/CD using GitHub & Azure DevOps

---

## 🚀 Day 2 — Bronze to Silver Transformation

### 🔹 Data Engineering Work

* Created Bronze layer using shortcuts from centralized raw data
* Implemented Silver layer transformations using PySpark Notebook
* Performed data cleaning and validation:

  * Removed null and invalid values
  * Filtered negative payment values
  * Handled duplicate records
  * Standardized date formats using explicit parsing

---

### 🛠️ Tools & Technologies Used

* Microsoft Fabric Lakehouse
* PySpark (Notebook)
* OneLake Shortcuts
* SQL Analytics Endpoint (for validation queries)

---

### 📸 Proof of Work

* Notebook transformations (data loading, cleaning, casting)
* Silver tables preview
* Validation queries ensuring data quality
* Screenshots available in:

  * `screenshots/notebook/`
  * `screenshots/silver/`

---

### 🧠 Key Learnings

* Importance of keeping raw data unchanged (ELT approach)
* Handling dirty data using explicit transformations
* Managing schema using controlled casting instead of inference
* Validating data after transformation to ensure quality


## 🚀 Day 3 — Data Enrichment & Joins

### 🔹 Data Engineering Work

* Performed multi-table joins across orders, customers, payments, and order items
* Aggregated payment data at order level
* Created enriched Silver table with business-ready columns
* Applied null handling and validation checks

### 🛠️ Tools & Technologies Used

* Microsoft Fabric Lakehouse
* PySpark (Notebook)
* SQL (validation)

### 📸 Proof of Work

* Join transformations
* Aggregation logic
* Final enriched dataset
* Screenshots available in:

  * `screenshots/lakehouse/`
  * `screenshots/notebook/`
  * `screenshots/sql_checks/`

### 🧠 Key Learnings

* Importance of join strategies (inner vs left)
* Building analytics-ready datasets from multiple sources


⭐ This project is being built as part of my Data Engineering learning journey.
