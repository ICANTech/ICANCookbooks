**Purpose:**

To stop a GeoNetwork application running on Linux when something goes wrong.

| **Step** | **Major Activity**              | **References, Forms and Details**                       |
|----------|---------------------------------|---------------------------------------------------------|
| **1**    | In Linux shell,                 
                                             
            ps -ef &#124 grep java               | Provides a list of processes running, filtered for java |
| **2**    | Note IDs of process(es) to stop |                                                         |
| **3**    | kill -9 \<processid\>           |                                                         |
| **4**    | check again with:               
            ps -ef | grep java               |                                                         |
