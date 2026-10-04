# Student Database Management System

A comprehensive SQL-based database management system designed to store, manage, and analyze student records and department details efficiently.

---

## 📌 Project Overview
This project contains a complete SQL script for creating and managing a student database. It demonstrates essential database concepts including table creation, primary and foreign key constraints, data insertion, updating, deletion, and complex data retrieval queries.

---

## ⚙️ Features & Key Operations
- **Database & Table Creation**: Sets up structured tables for students and departments.
- **Data Insertion**: Populates tables with initial sample records.
- **Data Manipulation (DML)**: Includes queries for updating records and deleting specific entries.
- **Data Retrieval (DQL)**: 
  - Basic `SELECT` queries with filtering (`WHERE`).
  - Multi-table retrieval using `JOIN` operations.
  - Summary statistics using Aggregate functions (`COUNT`, `AVG`, `SUM`) with `GROUP BY` and `HAVING`.

---

## 🗂️ Database Schema
- **Departments Table**: Stores department identifiers (`dept_id`) and department names (`dept_name`).
- **Students Table**: Stores student details including `student_id`, `name`, `email`, `marks`, and a foreign key referencing `dept_id`.

---

## 🚀 How to Run
1. Open your preferred SQL client (e.g., MySQL Workbench, PostgreSQL, SQL Server, or SQLite).
2. Open or import the `student_database.SQL` file from this repository.
3. Execute the script to create the database, build tables, and run sample queries.

---

## 🛠️ Tools Used
- **Language**: SQL
- **Platform**: GitHub
-
