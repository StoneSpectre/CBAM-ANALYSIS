# CBAM-ANALYSIS
CBAM Vulnerability Analysis of Indian Manufacturing
Overview

This project analyzes the exposure of Indian manufacturing firms to the European Union's Carbon Border Adjustment Mechanism (CBAM) using confidential-style unit-level data from the Annual Survey of Industries (ASI).

The objective is to identify export-oriented firms operating in CBAM-covered industries and construct a firm-level panel dataset suitable for industrial policy, trade, and environmental economics research.

The project combines large-scale data engineering, panel data construction, and econometric analysis to understand how firm characteristics relate to export intensity across India's manufacturing sector.

Objectives
Identify Indian manufacturing firms operating in CBAM sectors.
Construct a multi-year panel dataset from ASI Unit-Level Data (2019–20 to 2023–24).
Analyze export orientation across industries.
Examine firm characteristics associated with export intensity.
Build a reusable dataset for future environmental and trade policy research.
Dataset

Source

Annual Survey of Industries (ASI) Unit-Level Data
Ministry of Statistics and Programme Implementation (MoSPI)

Coverage:

2019–20
2020–21
2021–22
2022–23
2023–24

Approximately 574 exporting manufacturing firms operating in CBAM-related industries.

Methodology

The workflow consists of five major stages:

1. Industry Identification

CBAM industries were identified using NIC 2008 manufacturing classifications.

Examples include:

Iron & Steel
Aluminium
Cement
Basic Chemicals
Other Carbon-Intensive Manufacturing
2. Data Processing

Merged multiple ASI schedule blocks including:

Block A – Factory Characteristics & Export Share
Block E – Employment & Wages
Block F – Fuel and Energy Consumption
Block I – Input Materials
Block J – Output / Products Manufactured

All datasets were merged using the factory identifier.

3. Panel Construction

Created a balanced analytical dataset containing:

Export Share
Employment
Wages
Output Value
Production Cost
Industry Classification
Working Days
Factory Identifier
Survey Year
4. Feature Engineering

Constructed variables including:

Log(Output)
Log(Employment)
Log(Wages)
Export Intensity
Labour Productivity
Wage per Worker
5. Econometric Analysis

Performed:

Descriptive Statistics
Industry-wise Export Analysis
Year-wise Trend Analysis
Correlation Analysis
Ordinary Least Squares (OLS)
Heteroskedasticity-Robust Regression (HC3)
Key Findings
Constructed a five-year firm-level panel of CBAM-relevant exporters.
Export intensity varies substantially across industries.
Larger firms tend to exhibit lower export intensity after controlling for industry effects.
Certain carbon-intensive industries consistently display higher export dependence.
Technology Stack
Programming
Python
Libraries
Pandas
NumPy
Statsmodels
OpenPyXL
Matplotlib
Data
ASI Unit-Level Data
NIC 2008 Industry Classification
Repository Structure
CBAM-Vulnerability-Analysis/

│── Data/
│── Notebooks/
│── Regression Results/
│── Figures/
│── README.md
│── requirements.txt
Future Improvements
Estimate firm-level carbon intensity using fuel consumption data.
Construct a composite CBAM Vulnerability Index.
Apply Fixed Effects and Random Effects panel models.
Integrate EU ETS carbon price scenarios.
Develop machine learning models for vulnerability prediction.
Skills Demonstrated
Industrial Economics
Environmental Economics
Trade Economics
Econometrics
Panel Data Analysis
Data Cleaning
Feature Engineering
Statistical Modelling
Python for Data Analysis
