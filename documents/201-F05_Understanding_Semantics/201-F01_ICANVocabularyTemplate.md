## 201-F01 Knowledge Organisation System development worksheets ##

The simplest way for an ICAN community member to develop a new controlled vocabulary or thesaurus (or propose new content for an existing vocabulary or thesaurus) for incorporation within the framework is to create two worksheets in a spreadsheet: one for concept names and definitions; the other for relationships between concepts.

### Concept names and definitions ###

The first worksheet, illustrated below, should contain columns for
1. Concept key
	- An identifier for the concept, unique within the vocabulary. It does not need to carry any meaning.
2. Concept name and title
3. Concept alternative name (e.g. abbreviation)
4. Concept definition.

Concept Key | Concept Name and Title | Concept Alternative Name | Concept Definition
------------|------------------------|--------------------------|-------------------
e.g. *74PQ* | e.g. *Plymouth Quest* | e.g. *PQ* | e.g. *{"title": "RV","callsign": "MEEU8", "platformClass": "research vessel", "commissioned": "2004-03-24","previous_name": "Sigurbjorg"}*

Each concept must only occupy one row of the worksheet. If the definition needs to carry some structured information (such as information regarding the identity of a ship’s hull or the bounding box of a geographic area), this should be encoded using an alternative to XML, such as the JavaScript Object Notation (JSON) standard, i.e. enclosed in curly brackets and formed of “key”:”value” pairs separated by commas. For example:

```javascript
{
	"title": "RV", 
	"callsign": "MEEU8", 
	"platformClass": "research vessel", 
	"commissioned": "2004-03-24",
	"previous_name": "Sigurbjorg"
}
```

### Concept relationships ###

The second worksheet should contain three columns describing the relationship between concepts:
1. Subject
	- The subject of the sentence describing the relationship.
2. Relationship
	- Narrower, broader, related or sameAs mapping.
3. Object
	- The object of the sentence describing the relationship.

Subject  |  Relationship  |  Object
---------|----------------|--------
e.g. *74PQ (“Plymouth Quest”)*  | e.g. *Is narrower than* | e.g. *[http://vocab.nerc.ac.uk/collection/L06/current/31/](http://vocab.nerc.ac.uk/collection/L06/current/31/) (“research vessel”)*
e.g. *74PQ (“Plymouth Quest”)*  | e.g. *Is narrower than* | e.g. *[http://vocab.nerc.ac.uk/collection/L19/current/SDNKG04/](http://vocab.nerc.ac.uk/collection/L19/current/SDNKG04/) (“platform”)*

#### Valid relationships: ####
- Is narrower than
- Is broader than
- Is loosely related to
- Is the same as

### Supporting information required ###
- Domain scope: e.g. *“Thesaurus containing coastal erosion dataset (including GIS layer) terms compiled by ICAN and mapped to a global thesaurus. Includes both markup and discovery terms from the mapped components.”*
- Content governance body: e.g. *International Coastal Atlas Network*

### Created by: ###
Adam Leadbetter