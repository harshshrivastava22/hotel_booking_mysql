🧭 Overview of the Project
Goal: Analyze booking patterns, occupancy rates, and revenue insights for hotels.

We’ll go through:

Database setup & data model

Data population (sample data)

Analytical SQL queries

Visual insights (optional: Python or Power BI)

Interpretation of results

🧩 Step 1: Database Schema

You already have the structure — let’s confirm and define relationships.

Tables :
1️⃣ hotels
| Column   | Type     | Description         |
| -------- | -------- | ------------------- |
| hotel_id | INT (PK) | Unique hotel ID     |
| name     | VARCHAR  | Hotel name          |
| city     | VARCHAR  | City name           |
| category | VARCHAR  | e.g. 3-star, 5-star |

2️⃣ customers
| Column  | Type     | Description        |
| ------- | -------- | ------------------ |
| cust_id | INT (PK) | Unique customer ID |
| name    | VARCHAR  | Customer name      |
| gender  | CHAR(1)  | M/F                |
| country | VARCHAR  | Customer’s country |

3️⃣ bookings
| Column        | Type          | Description                 |
| ------------- | ------------- | --------------------------- |
| booking_id    | INT (PK)      | Unique booking              |
| hotel_id      | INT (FK)      | Links to hotels             |
| cust_id       | INT (FK)      | Links to customers          |
| checkin_date  | DATE          | Check-in date               |
| checkout_date | DATE          | Check-out date              |
| total_amount  | DECIMAL(10,2) | Booking total               |
| room_type     | VARCHAR       | Single, Double, Suite, etc. |

🧾 hotel booking system (using sql)
/* 
===========================================================
📊 PROJECT: Hotel Booking Analytics
===========================================================
Author       : Harsh Shrivastava
Email        : shrivastavah35@gmail.com
GitHub       : 
Created On   : November 2025
Database     : MySQL (can be adapted for PostgreSQL / SQLite)

-----------------------------------------------------------
🧭 PROJECT GOAL:
Analyze hotel booking trends, occupancy rates, customer behavior, 
and revenue performance using SQL analytics.

-----------------------------------------------------------
📚 TABLES USED:
1. hotels(hotel_id, name, city, category)
2. customers(cust_id, name, gender, country)
3. bookings(booking_id, hotel_id, cust_id, checkin_date, checkout_date, total_amount, room_type)

-----------------------------------------------------------
📈 ANALYTICS INCLUDED:
✅ Occupancy rate by month and city  
✅ Average stay duration per customer  
✅ Revenue per available room (RevPAR)  
✅ Top visiting countries  
✅ Monthly revenue trends  
✅ Customer lifetime value (CLV)  
✅ Gender & country-wise spending patterns  
✅ Top hotels and loyal customers  

-----------------------------------------------------------
💡 INSIGHT USE CASES:
- Identify high-performing cities and hotels  
- Understand customer demographics and loyalty  
- Support marketing, pricing, and operations strategy  

===========================================================

🧾 Summary :

You now have:

Basic analytics: Occupancy, revenue, top countries

Intermediate metrics: Stay duration, average spend

Advanced insights: Customer lifetime value, gender patterns, seasonality


