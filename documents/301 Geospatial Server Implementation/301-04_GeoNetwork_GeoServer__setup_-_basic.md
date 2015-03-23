## GeoSpatial Implementation: GeoNetwork_GeoServer setup - basic

### Process Number: 301-04

### Purpose

To install GeoNetwork metadata application and the GeoServer data application on a suitable server. Links also established to the PostgreSQL / PostGIS spatial database.  
Do *not* move the GeoServer data directory until instructed in a subsequent process.


| **Step** | **Major Activity**                                              | **References, Forms and Details** 
|---------|-------------------------------------------------------|--------------
| 1	      |Go to the GeoNetwork download location (SourceForge) and download the appropriate version for the operating system.|Use the *.exe version for Windows, because this creates the start icons at the end of the process.  The 32-bit java version is required during this installation (only).  To install, simply double-click the file.
| 2       |Install the application, selecting GN and GS.  Do not install the Inspire option, nor GAST|Installation directory should not be in Program Files.  Often, C:\ is chosen.  It is normal to get “malformed url …” when the metadata templates are loaded.  They still load and work fine.
| 3       | 																											| Excerpt from the 2.10 version of the user manual:
|					| 																											|“A typical configuration in the resources element of INSTALL_DIR/web/geonetwork/WEBINF/config.xml uses the jeeves.resources.dbms.JNDIPool class and looks something like:
|         | 																											|resource enabled="true"
|					| 																											|namemain-db</name
|					| 																											|provider>jeeves.resources.dbms.JNDIPool</provider>
|					| 																											|config>
|					| 																											|context>java:/comp/env</context>
|					| 																											|resourceName>jdbc/geonetwork</resourceName>
|					| 																											|url> jdbc:postgresql_postGIS://localhost:5432/gndb </url>
|					| 																											|provideDataStore>true</provideDataStore>
|					| 																											|maxOpenPreparedStatements>300</maxOpenPreparedStatements>
|					| 																											|The remainder of the configuration is done in the container context.
| 4       |Edit the jetty-env.xml file, with settings listed in details: |Excerpt from the 2.10 version of the user manual:
|					| * Set database name and port to that in conf.xml 			|Arg>jdbc/geonetwork</Arg>
|					| * Set username of database 														|Arg>
|					| * Set password of database |New class="org.apache.commons.dbcp.BasicDataSource">
|					| 																											|Set name="driverClassName">org.postgis.DriverWrapper</Set>
|					|	 																											|Set name="url">jdbc:postgresql_postGIS://localhost:5432/gndb</Set>
|					| 																											|Set name="username">postgres</Set>
|					| 																											|Set name="password">password to match</Set>” 
| 5	      |Initially set the geonetwork data directory environment variable to the default value|•	eliminates a harmless warning
|         |Windows: geonetwork_dir = <INSTALL-DIR>\GeoNetwork\web\geonetwork\WEB-INF\data:|•	in Linux, the directory is set in the startup script in the geonetwork_install_directory>/bin
|					|Linux: install dir>/web/geonetwork/WEB-INF/data
| 6	      |Test GeoNetwork.|Final configuration of geoserver data locations will occur after the first run.  Also, the first access of the GeoNetwork database will install the required tables via SQL statements.
|					| * Try and start the GeoNetwork server
|					| * If you can load the GeoNetwork html page and also see the world map, then done.
| 7	      |If deficiencies, fix:
|					| * If it will not start, there is likely something wrong with the config.xml file.
|					| * If world map does not show, likely the GN and GS data directories were not initially set to default values.
| 8       |If it starts okay, back up the default logo at C:\geonetwork_data | PostGIS will hold metadata and the info.xml files.  The data and the graphic images are stored in the geonetwork_directory\data\resources\images\logos and rename the desired logo with the site name UUID.
| 9	      |If desired, replace GeoServer with the most current version. | Use ISO process 301-05


Created by:
===
Terry Curran

Approved by process owner / date:
===
Terry Curran, P.Eng. / 2014-11-30
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
