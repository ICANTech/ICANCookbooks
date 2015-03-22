**Purpose:**

This document describes how to add data links to metadata for use in GeoServer. Often one would use this approach when doing batches of metadata. For single metadata entries, the included GeoNetwork authoring tool or an external authoring tool (like jNAP) would be simpler to use.

The process uses the Kernow graphical user interface. A Kernow licence (about 10 UK pounds) needs to be purchased after 100 executions. It also requires the use of an included java file, and this \*may\* require a Saxon-PE licence (untested with the free Kernow and Saxon versions).

To perform batch operations, a rigid folder structure is needed. The expected seven-folder structure is:

Drive E:-- all\_metadata\_work

|--specific\_metadata\_folder

|-- ‘metadata’ folder

| |- \<unique\_name\>.xml (1 of more metadata files)

|-- ‘metaGraphics’ folder

| |- \<unique\_name\>.xml (contents to be overwritten)

|-- ‘metaGraphicsData’ folder

| |- \<unique\_name\>.xml (contents to be overwritten)

|--‘thumbnails’ folder

| |- \<unique\_name\>.png (0 or more pairs of graphics files)

| |- \<unique\_name\>\_s.png

|--‘data’ folder

| |- \<unique\_name\>.zip (0 or more data files)

| |- \<unique\_name\>.csv (0 or more)

| |- \<unique\_name\>.pdf (0 or more)

| |- \<unique\_name\>.xlsx (0 or more)

|-- ‘tmp’ folder

|-- ‘mef’ folder

| **Step** | **Major Activity**                                                                                                                | **References, Forms and Details**                                                                         |
|----------|-----------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| 1        | Install KernowForSaxon, or something equivalent to run XSLTs                                                                      | Kernow is a Graphical User Interface for XSLTs                                                            
                                                                                                                                                                                                                                                           
                                                                                                                                                The trial version is free, and permits 100 executions. After that, one needs to purchase a basic licence.  |
| 2        | Point the input at the folder containing the metadata file(s)                                                                     
                                                                                                                                               
            The application can process one or many metadata records in batch mode                                                             
                                                                                                                                               
            Metadata names need to have a \<unique\_name\>.xml                                                                                 
                                                                                                                                               
            Input folder is usually “metaGraphics”                                                                                             | This process is normally run after the graphics links have been added (305-06).                           |
| 3        | The Xslt will need some customization for each end-user application                                                               
                                                                                                                                               
            Drive, path                                                                                                                        | A sample Xslt is in 305-F03                                                                               
                                                                                                                                                                                                                                                           
                                                                                                                                                This \*may\* require Saxon-PE, at a cost of about 50 UK pounds                                             |
| 4        | Point at the XSLT to add the data links:                                                                                          
                                                                                                                                               
            Data as flat files (one or more)                                                                                                   
                                                                                                                                               
            External website                                                                                                                   
                                                                                                                                               
            Web map server files                                                                                                               |                                                                                                           |
| 5        | Point the output at the result folder                                                                                             
                                                                                                                                               
            Output folder is usually “metaGraphicsData”                                                                                        
                                                                                                                                               
            the data XSLT *expects* the ../data folder for the data files to contain zero or more files with extension zip, csv, xlsx or pdf.  
                                                                                                                                               
            the XSLT adds the linking code                                                                                                     | Output metadata will be augmented with links to any and all data files                                    |
| 6        | Check the resulting metadata is valid                                                                                             
                                                                                                                                               
            Choose the validation tab in Kernow                                                                                                
                                                                                                                                               
            Point the input folder at the translated folder (e.g. metaGraphics)                                                                
                                                                                                                                               
            Point at the NAP schema (often located at C:\\DFO-MPO\\jMW2 NAP\\schema\\schema.xsd)                                               |                                                                                                           |
| 7        | If the results are not valid, examine the records with a xml editor and fix                                                       | A free xml editor that can be downloaded is notepad++                                                     |
