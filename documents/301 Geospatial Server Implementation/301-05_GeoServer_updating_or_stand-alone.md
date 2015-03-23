#### GeoSpatial Implementation: GeoServer_updating_or_stand-alone

### Process Number: 301-05

### Purpose

To install the most recent GeoServer data application, or to update the included GeoServer application in the GeoNetwork system.  This will permit the most advanced GeoServer capabilities.

Note: for the GeoServer updating, it is essential that an initial execution of the GeoNetwork system have already occurred, because finalization of the GeoServer data directory contents is completed at that time.

| **Step** | **Major Activity**                                              | **References, Forms and Details** 
|---------|-------------------------------------------------------------------|--------------
| 1	    	|Move the GEOSERVER DATA DIRECTORY to a location outside of the GeoNetwork installation folder, as desired | The basic installation contains the world map raster and three coastlines in shp format.  A typical location is on the root of the geonetwork installation.  Do not use the Program Files directory.
|					| * Shut down Jetty ( stop server ).  This is located in the <bin> folder of the install directory.  Use the *.bat version for Windows, and *.sh for Linux.
|					| * Copy the geonetwork\web\geoserver\data directory to somewhere else
| 2       |Optionally move the GeoNetwork data directory.|This is different to the GeoServer Data Directory.  This directory holds data files and images referred to by metadata.  The actual metadata records may be held here, or in a database.
| 3       |Set environment variables to those locations.  In Linux, this is set in the install script in the <install dir>/bin folder.
|					| * geonetwork_dir   | e.g.  geonetwork_dir  = c:\geonetwork_data
|					| * GEOSERVER DATA DIRECTORY | e.g. GEOSERVER_DATA_DIR  = c:\geoserver_data 
| 4       | Download and install the stable geoserver.war file if updating .geoserver
|					| * unzip the war.zip
|					| * Extract the result from the war
|					| * Replace the existing old geoserver with the extracted contents
| 5	      |Move the GeoServer index.html and WEB-INF folder into the root geoserver folder location. |GEONETWORK- INSTALL>\web \geoserver (the folder \geonetwork is in the same location)
| 6       |Test.  If you can load the GeoNetwork html page and the world map, then done
| 7	      |Fix deficiencies:
|					|If world map does not show, likely the GN and GS data directories were not initially set to default values.


Created by:
====
Terry Curran

Approved by process owner / date:
===
Terry Curran, P.Eng. / 2014-11-30
