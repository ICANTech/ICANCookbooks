<?xml version="1.0"?>
<xsl:transform version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    
    xmlns:gmd="http://www.isotc211.org/2005/gmd"
    xmlns:gts="http://www.isotc211.org/2005/gts" 
    xmlns:gco="http://www.isotc211.org/2005/gco" 
    xmlns:oldgml="http://www.opengis.net/gml"
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:srv="http://www.isotc211.org/2005/srv" 
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:mcp="http://bluenet3.antcrc.utas.edu.au/mcp"
    exclude-result-prefixes="xsi mcp oldgml srv gts">
    <xsl:output method="xml" indent="yes" />

    <!-- replace language statement -->
    <xsl:template match="gmd:language">
			<gmd:language>
				<gco:CharacterString>eng</gco:CharacterString>
			</gmd:language>
		</xsl:template>

    <!-- replace metadata standard statement -->
    <xsl:template match="gmd:metadataStandardName">
			<gmd:metadataStandardName>
				<gco:CharacterString>North American Profile of ISO19115:2003 - Geographic information - Metadata</gco:CharacterString>
			</gmd:metadataStandardName>
		</xsl:template>

    <!-- replace metadata version statement -->
    <xsl:template match="gmd:metadataStandardVersion">
	    <gmd:metadataStandardVersion>
	    	<gco:CharacterString>NAP - CAN/CGSB-171.100-2009</gco:CharacterString>
	    </gmd:metadataStandardVersion>
		
		<!-- test for DatsetURI, include if present -->
		<gmd:dataSetURI>
			<gco:CharacterString>
				<xsl:value-of select="/mcp:MD_Metadata/gmd:dataSetURI" />
			</gco:CharacterString>
		</gmd:dataSetURI>

		<!-- add locale (eng) -->
	    <gmd:locale>
	      <gmd:PT_Locale id="eng">
	      	<gmd:languageCode>
	        	<gmd:LanguageCode codeList="http://www.loc.gov/standards/iso639-2/php/English_list.php" codeListValue="eng">English</gmd:LanguageCode>
	        </gmd:languageCode>
	        <gmd:characterEncoding>
	        	<gmd:MD_CharacterSetCode codeList="http://www.isotc211.org/2005/resources/Codelist/gmxCodelists.xml#MD_CharacterSetCode" codeListValue="utf8">utf8</gmd:MD_CharacterSetCode>
	      	</gmd:characterEncoding>
	      </gmd:PT_Locale>
	    </gmd:locale>
		</xsl:template>

    <!-- delete revision date section -->
    <xsl:template match="mcp:revisionDate" />		
		
    <!-- delete dataSetURI section -->
    <xsl:template match="gmd:dataSetURI" />		
		
		<!-- change root element in file -->
    <xsl:template match ="/*">
    	<gmd:MD_Metadata>
      	<xsl:apply-templates/>
    	</gmd:MD_Metadata>
    </xsl:template>
    
		<!-- change DataIdentification element in file -->
    <xsl:template match ="mcp:MD_DataIdentification">
    	<gmd:MD_DataIdentification>
      	<xsl:apply-templates/>
    	</gmd:MD_DataIdentification>
    </xsl:template>

		<!-- change TemporalExtent element in file -->
    <xsl:template match ="mcp:EX_TemporalExtent">
    	<gmd:EX_TemporalExtent>
      	<xsl:apply-templates/>
    	</gmd:EX_TemporalExtent>
    </xsl:template>

		<!-- replace the url of gml namespace (nodes) -->
    <xsl:template match="oldgml:*">
        <xsl:element name="gml:{local-name()}" >
          <xsl:apply-templates select="@* | node()" />
        </xsl:element>
    </xsl:template>

		<!-- replace the url of gml namespace (attributes) -->
    <xsl:template match="@oldgml:*">
        <xsl:attribute name="gml:{local-name()}" >
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>
     
		<!-- pass other elements in file unchanged -->
		<xsl:template match="@*|node()">
		    <xsl:copy copy-namespaces="no" >
		        <xsl:apply-templates select="@*|node()"/>
		    </xsl:copy>
		</xsl:template>

</xsl:transform>

