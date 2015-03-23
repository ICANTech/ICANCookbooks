Last Edit Date: 2015-March-20                                                                   305-F02

***Metadata keyword encoding***

There is no particular keyword requirement as to the ISO 19115/19119 metadata profile used, but metadata records need to include keywords expressed in one of the following four encoding forms.

**1.  URI only** (preferred format)

Encode as character strings (gco:CharacterString), each containing the URI of a concept from your local KOS (if any). This encoding form is currently the favoured recommendation as it uses a direct URI link to the semantic keyword concept.


> An example:

```
<gmd:descriptiveKeywords>
   <gmd:MD_Keywords> 
    <gmd:keyword> 
      <gco:CharacterString> 
        http://vocab.nerc.ac.uk/collection/A03/current/Beach 
      </gco:CharacterString> 
    </gmd:keyword>
    <gmd:thesaurusName>
       <gmd:CI_Citation> 
        <gmd:title> 
          <gco:CharacterString> 
            Oregon Coastal Atlas Coastal Erosion Thesaurus discovery terms 
          </gco:CharacterString> 
        </gmd:title> 
        <gmd:date> 
          <gmd:CI_Date> 
            <gmd:date> 
              <gco:Date>2011-08-19</gco:Date> 
            </gmd:date> 
            <gmd:dateType> 
              <gmd:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/ resources/Codelist/gmxCodelists.xml#CI_DateTypeCode" codeListValue="revision"> 
                Revision 
              </gmd:CI_DateTypeCode>
			</gmd:dateType> 
          </gmd:CI_Date>
		</gmd:date> 
      </gmd:CI_Citation> 
    </gmd:thesaurusName> 
  </gmd:MD_Keywords> 
</gmd:descriptiveKeywords>
```

**2.  Label only** (acceptable, but not preferred)

Encode as character strings, each containing the label of a concept from your local KOS (if any). However, this does not support a direct link to the concept. Instead, the mediator must search all the local KOS for the relevant concept based on the label. Therefore, this encoding form is not preferred.

> An example:

```
<gmd:descriptiveKeywords>
   <gmd:MD_Keywords> 
    <gmd:keyword> 
      <gco:CharacterString>Beach</gco:CharacterString> 
    </gmd:keyword> 
    <gmd:thesaurusName> 
      <gmd:CI_Citation> 
        <gmd:title> 
          <gco:CharacterString> 
            Oregon Coastal Atlas Coastal Erosion Thesaurus discovery terms 
          </gco:CharacterString> 
        </gmd:title> 
        <gmd:date> 
          <gmd:CI_Date> 
            <gmd:date> 
              <gco:Date>2011-08-19</gco:Date> 
            </gmd:date> 
            <gmd:dateType> 
              <gmd:CI_DateTypeCode 
codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/ resources/Codelist/gmxCodelists.xml#CI_DateTypeCode" codeListValue="revision">Revision 
              </gmd:CI_DateTypeCode>
			</gmd:dateType> 
          </gmd:CI_Date>
		</gmd:date> 
      </gmd:CI_Citation> 
    </gmd:thesaurusName> 
  </gmd:MD_Keywords> 
</gmd:descriptiveKeywords>
``` 

**3.  As both uri and label** (preferred in the long term; not presently tested by ICWA)

Encode as anchor elements (gmx:Anchor), each containing both the URI and label of a concept from your local KOS (if any). This encoding form is currently not supported by GeoNetwork (version 2.6.4 and earlier) and, therefore, has not been tested by ICWA. In the long term this will be the preferred encoding form as it supports both a direct URI link to the concept and a label of this concept.

> An example:
```
<gmd:descriptiveKeywords>
   <gmd:MD_Keywords> 
    <gmd:keyword> 
      <gmx:Anchor xlink:href="http://vocab.nerc.ac.uk/collection/A03/current/Beach">Beach</gmx:Anchor> 
    </gmd:keyword> 
    <gmd:thesaurusName> 
      <gmd:CI_Citation> 
        <gmd:title> 
          <gco:CharacterString> 
            Oregon Coastal Atlas Coastal Erosion Thesaurus discovery terms  
          </gco:CharacterString> 
        </gmd:title> 
        <gmd:date> 
          <gmd:CI_Date> 
            <gmd:date> 
              <gco:Date>2011-08-19</gco:Date> 
            </gmd:date> 
            <gmd:dateType> 
              <gmd:CI_DateTypeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/ resources/Codelist/gmxCodelists.xml#CI_DateTypeCode" codeListValue="revision">Revision</gmd:CI_DateTypeCode>
			</gmd:dateType> 
          </gmd:CI_Date>
		</gmd:date> 
      </gmd:CI_Citation> 
    </gmd:thesaurusName> 
  </gmd:MD_Keywords> 
</gmd:descriptiveKeywords> 
```

**4.  Uncontrolled free text** (not recommended)

Encode as character strings containing free text keywords. This is the simplest encoding form. It is not recommended because of its lack of a KOS, but it is supported to enable non-semantic metadata catalogues to be readily connected to the ICWA. Therefore, smart search functionality will not be supported for this encoding form.

> An example:

```
<gmd:descriptiveKeywords>
   <gmd:MD_Keywords> 
    <gmd:keyword> 
      <gco:CharacterString>Beach</gco:CharacterString> 
    </gmd:keyword> 
  </gmd:MD_Keywords> 
</gmd:descriptiveKeywords> 
