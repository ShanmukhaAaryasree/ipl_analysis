# IPL Sports Analytics

## Project Overview

This project analyzes Indian Premier League (IPL) match and ball-by-ball data to discover insights about teams, batters, bowlers, venues, toss decisions, and match outcomes.

## Tools Used

- Python
- Jupyter Notebook
- MySQL
- Pandas
- NumPy
- Matplotlib
- SQLAlchemy and PyMySQL

## Dataset

The project uses two IPL datasets:

- `matches.csv` — match-level information such as season, teams, venue, toss winner, match winner, and Player of the Match.
- `deliveries.csv` — ball-by-ball information such as batter, bowler, runs, extras, innings, and wickets.

Source: [Cricsheet IPL data](https://cricsheet.org/downloads/)

## Project Workflow

1. Collected IPL match and delivery datasets.
2. Cleaned the data using Pandas in Jupyter Notebook.
3. Removed duplicate rows and handled missing values.
4. Created cleaned CSV files.
5. Stored cleaned data in MySQL tables: `matches` and `deliveries`.
6. Used SQL queries to analyze teams, players, tosses, and venues.
7. Created visualizations and an IPL analytics dashboard using Matplotlib.

## Analysis Performed

- Matches played per season
- Top IPL teams by total wins
- Top 10 batters by runs scored
- Top 10 bowlers by wickets taken
- Most Player of the Match awards
- Toss decision preference
- Top IPL venues by matches hosted
- Boundary comparison: fours versus sixes
- Wickets taken by over
- Team performance across seasons

## Project Files

- `data_cleaning.ipynb` — data cleaning and preprocessing
- `mysql_analysis.ipynb` — MySQL connection and SQL analysis
- `dashboard_visualization.ipynb` — dashboard and visualizations

## Dashboard

The dashboard contains charts for:

- Season-wise match count
- Team wins
- Top batters
- Top bowlers
- Toss decisions
- Most-used venues

## Note

Large CSV data files and database passwords are not included in this repository. Download the source data from Cricsheet and enter your own MySQL password when running the notebooks.
