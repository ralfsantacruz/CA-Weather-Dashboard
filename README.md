# California Weather Conflux

![Monarch](Monarch_Butterfly.png)

## Introduction:
   The following project will ”tell a story" through data visualizations.
The project will focus on using the "Analytics Paradigm" to explore relationships in "report form”.This project will also focus on providing users an interactive means to explore data themselves.

### Project Introduction:
  Climate change is a problem of unprecedented scope and intractability. Recent extreme weather events such as fires in California compelled us to ask the question about current and forecast weather. We wanted to analyze weather trends so that it can help in making decisions on measures that will improve the current climate change extremities.

## Technical Requirement: 
  1. Visualization must include a Python Flask powered RESTful API, HTML/CSS, JavaScript, and at least one database (MySQL, MongoDB, SQLite, etc.)

  2. Project should fall into one of the below four tracks:
    a. custom "creative" D3.js project (i.e. non-standard graph or chart)
    b. A combination of Web Scraping and Leaflet or Plotly
    c. A dashboard page with multiple charts all updating from the same data
    d. A "thick" server that performs multiple manipulations on data in a database prior to visualization (must be approved)

  3. Project should include at least one JS library that we did not cover.

  4. Project must be powered by a dataset with at least 100 records.

  5. Project must include some level of user-driven interaction (e.g. menus, dropdowns, textboxes, etc.)

  6. Final visualization should ideally include at least three views
  
## Data Sources: 
  * Openweather data (Current and Forecast Weather Data):
      NOAA http://www.noaa.gov/
      Environment Canada http://www.weatheroffice.gc.ca
      European Centre for Medium-Range Weather Forecasts (ECMWF) http://www.ecmwf.int/
      METAR data from airports http://en.wikipedia.org/wiki/METAR
      APRS network http://www.aprs-is.net/
  * Air Pollution Data from Breezometer: 
      EPA and airnow 

## ETL Processes: 
 ### Extract:
   We obtained our datasets from open weather data and breezometer. We scraped the data from open weather data api and breezometer api.The weather data such as current and forecast wind, pressure, temperature, cloud and UV index were scrapped from the open weather api. The air pollution data was scraped from breezometer site. The california cities with the lat/long values were also obtained from wikipedia.

 ### Transform:
   Once we have scraped the data from all those data sources, we plot them against the map and to create the visualization. The geoJson objects were then added to map vector using map box tool. 

 ### Load:
  We loaded the scraped data into cvs files and uploaded the data to MySql server.

## Conclusion and Trends:
  ### Noticeable UV Trends:
	UV exposure tends to be lower when Cloud cover or rain is present (go figure).
  ### Cloud Cover Trends:
	Noticeable AQI Trends: Central Valley often has poorer air quality than the rest of the state. This is due to the central valley being a  massive inversion zone.
  ### Wind Trends:
	The areas with persistently high winds are also home to California’s largest wind farms (again go figure). 

