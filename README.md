
# Movie Rental Data Warehouse

## Overview
This project implements a Data Warehouse solution for a Movie Rental Business using the Kimball Dimensional Modeling approach. The objective is to integrate data from multiple heterogeneous sources, transform the data through an ETL process, and support analytical reporting using OLAP operations.

## Business Problem
Movie rental companies generate data from multiple systems including customer records, film catalogs, and rental transactions. An integrated Data Warehouse enables efficient business analysis and decision-making.

## Data Sources

### 1. JSON Dataset
- Customers data
- Source: CUSTOMERS.json

### 2. Relational Database Dataset
- Films data
- Source: Films.sql

### 3. Flat File Dataset
- Rental transactions
- Source: Rental_Info.csv

## Data Warehouse Architecture

### Fact Table
- rental_info

### Dimension Tables
- dimcustomer
- dimfilm
- dimdate

### Schema
Star Schema design based on Kimball methodology.
## ETL Pipeline

### Extract
- Read data from JSON, SQL and CSV sources.

### Transform
- Handle missing values.
- Standardize column names.
- Create surrogate keys.
- Generate date dimension.

### Load
- Load transformed data into the Data Warehouse.

## OLAP Operations

### Roll-Up
Analyze rental revenue by year.

### Slice
Filter rental revenue for a specific film category.

## Technologies Used
- Python
- Pandas
- SQLAlchemy
- SQLite
- Jupyter Notebook
- Plotly
## Author
Aziza Babashova
Westminster International University in Tashkent
