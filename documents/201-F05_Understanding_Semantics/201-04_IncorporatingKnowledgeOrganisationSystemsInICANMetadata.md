## Incorporating Knowledge Organisation Systems in ICAN Metadata ##

### Process Number: 201-04 ###

### Purpose ###
To use Semantic Web Knowledge Organisation Systems either discovered by process [201-01](https://github.com/ICANTech/ICANCookbooks/blob/master/documents/201-F05_Understanding_Semantics/201-01_DiscoveringExistingSemanticResources.md "201-01") or defined and published by processes [201-02](https://github.com/ICANTech/ICANCookbooks/blob/master/documents/201-F05_Understanding_Semantics/201-02_DefiningTheContentOfAKnowledgeOrganisationSystem.md "201-02") and [201-03](https://github.com/ICANTech/ICANCookbooks/blob/master/documents/201-F05_Understanding_Semantics/201-03_MakingTheContentOfAKnowledgeOrganisationSystemAvailable.md "201-03") to annotate ICAN metadata.

|**Step**|**Details**|**Reference**|
|--------|-----------|-------------|
| 1 | Identify the International Coastal Atlas Network metadata field to be annotated with a Semantic Web concept | |
| 2 | Using process [201-01][1], identify the [URL][2] of the concept(s) to be used to annotate the metadata field | Form [201-F02][3] gives the access methods for individual concepts published on the [NERC Vocabulary Server][4] |
| 3 | Enter the URL as the character string value in a `gco:characterField` XML element or, preferably, as a reference from an anchor field using `xlink:href="http://..."` syntax | Example syntax: <ul><li>[`gco:characterField`][5]</li><li>[`xlink:href="http://..."`][6]</li></ul> |


### Created by: ###
Adam Leadbetter

### Approved by process owner / date: ###

[1]: https://github.com/ICANTech/ICANCookbooks/blob/master/documents/201-F05_Understanding_Semantics/201-01_DiscoveringExistingSemanticResources.md
[2]: http://en.wikipedia.org/wiki/Url
[3]: https://github.com/ICANTech/ICANCookbooks/blob/master/documents/201-F05_Understanding_Semantics/201-F02_NERCVocabularyServerAccess.md
[4]: http://vocab.nerc.ac.uk
[5]: https://github.com/ICANTech/ICANCookbooks/blob/master/documents/201-F05_Understanding_Semantics/201-F03_IncorporatingURIsInMetadata.md#using-gcocharacterstring-syntax
[6]: https://github.com/ICANTech/ICANCookbooks/blob/master/documents/201-F05_Understanding_Semantics/201-F03_IncorporatingURIsInMetadata.md#using-xlinkhrefhttp-syntax