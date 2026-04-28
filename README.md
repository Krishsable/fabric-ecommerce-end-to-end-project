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

⭐ This project is being built as part of my Data Engineering learning journey.
