# Credit Risk Analysis of PT Bank X Indonesia

## Background Story & Goal
A bank, let's call it PT Bank X Indonesia, is facing an unfavorable situation. The existing MSME credit portfolio shows that its current NPL Ratio is at 12.35%, far beyond safe limit of 5%. It needs to take immediate risk analysis and mitigation action to lower the NPL Ratio while maintaining its profitability, since its profits mostly come from this sector. 

This project aims to demonstrate an end-to-end Credit Risk Management Process, from identifying what happened to the current portfolio, analyzing why it happened/what causing it, taking mitigation action by creating a structured credit screening & assessment workflow with help of a Machine Learning Model, and monitoring the result of the action taken on future credit requests.

## Tools
In this project, the tools used are as follows:
* **Python:** Used to generate dummy credit portfolio data of a fictional banking company (called PT Bank X Indonesia), create Machine Learning Model to help future credit screening and assessment, and to analyze and apply the ML Model created towards the previously generated data.
* **SQL:** Used to process, extract, and analyze data to be visualized in Power BI.
* **Power BI:** Used to create a data visualization dashboard of the analyzed data.

## Repository Structure
```text
├── Datasets/
│   ├── MSME_credit_data.csv                       # The 'original' existing credit data
│   ├── MSME_credit_data_analyzed.csv              # Analyzed original data, added with DSCR, PD, and ECL
│   ├── New_MSME_credit_application.csv            # New future credit application/request data
│   ├── New_MSME_credit_reviewed.csv               # New data reviewed (with help from ML) and its application status
│   └── New_MSME_credit_actual                     # Actual credit status of previously requested credit that are not denied
├── Queries Codes and Model/
│   ├── MSME_Credit_Data_Generator.ipynb           # Python code to generate dummy data
│   ├── MSME_Credit_Data_Analysis_and_ML.ipynb     # Python code to analyze data and create ML model
│   ├── credit_scoring_model.pkl                   # The ML Model to help credit screening & assessment
│   ├── New_MSME_Credit_Scoring.ipynb              # Python code to calculate credit score using ML model
│   └── new_msme_credit_join.sql                   # SQL queries to join the reviewed and actual new credit data
├── Dashboard/
│   ├── MSME_Credit_Dashboard.pbix                 # Power BI data visualization dashboard
│   ├── Dashboard_Preview_P1.png
│   ├── Dashboard_Preview_P2.png
│   └── Dashboard_Preview_P2_NonDenied.png
└── README.md
```
