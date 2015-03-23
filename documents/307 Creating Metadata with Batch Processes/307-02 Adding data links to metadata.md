**Purpose:**

This document describes how to add data links to metadata for use in GeoServer. Often one would use this approach when doing batches of metadata. For single metadata entries, the included GeoNetwork authoring tool or an external authoring tool (like jNAP) would be simpler to use.

The process uses the Kernow graphical user interface. A Kernow licence (about 10 UK pounds) needs to be purchased after 100 executions. It also requires the use of an included java file, and this \*may\* require a Saxon-PE licence (untested with the free Kernow and Saxon versions).

If planning to perform batch operations, a rigid folder structure is needed. The expected seven-folder structure is:

```
Drive E:-- all\_metadata\_work
    |--specific\_metadata\_folder
        |-- ‘metadata’ folder
        |     |- \<unique\_name\>.xml (1 of more metadata files)
        |-- ‘metaGraphics’ folder
        |     |- \<unique\_name\>.xml (contents to be overwritten)
        |-- ‘metaGraphicsData’ folder
        |     |- \<unique\_name\>.xml (contents to be overwritten)
        |--‘thumbnails’ folder
        |     |- \<unique\_name\>.png (0 or more pairs of graphics files)
        |     |- \<unique\_name\>\_s.png
        |--‘data’ folder
        |     |- \<unique\_name\>.zip (0 or more data files)
        |     |- \<unique\_name\>.csv (0 or more)
        |     |- \<unique\_name\>.pdf (0 or more)
        |     |- \<unique\_name\>.xlsx (0 or more)
        |-- ‘tmp’ folder
        |-- ‘mef’ folder
```

| **Step** | **Major Activity**                          | **References, Forms and Details**                         |
|----------|---------------------------------------------|-----------------------------------------------------------|
|   1      | Install KernowForSaxon, or something equivalent to run XSLTs     | Kernow is a Graphical User Interface for XSLTs   |
|          |   http://kernowforsaxon.sourceforge.net/   | The trial version is free, and permits 100 executions. After that, one needs to purchase a basic licence (about 10 UK pounds).   |
|          |                                            |                                                            |
|   2      | Customize the Sample transfer options Xslt for each end-user application  | * Sample TransferOptions Xslt is in 307-F02    |
|          |  * modify drive and path to suit           |  This XSLT uses a java function, and will require Saxon-PE, at a cost of about 50 UK pounds.  A less-rigorous version without checking for file presence-absence would not require this purchase.  |
|          |  * modify the reference to an external website, as desired   |                                          |
|          |                                            |                                                            |
|   3      | Point Kernow input at the folder containing the metadata file(s)  | * The application can process one or many metadata records in batch mode |
|          |                                            | * Metadata names need to have a \<unique\_name\>.xml       |
|          |                                            | * This process is normally run after the graphics links have been added (307-01).  |
|          |                                            | * Input folder is thus usually named “metaGraphics” to keep it separate from the plain “metaGraphics” folder name  |
|          |                                            | * the data XSLT *expects* the ../data folder for the data files to contain zero or more files with extension zip, csv, xlsx or pdf. |
|          |                                            |                                                            |
|   4      | Point Kernow at the XSLT to add the data links   | * for  desired External website, Web map server files, and zero or more data files  |
|          |                                            |                                                            |
|   5      | Point Kernow output at the result folder      | * The Output folder could be named “metaGraphicsData”   |
|          |                                            |          |
|          |                                            |                                                            |
|   6      | Run the XSLT                               | * the XSLT adds the linking code                           |
|          |                                            |                                                            |
|   7      | Check the resulting metadata is valid      |          |
|          |  * Choose the validation tab in Kernow     |                                                            |
|          |  * Point the input folder at the translated folder (e.g. metaGraphicsData |                                 |
|          |  * Point at the NAP schema                 | * if using jNAP editor, schema often located at C:\\DFO-MPO\\jMW2 NAP\\schema\\schema.xsd |
|          |                                            |                                                            |
|   8      | If the results are not valid, examine the records with a xml editor and fix  | * A free xml editor that can be downloaded is notepad++ |
|          |                                            |                                                            |