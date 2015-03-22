<?xml version="1.0" ?>

<xsl:transform version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:java="http://www.java.com/"
	xmlns:saxon="http://saxon.sf.net/"
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
	exclude-result-prefixes="xsi java xs saxon gss gts gsr gmi">


	<xsl:output method="xml" indent="yes" />

	<xsl:strip-space elements="*" />

	<!-- 
	Sample java function and xslt to add transfer options for hyperlink, data download, and map 
	-->
	
	<xsl:function name="java:file-exists" xmlns:file="java:java.io.File" as="xs:boolean">
		<xsl:param name="inFile" as="xs:string"/>
		<xsl:param name="base-uri" as="xs:string"/>
		<xsl:variable name="absolute-uri" select="resolve-uri($inFile, $base-uri)" as="xs:anyURI"/>
		<xsl:sequence select="file:exists(file:new($absolute-uri))"/>
	</xsl:function>

	<xsl:template match="gmd:MD_Distribution">
		<gmd:MD_Distribution>
			<gmd:distributionFormat>
				<gmd:MD_Format>
					<gmd:name>
						<gco:CharacterString>Zipped shapefile</gco:CharacterString>
					</gmd:name>
					<gmd:version>
						<gco:CharacterString>none</gco:CharacterString>
					</gmd:version>
				</gmd:MD_Format>
			</gmd:distributionFormat>

			<xsl:copy-of select="gmd:distributor" />

			<gmd:transferOptions>
				<gmd:MD_DigitalTransferOptions>
					<!-- hyperlink to external website -->
					<gmd:onLine>
						<gmd:CI_OnlineResource>
							<gmd:linkage>
								<gmd:URL>http://www.dfo-mpo.gc.ca/science/data-donnees/index-eng.html</gmd:URL>
							</gmd:linkage>
							<gmd:protocol>
								<gco:CharacterString>WWW:LINK-1.0-http--link</gco:CharacterString>
							</gmd:protocol>
							<gmd:name>
								<gco:CharacterString>DFO-MPO Scientific Data and Products</gco:CharacterString>
							</gmd:name>
							<gmd:description>
								<gco:CharacterString>Hyperlink to DFO Science website</gco:CharacterString>
							</gmd:description>
						</gmd:CI_OnlineResource>
					</gmd:onLine>

					<!-- link to datafile for download -->
				<xsl:variable name="interFile"  select="tokenize(base-uri(),'/')" />
				<xsl:variable name="metaFile"  select="substring-before($interFile[last()],'.')" />
				<xsl:variable name="actualPath"  select="lower-case('file:///E:///metadataData/fraser_river_currents/data/') " />
				<xsl:variable name="cons1Path" select="string-join( ($interFile[1],$interFile[2],$interFile[3]),'///')" />
				<xsl:variable name="constructedPath" select="string-join( ($cons1Path,$interFile[4],'data/'),'/')" />

					<!-- test for $metaFile + ".zip"  -->
					<xsl:variable name="dataFile2" select="string-join(($metaFile,'zip'),'.') " />
					<xsl:if test="java:file-exists($dataFile2, $constructedPath )" >
						<gmd:onLine>
							<gmd:CI_OnlineResource>
								<xsl:variable name = "fileID" select= "//gmd:fileIdentifier/gco:CharacterString " />
								<gmd:linkage>
									<gmd:URL>
										<xsl:value-of select = "string-join(('http://soggy.zoology.ubc.ca:8080/geonetwork/srv/en/resources.get?uuid=', $fileID, '&amp;fname=', $dataFile2, '&amp;access=private'),'') " />
									</gmd:URL>
								</gmd:linkage>
								<gmd:protocol>
									<gco:CharacterString>WWW:DOWNLOAD-1.0-http--download</gco:CharacterString>
								</gmd:protocol>
								<gmd:name>
									<gco:CharacterString>
										<xsl:value-of select= "$dataFile2" />
									</gco:CharacterString>
								</gmd:name>
								<gmd:description>
									<gco:CharacterString>zipfile for download</gco:CharacterString>
								</gmd:description>
							</gmd:CI_OnlineResource>
						</gmd:onLine>
					</xsl:if>

					<!-- test for $metaFile + ".pdf"  -->
					<xsl:variable name="dataFile4" select="string-join(($metaFile,'pdf'),'.') " />
					<xsl:if test="java:file-exists( $dataFile4, $constructedPath )" >
						<gmd:onLine>
							<gmd:CI_OnlineResource>
								<xsl:variable name = "fileID" select= "//gmd:fileIdentifier/gco:CharacterString " />
								<gmd:linkage>
									<gmd:URL>
										<xsl:value-of select = "string-join(('http://soggy.zoology.ubc.ca:8080/geonetwork/srv/en/resources.get?uuid=', $fileID, '&amp;fname=', $dataFile4, '&amp;access=private'),'') " />
									</gmd:URL>
								</gmd:linkage>
								<gmd:protocol>
									<gco:CharacterString>WWW:DOWNLOAD-1.0-http--download</gco:CharacterString>
								</gmd:protocol>
								<gmd:name>
									<gco:CharacterString>
										<xsl:value-of select= "$dataFile4" />
									</gco:CharacterString>
								</gmd:name>
								<gmd:description>
									<gco:CharacterString>PDF for download</gco:CharacterString>
								</gmd:description>
							</gmd:CI_OnlineResource>
						</gmd:onLine>
					</xsl:if>

					<!-- test for $metaFile + ".csv"  -->
					<xsl:variable name="dataFile5" select="string-join(($metaFile,'csv'),'.') " />
					<xsl:if test="java:file-exists( $dataFile5, $constructedPath )" >
						<gmd:onLine>
							<gmd:CI_OnlineResource>
								<xsl:variable name = "fileID" select= "//gmd:fileIdentifier/gco:CharacterString " />
								<gmd:linkage>
									<gmd:URL>
										<xsl:value-of select = "string-join(('http://soggy.zoology.ubc.ca:8080/geonetwork/srv/en/resources.get?uuid=', $fileID, '&amp;fname=', $dataFile5, '&amp;access=private'),'') " />
									</gmd:URL>
								</gmd:linkage>
								<gmd:protocol>
									<gco:CharacterString>WWW:DOWNLOAD-1.0-http--download</gco:CharacterString>
								</gmd:protocol>
								<gmd:name>
									<gco:CharacterString>
										<xsl:value-of select= "$dataFile5" />
									</gco:CharacterString>
								</gmd:name>
								<gmd:description>
									<gco:CharacterString>CSV for download</gco:CharacterString>
								</gmd:description>
							</gmd:CI_OnlineResource>
						</gmd:onLine>
					</xsl:if>

					<!-- test for $metaFile + ".xlsx"  -->
					<xsl:variable name="dataFile6" select="string-join(($metaFile,'xlsx'),'.') " />
					<xsl:if test="java:file-exists( $dataFile6, $constructedPath )" >
						<gmd:onLine>
							<gmd:CI_OnlineResource>
								<xsl:variable name = "fileID" select= "//gmd:fileIdentifier/gco:CharacterString " />
								<gmd:linkage>
									<gmd:URL>
										<xsl:value-of select = "string-join(('http://soggy.zoology.ubc.ca:8080/geonetwork/srv/en/resources.get?uuid=', $fileID, '&amp;fname=', $dataFile6, '&amp;access=private'),'') " />
									</gmd:URL>
								</gmd:linkage>
								<gmd:protocol>
									<gco:CharacterString>WWW:DOWNLOAD-1.0-http--download</gco:CharacterString>
								</gmd:protocol>
								<gmd:name>
									<gco:CharacterString>
										<xsl:value-of select= "$dataFile6" />
									</gco:CharacterString>
								</gmd:name>
								<gmd:description>
									<gco:CharacterString>XLSX for download</gco:CharacterString>
								</gmd:description>
							</gmd:CI_OnlineResource>
						</gmd:onLine>
					</xsl:if>

					<!-- WMS link for Interactive Map and Google Earth -->
					<gmd:onLine>
						<gmd:CI_OnlineResource>
							<gmd:linkage>
								<gmd:URL>http://soggy.zoology.ubc.ca:8080/geoserver/wms?service=WMS&amp;</gmd:URL>
							</gmd:linkage>
							<gmd:protocol>
								<gco:CharacterString>OGC:WMS-1.1.1-http-get-map</gco:CharacterString>
							</gmd:protocol>
							<gmd:name>
								<gco:CharacterString>
									<xsl:value-of select= "concat('dfo:',lower-case($metaFile)) " />
								</gco:CharacterString>
							</gmd:name>
							<gmd:description>
								<gco:CharacterString>
									<xsl:value-of select="//gmd:MD_DataIdentification/gmd:citation//gmd:title" />
								</gco:CharacterString>
							</gmd:description>
						</gmd:CI_OnlineResource>
					</gmd:onLine>
				</gmd:MD_DigitalTransferOptions>
			</gmd:transferOptions>
		</gmd:MD_Distribution>
	</xsl:template>

	<xsl:template match="*" >
		<xsl:copy>
			<xsl:copy-of select="@*" />
			<xsl:apply-templates />
		</xsl:copy>
	</xsl:template>

</xsl:transform>