# Flight Delay Classification

## Project Overview
This project aims to analyze and predict flight delays using historical flight, airport, and runway data. By understanding the various factors that contribute to delays, the goal is to build a classification system that can predict whether a scheduled flight is likely to be delayed. This can help airlines and passengers make better, data-driven decisions.

## Project Workflow

### Python (Data Processing & Machine Learning)
The `python/` directory contains the core data analysis and modeling work:
*   **Data Cleaning & Preprocessing:** Handled missing values, outliers, and merged multiple raw datasets (such as Airlines, Airports, and Runways).
*   **Exploratory Data Analysis (EDA):** Investigated the distributions, trends, and correlations to understand which features have the highest impact on flight delays.
*   **Feature Engineering:** Transformed raw data into meaningful features (e.g., parsing datetime information, encoding categorical variables) to improve model accuracy.
*   **Classification Modeling:** Trained and evaluated machine learning classification models to accurately predict flight delays.

### Tableau (Data Visualization & Dashboards)
The `tableu/` directory contains the visual analytics work:
*   **Interactive Dashboards:** Built dynamic, user-friendly dashboards using the cleaned dataset to visualize delay patterns across different dimensions.
*   **Trend Analysis:** Visualized how flight delays vary by airlines, specific airports, and time periods (seasonality, day of the week, time of day).
*   **Insights Generation:** Designed visual stories that easily communicate key findings and the primary drivers of flight delays to non-technical stakeholders.
