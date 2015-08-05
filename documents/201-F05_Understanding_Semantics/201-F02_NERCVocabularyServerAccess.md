## 201-F02 Addressing Content of the NERC Vocabulary Server ##

### Reference 201-F02 ###

Once deployed on the NERC Vocabulary Server (NVS), a knowledge organization system can be accessed in much the same way as a web site, using Uniform Resource Locators ([URLs][24]) to navigate the NVS. The base URL for the NVS is:

- http://vocab.nerc.ac.uk

Catalogues of the SKOS concept collections and schemes hosted on the NVS can be accessed at:

- http://vocab.nerc.ac.uk/collection/
- http://vocab.nerc.ac.uk/scheme/

Once the identifier for an individual collections or schemes is known, it can then be accessed from:

- http://vocab.nerc.ac.uk/collection/{collection_id}/current/
	- e.g. http://vocab.nerc.ac.uk/collection/C17/current/ is the URL for the International Council for the Exploration of the Seas platform codes collection from which the example worksheets above were taken
- http://vocab.nerc.ac.uk/scheme/{scheme_id}/current/
	- e.g. http://vocab.nerc.ac.uk/scheme/ICANCOERO/current/ is the URL for the ICAN Coastal Erosion thesaurus

Finally, an individual concept can be accessed through this form of URL:

- http://vocab.nerc.ac.uk/collection/{collection_id}/current/{concept_id}/
	- e.g. http://vocab.nerc.ac.uk/collection/C17/current/74PQ/ gives access to the concept definition for “Plymouth Quest” which was described in the example worksheets above

The collection URLs also provide a mechanism for accessing any concepts which have been removed from the collection (known as deprecation), or only those concepts which are currently accepted members of the collection or all the concepts which have ever been part of the collection (the default if neither deprecated, accepted or all is specified as a suffix to the collection URL):

- http://vocab.nerc.ac.uk/collection/{collection_id}/current/deprecated/
- http://vocab.nerc.ac.uk/collection/{collection_id}/current/accepted/
- http://vocab.nerc.ac.uk/collection/{collection_id}/current/all/

The ../current/../ portion of the URLs given in this section is a shortcut to the most recent version of the collection or scheme. This can be replaced with an integer value in order to retrieve a given version of a collection or scheme.

In addition to this URL based access, application developers can make use of Simple Object Access Protocol ([SOAP][25]) based access described in the associated Web Services Description Language (WSDL) [document][26]. 

### Created by: ###
Adam Leadbetter

[24]: http://en.wikipedia.org/wiki/Url 
[25]: http://en.wikipedia.org/wiki/SOAP 
[26]: http://vocab.nerc.ac.uk/vocab2.wsdl 