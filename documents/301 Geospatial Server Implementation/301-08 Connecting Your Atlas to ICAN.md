**Purpose:**

This document is a step-by-step guide explaining how to connect your atlas as a node in the International Coastal Web Atlas (ICWA) prototype hosted at [ican2.ucc.ie](http://ican2.ucc.ie)*/*. This document is aimed specifically at members of the International Coastal Atlas Network community and more generally at scientists, data managers, and system developers.

| **Step** | **Major Activity**                                                                                              | **References, Forms and Details**                                                                  |
|----------|-----------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| **1**    | Install a standards-compliant CSW (metadata server)                                                             |                                                                                                    |
| **2**    | Ensure the metadata with keywords is in one of four forms:                                                      
                                                                                                                             
            uri only                                                                                                         
                                                                                                                             
            label only                                                                                                       
                                                                                                                             
            both uri and label                                                                                               
                                                                                                                             
            uncontrolled free text                                                                                           | the label-only format (2) is common, but causes extra effort by the ontology-matching engine.      |
| **3**    | Provide local keyword relationship to ICAN global system (optional)                                             |                                                                                                    |
| **4**    | Provide CSW connection details to ICAN administrator                                                            
                                                                                                                             
            URL of your CSW server                                                                                           
                                                                                                                             
            Login and password for accessing metadata through your CSW server (note 4.1)                                     
                                                                                                                             
            Logo of your atlas (note 4.2)                                                                                    
                                                                                                                             
            Method used for encoding keywords                                                                                
                                                                                                                             
            If you are using method 1, 2 or 3 for keyword encoding then you will need to provide the following information:  
                                                                                                                             
            > URI of the Semantic Web Service (SWS) responsible for delivering your KOS (note 4.3)                           
                                                                                                                             
            > URI of the schema containing the concepts used as metadata keywords (note 4.4)                                 | *Note 4.1*                                                                                         
                                                                                                                              >                                                                                                   
                                                                                                                              > Login and password is required only if metadata records are not public (**normally not needed**)  
                                                                                                                              >                                                                                                   
                                                                                                                              > *Note 4.2*                                                                                        
                                                                                                                              >                                                                                                   
                                                                                                                              > Atlas logo is **optional** but desirable. Image should be 250x250 PNG.                            
                                                                                                                              >                                                                                                   
                                                                                                                              > *Note 4.3*                                                                                        
                                                                                                                              >                                                                                                   
                                                                                                                              > Required if other than the NERC Vocabulary Server and the CMRC SWS is used                        
                                                                                                                              >                                                                                                   
                                                                                                                              > *Note 4.4*                                                                                        
                                                                                                                              >                                                                                                   
                                                                                                                              > Basically the dictionary with definitions                                                         |
| **5**    | ICAN administrator implements details                                                                           | Typical elapsed time is one month                                                                  |
| **6**    | Connection?                                                                                                     
                                                                                                                             
            If yes, then Done                                                                                                
                                                                                                                             
            If not, Make Changes                                                                                             |                                                                                                    |
