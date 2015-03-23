**Purpose:**

This document is a step-by-step guide explaining how to connect your atlas as a node in the International Coastal Web Atlas (ICWA) prototype hosted at [ican2.ucc.ie](http://ican2.ucc.ie)*/*. This document is aimed specifically at members of the International Coastal Atlas Network community and more generally at scientists, data managers, and system developers.

| **Step** | **Major Activity**                         | **References, Forms and Details**          |         |-------------------------------------------------------|--------------------------------------------|
|     1    | Install a standards-compliant CSW (metadata server)        |                            |
|     2    | Ensure the metadata with keywords is in one of four forms: |                            |
|          |    1. uri only                             |  the label-only format (2) is common, but causes extra effort by the ontology-matching engine. |
|          |    2. label only                           |                                            |
|          |    3. both uri and label                   |                                            |
|          |    4. uncontrolled free text               |                                            |
|     3    | Provide local keyword relationship to ICAN global system (optional)   |                 |
|     4    | Provide CSW connection details to ICAN administrator:                 |                 |
|          |    * URL of your CSW server                |                                            |
|          |    * Login and password for accessing metadata through your CSW server (note 4.1) |Login and password is required only if metadata records are not public (**normally not needed**) |
|          |    * Logo of your atlas (note 4.2)         |  Atlas logo is **optional** but desirable. Image should be 250x250 PNG.|
|          |    * which of 4 methods (above) used for encoding keywords            |                  |
|          |    * If you are using method 1, 2 or 3 for keyword encoding then you will need to provide the following information:  |     |
|          |             a. URI of the Semantic Web Service (SWS) responsible for delivering your KOS  | Required if other than the NERC Vocabulary Server and the CMRC SWS is used |
|          |             b. URI of the schema containing the concepts used as metadata keywords | Basically the thesaurus with definitions      |
|     5    | ICAN administrator implements details      | Typical elapsed time is one month          |                                                        |
|     6    | Connection after proviiding info to ICAN?  |                                            |                                                       
|          | * If yes, then Done                        |                                            |                            
|          | * If not, Make Changes                     |                                            |

