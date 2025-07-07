# **Simulating Transaction Flow and Reconciliation in a Fintech System  (PostgreSQL)**

Created by: Sylvia Imisi  
Simulating live transaction behavior in a fintech environment without a frontend or API.

## **Project Overview**

This project simulates how a Fintech company monitors and manages the flow of transactions across multiple payment channels, while reconciling them accurately with merchant balances.

Since no frontend or API was used, the simulation was built directly in PostgreSQL, using:  
\- Functions  
\- Triggers  
\- Custom transaction logic  
\- Reconciliation analysis

The project replicates a live system where:  
\- Users pay through various channels  
\- The system updates wallet balances, merchant earnings, and settlements  
\- Reconciliation detects financial mismatches like delayed, missing, or overpaid settlements

##  **Project Goals**

\- Simulate a realistic fintech backend environment using PostgreSQL  
\- Practice data modeling, automation, and reconciliation logic  
\- Understand where data lives, how it flows, and how to track and audit its behavior  
\- Query backend transaction data to answer key financial and operational questions

## **Core Tables**

\- transactions — Records successful transactions  
\- failed\_attempts — Captures failed transactions (blocked from entering \`transactions\`)  
\- wallet — Logs wallet debits/credits  
\- merchants — Contains merchant details and current balances  
\- expected\_settlement — Logs expected merchant settlements after successful transactions  
\- actual\_settlement — Logs actual settlements paid out to merchants  
\- withdrawals — Records merchant withdrawals

## **Core Functions & Logic**

### **1\. block\_failed\_transaction**

Prevents failed transactions from being inserted into the transactions table. Automatically logs them into the failed\_attempts table.

### **2\. process\_successful\_transaction**

When a transaction is successful:  
\- Inserts into the transactions table  
\- Updates the merchant's wallets balance  
\- Logs a credit into the wallet\_transactions table  
\- Inserts a row into the expected\_settlement table  
\- Updates the merchant's total balance in the merchants table

### **3\. process\_withdrawal**

When a merchant initiates a withdrawal:  
\- Deducts the amount from the merchant’s wallet  
\- Inserts into the withdrawals table  
\- Logs the debit in the wallet\_transactions table

## **Key Insights from Queries**

### **Channel Distribution**

\- Wallet: 52.73%  
\- Bank Transfer: 29.96%  
\- Card: 17.32%

### **Channel Failure Rates**

\- Wallet: 42.59%  
\- Card: 35.19%  
\- Bank Transfer: 22.22%

### **Top Merchants by Volume**

\- Sylvia Restaurant — 44.76%  
\- Adjokey Amala Joint — 16.40%  
\- Hope Fashion — 15.78%  
\- Agent POS — 11.90%  
\- Alpha Fig Store — 11.16%

### **Merchants by Number of Transactions**

\- Hope Fashion — 26  
\- CY Delight Kitchen — 24  
\- Alpha Fig Store — 22  
\- Sylvia Restaurant — 22  
\- Grace Supermarket — 21

 Note: High transaction volume doesn’t always mean high transaction value.

## **Reconciliation Highlight**

Reconciliation was the core highlight of this project. After simulating mismatches in the actual\_settlement table (delays, underpayments, etc.), a query using CTEs and LEFT JOINs was written to:

\- Compare expected vs actual settlements  
\- Flag:  
  \- Delayed Payments  
  \- Missing Payments  
  \- Overpayments  
  \- Underpayments

This mirrors what finance teams in fintechs do every day to validate merchant payouts and catch anomalies.

## **Files Included**

\- DDL.sql — Table creation scripts  
\- functions.sql — All custom functions and triggers  
\- populate\_data.sql — Sample data population  
\- reconciliation\_query.sql — CTE-based reconciliation logic  
\- README.md —   
\- Sylvia\_Fintech\_Backend\_Simulation\_Project\_Report.docx — Full project writeup

## **Learning Reflections**

I'm fascinated by where data goes when a transaction is made. Where does it live? Where does it sleep? This project helped me answer that.

This project was an attempt to truly understand backend data behavior in fintech not just the "what", but the "why" and the "where". It was challenging as a first-time PostgreSQL project, but it brought together technical skill, realism, and financial context  and showed how SQL can power serious business decisions.

## **✅ Tech Stack**

\- PostgreSQL (via pgAdmin)  
\- SQL (DDL, DML, Functions, CTEs, Joins)  
\- Microsoft Word (Report)  
\- GitHub (for versioning — optional)

## **🔚 Conclusion**

This backend simulation project represents a hands-on effort to recreate what goes on beneath fintech products: automated transaction processing, wallet updates, and settlement reconciliation — all using SQL logic.