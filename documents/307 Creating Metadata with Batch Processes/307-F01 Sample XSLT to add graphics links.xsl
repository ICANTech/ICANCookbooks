<?xml version="1.0" ?>

<xsl:transform version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:gco="http://www.isotc211.org/2005/gco"
	xmlns:gmd="http://www.isotc211.org/2005/gmd"
	xmlns:gmx="http://www.isotc211.org/2005/gmx"
	xmlns:gml="http://www.opengis.net/gml"
	xmlns:gss="http://www.isotc211.org/2005/gss"
	xmlns:gts="http://www.isotc211.org/2005/gts"
	xmlns:gsr="http://www.isotc211.org/2005/gsr"
	xmlns:gmi="http://www.isotc211.org/2005/gmi"
	xmlns:srv="http://www.isotc211.org/2005/srv"
	exclude-result-prefixes="xsi gss gts gsr gmi">

	<xsl:output method="xml" indent="yes" />

	<xsl:strip-space elements="*" />

    <xsl:template match="gmd:resourceMaintenance">
        <xsl:copy-of select = "." />
				<!-- 
				    the two thumbnail files are expected to be at 
				           ..\thumbnails\<metadataName>.png     and 
				           ..\thumbnails\<metadataName>_s.png 
				-->
				<xsl:variable name="interFile"  select="tokenize(base-uri(),'/')" />
				<xsl:variable name="metaFile"  select="substring-before($interFile[last()],'.')" />
	        <gmd:graphicOverview>
	            <gmd:MD_BrowseGraphic>
	                <gmd:fileName>
	                    <gco:CharacterString>
	                    	<xsl:value-of select = "concat($metaFile, '_s.png')" />
	                    </gco:CharacterString>
	                </gmd:fileName>
	                <gmd:fileDescription>
	                    <gco:CharacterString>thumbnail</gco:CharacterString>
	                </gmd:fileDescription>
	                <gmd:fileType>
	                    <gco:CharacterString>png</gco:CharacterString>
	                </gmd:fileType>
	            </gmd:MD_BrowseGraphic>
	        </gmd:graphicOverview>
	        <gmd:graphicOverview>
	            <gmd:MD_BrowseGraphic>
	                <gmd:fileName>
	                    <gco:CharacterString>
	                    	<xsl:value-of select = "concat($metaFile, '.png')" />
											</gco:CharacterString>
	                </gmd:fileName>
	                <gmd:fileDescription>
	                    <gco:CharacterString>large_thumbnail</gco:CharacterString>
	                </gmd:fileDescription>
	                <gmd:fileType>
	                    <gco:CharacterString>png</gco:CharacterString>
	                </gmd:fileType>
	            </gmd:MD_BrowseGraphic>
	        </gmd:graphicOverview>
	      </xsl:if>
    </xsl:template>

    <xsl:template match="*" >
        <xsl:copy>
            <xsl:copy-of select="@*" />
            <xsl:apply-templates />
        </xsl:copy>
    </xsl:template>

</xsl:transform>

