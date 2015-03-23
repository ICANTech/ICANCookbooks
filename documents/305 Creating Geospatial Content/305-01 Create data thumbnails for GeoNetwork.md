**Purpose:**

This document describes how to create a large and small thumbnail for a metadata record from an existing image, subsequently used by GeoNetwork to create somewhat like a Google search result. This description uses ImageMagick, but many other applications could be used.

ImageMagick has huge image manipulation capability; this process just describes a basic resizing operation to generate thumbnails. ImageMagick can also improve a wide variety of source image deficiencies.

| **Step** | **Major Activity**     | **References, Forms and Details**               |
|----------|------------------------|-------------------------------------------------|
|     1    | Download and install ImageMagick                        | http://www.imagemagick.org/script/download.php |
|          |                                                         |                |
|     2    | Use IMDisplay:                                          |                |
|          |       * Open desired file                               |                |
|          |       * Click "Transform", then "Trim Edges"ù            | Removes blank space around source image       |
|     3    | Resize:                                                 |                                               |
|          |       * Click "View"ù, then "Resize"ù                     | Generally use                                 |
|          |       * Enter desired size result                       |   * 800 x 800 pixels for large thumbnail      |
|          |                                                         |   * 180 x 180 pixels for small thumbnail      |
|     4    | Save:                                                   
                                                                     
|          |       * Click "file"ù, then "save as.."ù                  |  * Place the results in the desired folder - usually "thumbnails" |        
|          |       * Choose appropriate filename with desired extension       |                                                          |
|          |                                                         |  * The large thumbnail image should be the same filename as the metadata name, with the desired extension (e.g. ".png")  |
|          |                                                         |  * The small thumbnail image should be the same filename as the metadata name, with the extension (e.g. "_s.png"ù)  |
|          |                                                         |  * Caution: if the result filename and extension is the same as the source and in the same folder, the source file will be over-written (usually not desired).)  |
|     5    | Check results:                                          |  * Examine thumbnail properties for desired properties  |
|          |        * Open folder containing thumbnails              |  * If not correct, redo                                 |
|          |        * Hover over files to confirm dimensions, format and size  |                                               |
|          |        * Open file                                                |                                               |
