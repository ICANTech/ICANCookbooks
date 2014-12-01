#### GeoSpatial Implementation: PostgreSQL_PostGIS installation

### Process Number: 301-02

### Purpose

To install on a suitable server the PostgreSQL database with the PostGIS spatial extension (for speedy response) on a Windows or Linux operating system.  PostGIS will be used to store geospatial metadata and data.

At the conclusion of the PostgreSQL/ PostGIS installation, the application will be installed as a service and be running whenever the computer and operating system is active.  That is, no need to start the application, ever.

|**Step** |**Details**	                                          |**Reference** 
|---------|-------------------------------------------------------|--------------
| 1	      |
| 2       |
|					|
| 3       |
|					|* PGDATA - path to data directory  										|e.g.  PGDATA=/opt/PostgreSQL/data and export PATH
|					|* PGUSER - default user (role) 												|e.g.   PGUSER=geonetwork
|					|* PGPORT   listen port 																|e.g.  PGPORT=5432
| 4       |In psql,   																						|* superuser postgres owns the functions
|					| * CREATE USER geonetwork WITH PASSWORD  secret ; 			|* owner geonetwork will own the metadata database.  It is best to separate the two users for security reasons
|					| * \du  																								|to view and confirm owners
| 5       |In psql, 																						  |
|					|* CREATE DATABASE gndb4 WITH OWNER geonetwork ENCODING  UTF8 ;|Although the database name is arbitrary, the PostGIS database the will contain the metadata records should have a suitable name for GeoNetwork.  Examples are geonetwork, gndb and gndb4
|					|* \l     																						  |to view and confirm databases
| 6       |If you see the version number, the installation was successful.  If not, then re-install
| 7       |In psql,| 																							|
|					| *\c gndb4 superuser 																	|* Connect to gndb4, or metadata database name of your choosing AS superuser
|					|* enter password 																			|
|					|* CREATE EXTENSION postgis;  													|* Create two needed extensions
|					|* CREATE EXTENSION postgis_topology; 									|	
|					|* \dx 																									|should display three extension
| 8       |In psql, issue:  SELECT * FROM postgis_full_version();	|Tests that PostGIS functionality is operational by executing a SQL query to provide the version number.
|					|Should see response similar to: POSTGIS="2.1.3 r12547" GEOS="3.4.2-CAPI-1.8.2 r3924" PROJ="Rel. 4.8.0, 6 March 2012" GDAL="GDAL 1.10.0, released 2013/0 4/24" LIBXML="2.7.8" LIBJSON="UNKNOWN" TOPOLOGY RASTER | Psql is normally in the bin directory of the PostgreSQL install directory.
| 9       |In psql, 																							|* Creates non-public schema, so data can be kept separate from other functions
|					|* CREATE SCHEMA data; 
|					|* ALTER SCHEMA data OWNER TO geonetwork;
|					|* \dn      																						|to view and confirm schemas
| 10      |In psql, 																							|* Setting search path means the schemas do not need to be explicitly searched, and to last between connections
|					|* \c postgres postgres 																|
|					|* ALTER DATABASE science SET search_path = data,public;
|					|* \drds  			 																				|to view and confirm settings  (esp. path)
| 11      |Other commonly needed psql commands: 									|					
|					|* \dt  																								|listing of database tables
|					|* \d <tablename> 																			|headings of a database table
|					|* \password username 																	|change password



Created by:
===========
Terry Curran

Approved by process owner / date:
=================================
Terry Curran, P.Eng. / 2014-11-30
