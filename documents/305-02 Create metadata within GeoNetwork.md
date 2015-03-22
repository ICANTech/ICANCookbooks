**Purpose:**

This document describes how to create a metadata record within the GeoNetwork server. The desired thumbnail and any desired data files should already be available. If a link to a GeoServer WMS map is desired, this should also be in place.

The general description is thoroughly described in the GeoNetwork User’s Manual (<http://geonetwork-opensource.org/manuals/2.10.3/eng/users/GeoNetworkUserManual.pdf> ) at time of writing ).

| **Step** | **Major Activity**                                                                                           | **References, Forms and Details**                                                                                                                                                                                           |
|----------|--------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1        | Use a browser to connect to GeoNetwork                                                                       | If on the local computer, the address is usually <http://localhost:8080/geonetwork>                                                                                                                                         |
| 2        | Provide ID and password                                                                                      
                                                                                                                          
            The **Administration** tab should appear next to the **Home** tab                                             | The ID and PW is required to access administrative functions, and specifically the \<edit\> tab at the bottom of each metadata search result.                                                                               
                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                           The default ID/PW is admin/admin                                                                                                                                                                                             |
| 3        | Select “new metadata”                                                                                        
                                                                                                                          
            Choose template – generally a iso19139 variant                                                                
                                                                                                                          
            Choose a group                                                                                                | The metadata record will open in edit mode                                                                                                                                                                                  |
| 4        | Complete the Information section                                                                             
                                                                                                                          
            Enter as many responses as possible                                                                           
                                                                                                                          
            Fields with small red stars require a response                                                                | Defer the “graphic overview” response to step 7 below; it will be done separately.                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                           Theme and place keywords should follow the ICAN recommendations (305-F02) if it is desired to connect to the ICAN network.                                                                                                   |
| 5        | Complete the Distribution section                                                                            
                                                                                                                          
            There are online options for                                                                                  
                                                                                                                          
            link to an external website                                                                                   
                                                                                                                          
            link to data files                                                                                            
                                                                                                                          
            link to an external map server (such as geoserver or mapserver)                                               | these online options \*are\* optional but desirable                                                                                                                                                                         |
| 6        | Complete the Reference and Metadata sections                                                                 | these are not optional                                                                                                                                                                                                      |
| 7        | Thumbnails are optional but desirable:                                                                       
                                                                                                                          
            Select the \<Other actions\> tab at the top of the screen                                                     
                                                                                                                          
            Select \<Thumbnails\>                                                                                         | A large and small thumbnail is needed. The images **can** be different, but most often they are the same. The small image is displayed with the search results; the large image opens when the small image is clicked upon. |
| 8        | Browse for the **large thumbnail**                                                                           
                                                                                                                          
            If the same image is being used for the small, check the \<Create small\> box                                 | GeoNetwork can automatically create a small image of the larger one.                                                                                                                                                        |
| 9        | Click \<add\>                                                                                                
                                                                                                                          
            After a few-seconds delay, the desired images should appear                                                   
                                                                                                                          
            click \<Back to editing\> or \<Delete\> and redo the selection(s)                                             | The same URI is generated as for the metadata, and the images are tagged with the original image name for the larger, and a suffix \<\_s\> for the smaller                                                                  |
| 10       | Data transfer option section is optional but desirable. The template has default protocols that may be used: 
                                                                                                                          
            WWW:LINK-1.0-http—link                                                                                        
                                                                                                                          
            for web address                                                                                               
                                                                                                                          
            WWW:DOWNLOAD-1.0-http—download                                                                                
                                                                                                                          
            for File for download                                                                                         
                                                                                                                          
            OGC:WMS-1.1.1-http-get-map                                                                                    
                                                                                                                          
            for OGC Web Map Service (ver 1.1.1)                                                                           | There are many other protocols. These three options are very common:                                                                                                                                                        
                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                           Use an external web hyperlink to provide more information, or to link to a data provider site for added acknowledgement                                                                                                      
                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                           Use the download link to provide dataset(s)                                                                                                                                                                                  
                                                                                                                                                                                                                                                                                                                                                        
                                                                                                                           Use the map protocol for local map display of data features and for Google Map display                                                                                                                                       |
| 11       | Save the record                                                                                              |                                                                                                                                                                                                                             |
