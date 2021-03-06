**Purpose:**

This document describes the access to the Metadata Server, how to perform simple and advanced searches, and how to create various display and data outputs. The following description is for the ‘classic’ user interface.

The general description is thoroughly described in the GeoNetwork Users Manual (<http://geonetwork-opensource.org/manuals/2.10.3/eng/users/GeoNetworkUserManual.pdf> ) at time of writing ).

| **Step** | **Major Activity**                                              | **References, Forms and Details**  |
|---------|------------------------------------------------------------------|------------------------------------|
| 1       | Use a browser to connect to:                                     | \<port\> default is 8080           |                                                 
|         |    *IP address\>:\<port\>/geonetwork*                            |  It is \*not\* necessary to sign in to search for metadata. This is only required for administrative functions such as editing and deleting records  |
| 2        | There are **two search modes**, simple and advanced. Almost invariably, the \<simple\> search as displayed on the splash screen will suffice.                                                                                                          |
| 3        | The **common approach** is to select a geographic window, and place one or more search terms to be searched. If there are too many results, narrow the search by bounding box and by search terms.                                   |                                   |
|          | The **advanced search** permits specific title, abstract, keywords, credit, data parameters and taxonomic names. This is in addition to optionally selecting a geographic bounding box, temporal extent and metadata change date range.  | Result is \<Google-like\>. |                                                                                                                                                                      |          |                                                                  |   Each result includes title, about 20 words of the abstract, bounding box extent and keywords.  |                                                      
|          |                                                                    | The display can be enhanced with thumbnails   |
| 4        | Metadata **display options** by:                                                                          |          |
|          |   * clicking the \<metadata\> button, the detailed metadata is displayed.                                 |          |
|          |   * clicking the PDF button in the top right corner of each record to save or display PDF                 |          |
|          |   * converting to/from Dublin Core metadata                                                               |          |
| 5        | If data is hyperlinked by the metadata, the button for data download will be present.                     |          |
|          | Similarly, if the layers are WMS-compatible, there will be a button to invoke a Google Earth display.     |          |
| 6        | ***Access to administration mode ***                                |   Reserved for system administrators only      |
|          |  * provide ID and PW,                                                                                     |          |
|          |  * main screen will provide options to edit or delete selected individual records                         |          |
|          |  * at the top of all the aggregated records section, bulk operations can be performed.                    |          |
|          |  *   **Administration** tab to be present next to the Home tab. This permits access for metadata entry and change, PW updates and various other administrative tasks                                                                                                   |          |
