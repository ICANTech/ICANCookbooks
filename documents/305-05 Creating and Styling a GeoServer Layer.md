**Purpose:**

This document describes how to add a simple spatial layer in GeoServer. The intention is to quickly expose a data layer for use by GeoNetwork. This will be linked from a metadata record stored in GeoNetwork.

This is well described in the GeoServer User manual, along with extensive and advanced styling considerations not discussed here.

| **Step** | **Major Activity**                                                              | **References, Forms and Details**                                                                                                                                  |
|----------|---------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1        | Sign onto GeoServer, providing an ID and password with administrator privileges |                                                                                                                                                                    |
| 2        | Create a workspace                                                              | This is a way of grouping layers, for instance from a single supplier or by theme                                                                                  |
| 3        | Identify a store                                                                | This is a location where similar data is stored. Common instances include a folder of shp files, and one or more tables containing spatial data within a database. |
| 4        | Create a Style (optional)                                                       
                                                                                             
            Click on “style”                                                                 
                                                                                             
            Enter a short title                                                              
                                                                                             
            Select “copy from”                                                               
                                                                                             
            Make changes                                                                     
                                                                                             
            Select “validate” at bottom, scroll to top to see if okay                        
                                                                                             
            Select “submit”                                                                  |                                                                                                                                                                    |
| 5        | Create a layer                                                                  
                                                                                             
            Click “add a new resource”                                                       
                                                                                             
            Choose \<workspace\>: \<atlasLayer\>                                             
                                                                                             
            Click “publish” to open the layer for editing                                    |                                                                                                                                                                    |
| 6        | Editing – First tab (Data)                                                      
                                                                                             
            Name – don’t change, because it will link to the layer                           
                                                                                             
            Title – change to something reasonable, but short. Spaces encouraged.            
                                                                                             
            Coordinate reference system. Choose something appropriate (e.g. EPSG:3005)       
                                                                                             
            Bounding Boxes                                                                   
                                                                                             
            Click “compute from data”                                                        
                                                                                             
            Should generally be in range 0 to 1,000,000                                      
                                                                                             
            Click “compute from native bounds”                                               
                                                                                             
            Geographic: longMin, latMin, longMax, latMax                                     |                                                                                                                                                                    |
| 7        | Editing – Second tab (Publishing)                                               
                                                                                             
            Style                                                                            
                                                                                             
            choose one, or accept Default                                                    
                                                                                             
            Save (at bottom of page)                                                         | Saves the layer                                                                                                                                                    |
| 8        | Layer Preview                                                                   
                                                                                             
            On layer of choice, select                                                       
                                                                                             
            Open Layers                                                                      
                                                                                             
            May need to pan and zoom to see result                                           
                                                                                             
            Google Earth                                                                     
                                                                                             
            Should display properly (without big red X)                                      | If Google result displays red X, determine what is wrong and fix                                                                                                   
                                                                                                                                                                                                                                                                  
                                                                                              Otherwise, layer is available for linking to metadata                                                                                                               |
