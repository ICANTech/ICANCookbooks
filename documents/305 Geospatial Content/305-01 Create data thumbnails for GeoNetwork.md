**Purpose:**

This document describes how to create a large and small thumbnail for a metadata record from an existing image, subsequently used by GeoNetwork to create somewhat like a Google search result. This description uses ImageMagick, but many other applications could be used.

ImageMagick has huge image manipulation capability; this process just describes a basic resizing operation to generate thumbnails. ImageMagick can also improve a wide variety of source image deficiencies.

| **Step** | **Major Activity**                                      | **References, Forms and Details**                                                                                                                           |
|----------|---------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1        | Download and install ImageMagick                        | http://www.imagemagick.org/script/download.php                                                                                                              |
| 2        | Use IMDisplay:                                          
                                                                     
            Open desired file                                        
                                                                     
            Click "Transform", then "Trim Edges"�                     | Removes blank space around source image                                                                                                                     |
| 3        | Resize:                                                 
                                                                     
            Click "View"�, then "Resize"�                              
                                                                     
            Enter desired size result                                | Generally use                                                                                                                                               
                                                                                                                                                                                                                                   
                                                                      800 x 800 pixels for large thumbnail                                                                                                                         
                                                                                                                                                                                                                                   
                                                                      180 x 180 pixels for small thumbnail                                                                                                                         |
| 4        | Save:                                                   
                                                                     
            Click "file"�, then "save as.."�                           
                                                                     
            Choose appropriate filename with desired extension       | Place the results in the desired folder - usually "thumbnails"                                                                                              
                                                                                                                                                                                                                                   
                                                                      The large thumbnail image should be the same filename as the metadata name, with the desired extension (e.g. ".png")                                         
                                                                                                                                                                                                                                   
                                                                      The small thumbnail image should be the same filename as the metadata name, with the extension (e.g. "_s.png"�)                                              
                                                                                                                                                                                                                                   
                                                                      Caution: if the result filename and extension is the same as the source and in the same folder, the source file will be over-written (usually not desired).  |
| 5        | Check results:                                          
                                                                     
            Open folder containing thumbnails                        
                                                                     
            Hover over files to confirm dimensions, format and size  
                                                                     
            Open file                                                | Examine thumbnail properties for desired properties                                                                                                         
                                                                                                                                                                                                                                   
                                                                      If not correct, redo                                                                                                                                         |
