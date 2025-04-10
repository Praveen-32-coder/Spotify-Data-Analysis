# Spotify-Data-Analysis
End-to-end Spotify data analysis using Python, Spotify API, and MySQL — including track metadata extraction, audio feature analysis, and database integration

# Project Overview
This repository contains a Spotify Data Analysis project divided into three Jupyter Notebook files and one MySQL database. The project demonstrates how to interact with the Spotify API, extract music metadata, and store it in a relational database for further analysis. Below is a detailed explanation of each component.

# File Descriptions
# 1. Spotify-Mysql_Connection.ipynb
This notebook focuses on establishing a connection between Python and a MySQL database to store Spotify track data.

# Key Features:
Spotify API Integration: Uses the spotipy library to fetch track details from the Spotify API.

Database Configuration: Sets up a MySQL database connection using mysql-connector-python.

Data Insertion: Extracts metadata such as track name, artist, album, popularity, and duration, then inserts this data into a MySQL table named spotify_tracks.

# Workflow:
Configure Spotify API credentials using SpotifyClientCredentials.

Connect to a local MySQL database (spotify_db).

Fetch track details using a Spotify track URL.

Extract metadata and insert it into the database.

# 2. Spotify-URLs-Analysis.ipynb
This notebook automates the process of analyzing multiple Spotify track URLs stored in a text file.

Key Features:
Batch Processing: Reads multiple Spotify track URLs from a file.

Error Handling: Handles invalid or non-track URLs gracefully.

Data Storage: Inserts metadata for each valid track into the MySQL database.

# Workflow:
Read track URLs from an external file (e.g., Playlists.txt).

For each URL:

Extract the track ID using regex.

Fetch metadata from the Spotify API.

Insert the data into the spotify_tracks table.

Log successful insertions and errors for invalid URLs.

# 3.Spotify-Data-Visualization.ipynb
This notebook (not provided in detail but inferred as part of the project) likely focuses on analyzing and visualizing the data stored in the MySQL database.

# Possible Features:
Data Extraction: Query data from the spotify_tracks table.

Visualization: Use libraries like matplotlib or seaborn to create visualizations such as:

Popularity distribution of tracks.

Duration trends across albums or artists.

Top artists based on popularity.

4. MySQL Database
The project uses a MySQL database (spotify_db) with at least one table:

Table: spotify_tracks

# Setup Instructions
# Prerequisites
Python 3.x
Jupyter Notebook
Required Python libraries:
spotipy
mysql-connector-python
matplotlib
MySQL Server

#How to Run
Step 1: Fetch and Insert Data (Spotify-Mysql_Connection.ipynb)
Open the notebook and configure your Spotify API credentials (client_id and client_secret).

Set up your MySQL connection details (host, user, password, and database).

Run all cells to insert a single track's metadata into the database.

Step 2: Batch Process URLs (Spotify-URLs-Analysis.ipynb)
Save your Spotify track URLs in a text file (e.g., Playlists.txt) with one URL per line.

Update the file path in the notebook.

Run all cells to process all URLs and store their metadata in the database.

Step 3: Analyze Data (Spotify-Data-Visualization.ipynb)
Query data from the MySQL database.

Use visualization libraries to analyze trends or generate insights.

# Example Use Cases
Analyze popular tracks by genre or artist.

Visualize trends in music popularity over time.

Create playlists based on specific criteria like duration or popularity.

Future Enhancements
Add support for playlist and album analysis.

Integrate advanced visualizations using tools like Plotly or Dash.

Implement machine learning models for music recommendation.

Feel free to contribute by submitting pull requests or reporting issues!

