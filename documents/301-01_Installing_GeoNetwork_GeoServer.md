GeoNetwork / Geoserver Setup
==============================

### Purpose
To install GeoNetwork metadata application and the GeoServer data application on a suitable server. Links also established to the PostgreSQL / PostGIS spatial database.  
Do *not* move the GeoServer data directory until instructed in a subsequent process.

### Steps
1. Go to the GeoNetwork download location (SourceForge) and download the appropriate version for the operating system

2. Install the application, selecting GN and GS.  Do not install the Inspire option, nor GAST.

3. Configure the GeoNetwork to use a PostGIS database for metadata record storage.  This is a two-file configuration (conf.xml and jetty-env.xml).
	- Edit the conf.xml file (…geonetwork\web\geonetwork\WEB-INF\conf.xml ).  
    - Normally use the JNDI Pool resource management, with settings listed in details.

4. Edit the jetty-env.xml file, with settings listed in details.  

5. Initially set the environment variable to the default value:
	geonetwork_dir = C:\GeoNetwork\web\geonetwork\WEB-INF\data
    
6. Test GeoNetwork.
	- Try and start the GeoNetwork server.
    - If you can load the GeoNetwork html page and also see the world map, then done.

7. Fix deficiencies.
	- If it will not start, there is likely something wrong with the config.xml file.
    - If world map does not show, likely the GN and GS data directories were not initially set to default values.
8. If it starts okay, back up the default logo at C:\geonetwork_data\data\resources\images\logos and rename the desired logo with the site name UUID.

9. If desired, replace GeoServer with the most current version.









