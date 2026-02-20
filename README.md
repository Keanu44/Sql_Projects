# Exploratory Data Analysis using SQL: Job Market Analysis

![Project!_overview](Images\1_1_Project1_EDA.png)

**This is a sql project analyzing the data job market using real world job posting data turning businees questions into data driven insights**

## Executive Summary 
-- **Project Scope:** Built **3 analytical queries** that answer key questions about the data job markets.
-- **Modelling:** Used **multi-table joins** across fact and dimension tables to extract insights.
-- **Outcomes:** Delivered **actionable insights** on SQL/Python dominance,cloud trends and saalry patterns.

**Review:**

[Top Demand skills query](/sql_project/01_top_demanded_skills.sql)- High  demand skills analysis.

[Top Paying skills query](/sql_project/02_top_paying_skills.sql)- Salary analysis with aggregation.

[Optimal skills query](/sql_project/03_optimal_skills.sql)- Combined demand salary optimization analysis.

## Tech Stack
- **Query Engine:** DuckDB for fast analytical queries.
- **Language Used:** SQL with analytical functions

- **Development:** VS code for sql editing and terminal for DuckDB CLI

- **Version Control:** Git and Github for versioned SQL scripts

## Analysis Overview

### Query Structure
[Top Demand skills query](/sql_project/01_top_demanded_skills.sql)– Identifies the 10 most in-demand skills for remote Data Scientist position.

[Top Paying skills query](/sql_project/02_top_paying_skills.sql) – Analyzes the 25 highest-paying skills with salary and demand metrics

[Optimal skills query](/sql_project/03_optimal_skills.sql)– Calculates an optimal score using natural log of demand combined with median salary to identify the most valuable skills to learn

## Key Insights
- Core languages: SQL and Python each appear in ~29,000 job postings, making them the most demanded skills.

- Cloud platforms: AWS and Azure are critical for modern data engineering roles.

- Infra & tooling: Kubernetes, Docker, and Terraform are associated with premium salaries.

- Big data tools: Apache Spark shows strong demand with competitive compensation.