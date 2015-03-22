**Purpose:**

This document describes how to load metadata into a GeoNetwork server.

The general description is thoroughly described in the GeoNetwork User’s Manual (search web for the latest version: “GeoNetwork User Manual”). This process is to provide an abbreviated step-by-step.

| **Step** | **Major Activity**                                                | **References, Forms and Details**                                                                                                                                                                                                                            |
|----------|-------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1        | Use a browser to connect to GeoNetwork                            | Path must be known                                                                                                                                                                                                                                           |
| 2        | Provide ID and password                                           
                                                                               
            The **Administration** tab should appear next to the **Home** tab  | The ID and PW is required to access administrative functions                                                                                                                                                                                                 |
| 3        | Click the **Administration** tab                                  
                                                                               
            Click on the **Metadata insert** tab                               | The metadata insert section allows insertion of                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                              
                                                                                an individual metadata record in xml format, or                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                              
                                                                                one or more metadata records (optionally plus thumbnails and data files) in a batch load.                                                                                                                                                                     
                                                                                                                                                                                                                                                                                                                                              
                                                                                This latter format is called **metadata exchange format** (mef), and is a structured zip file. This is a recommended input format.                                                                                                                            |
| 4        | Select the mode:                                                  
                                                                               
            File or                                                            
                                                                               
            Copy/Paste                                                         |                                                                                                                                                                                                                                                              |
| 5        | If File, select                                                   
                                                                               
            Single File, or                                                    
                                                                               
            MEF                                                                
                                                                               
            Browse local storage for desired file, and select                  |                                                                                                                                                                                                                                                              |
| 6        | Select desired Import action:                                     
                                                                               
            No action on import                                                
                                                                               
            Overwrite metadata with same UUID                                  
                                                                               
            Generate UUID for inserted metadata                                | Normal situation                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                                                                              
                                                                                Used if replacing metadata after some changes                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                                                                                              
                                                                                Used if for some reason there is an existing record with the same UUID and a different metadata record is desired to be loaded. This can happen if a metadata record is being cloned, then slightly modified. This is not a preferred action, but can occur.  |
| 7        | If a single metadata record is being added, then select           
                                                                               
            Stylesheet                                                         
                                                                               
            Validate                                                           
                                                                               
            kind                                                               
                                                                               
            group                                                              
                                                                               
            category                                                           
                                                                               
            if MEF, these choices are already determined in the MEF info.xml   | Normally **none**                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                              
                                                                                Useful to **check** to thoroughly determine metadata validity. The server applies schematron checks that are in addition to the schema validation.                                                                                                            
                                                                                                                                                                                                                                                                                                                                              
                                                                                Normally **metadata**                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                                                                                              
                                                                                As desired, from the choices previously established                                                                                                                                                                                                           
                                                                                                                                                                                                                                                                                                                                              
                                                                                Normally **dataset**, although many choices are possible                                                                                                                                                                                                      |
| 8        | **Insert** record                                                 | Often this can take seconds to many minutes. You should look for a subtle “beeble” indicator indicating the application is actively working.                                                                                                                 |
| 9        | If error, change                                                  
                                                                               
            metadata record, or                                                
                                                                               
            change the choices                                                 
                                                                               
            re-enter                                                           |                                                                                                                                                                                                                                                              |
