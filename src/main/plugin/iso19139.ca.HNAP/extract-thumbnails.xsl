<?xml version="1.0" encoding="UTF-8"?>
<!--
  ~ Copyright (C) 2001-2016 Food and Agriculture Organization of the
  ~ United Nations (FAO-UN), United Nations World Food Programme (WFP)
  ~ and United Nations Environment Programme (UNEP)
  ~
  ~ This program is free software; you can redistribute it and/or modify
  ~ it under the terms of the GNU General Public License as published by
  ~ the Free Software Foundation; either version 2 of the License, or (at
  ~ your option) any later version.
  ~
  ~ This program is distributed in the hope that it will be useful, but
  ~ WITHOUT ANY WARRANTY; without even the implied warranty of
  ~ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
  ~ General Public License for more details.
  ~
  ~ You should have received a copy of the GNU General Public License
  ~ along with this program; if not, write to the Free Software
  ~ Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA
  ~
  ~ Contact: Jeroen Ticheler - FAO - Viale delle Terme di Caracalla 2,
  ~ Rome - Italy. email: geonetwork@osgeo.org
  -->

<xsl:stylesheet   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" 
						xmlns:gco="http://www.isotc211.org/2005/gco"
						xmlns:srv="http://www.isotc211.org/2005/srv"
						xmlns:gmd="http://www.isotc211.org/2005/gmd">

	<xsl:template match="gmd:MD_Metadata">
		<thumbnail>
			<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:graphicOverview/gmd:MD_BrowseGraphic
				|gmd:identificationInfo/srv:SV_ServiceIdentification/gmd:graphicOverview/gmd:MD_BrowseGraphic
				|gmd:identificationInfo/*[@gco:isoType='gmd:MD_DataIdentification']/gmd:graphicOverview/gmd:MD_BrowseGraphic
				|gmd:identificationInfo/*[@gco:isoType='srv:SV_ServiceIdentification']/gmd:graphicOverview/gmd:MD_BrowseGraphic
				">
        <xsl:choose>
          <xsl:when test="gmd:fileDescription/gco:CharacterString = 'large_thumbnail' and gmd:fileName/gco:CharacterString != ''">
            <large lang="eng">
              <xsl:value-of select="gmd:fileName/gco:CharacterString" />
            </large>
          </xsl:when>
          <xsl:when test="gmd:fileDescription/gco:CharacterString = 'large_thumbnail_fre' and gmd:fileName/gco:CharacterString != ''">
            <large lang="fre">
              <xsl:value-of select="gmd:fileName/gco:CharacterString" />
            </large>
          </xsl:when>
          <xsl:when test="gmd:fileDescription/gco:CharacterString = 'thumbnail' and gmd:fileName/gco:CharacterString != ''">
            <small lang="eng">
              <xsl:value-of select="gmd:fileName/gco:CharacterString" />
            </small>
          </xsl:when>
          <xsl:when test="gmd:fileDescription/gco:CharacterString = 'thumbnail_fre' and gmd:fileName/gco:CharacterString != ''">
            <small lang="fre">
              <xsl:value-of select="gmd:fileName/gco:CharacterString" />
            </small>
          </xsl:when>
        </xsl:choose>
			</xsl:for-each>
		</thumbnail>
	</xsl:template>

</xsl:stylesheet>
