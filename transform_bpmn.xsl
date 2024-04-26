<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns="http://hl7.org/fhir"
		xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL"
		xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI"
		xmlns:dc="http://www.omg.org/spec/DD/20100524/DC"
		xmlns:zeebe="http://camunda.org/schema/zeebe/1.0"
		xmlns:xalan="http://xml.apache.org/xslt"  
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/bpmn:definitions">
    <Bundle>
      <entry>
	<xsl:message>Found definition with id: <xsl:value-of select="@id"/></xsl:message>
	<xsl:for-each select="bpmn:process">
	  <xsl:for-each select="bpmn:laneSet">
	    <xsl:message>Processing LaneSet</xsl:message>
	    <xsl:for-each select="//bpmn:lane"> <!-- we may have childLaneSets to deal with -->
	      <xsl:variable name="actorId" select="@id"/>
	      <xsl:variable name="actorName" select="@name"/>
	      <xsl:variable name="actorDescription" select="bpmn:documentation/text()"/>
	      <xsl:variable name="actorType" select="bpmn:extensionElements/zeebe:properties/zeebe:property[@name='actorType'][1]/@value"/>
	      <xsl:variable name="actorCS" select="bpmn:extensionElements/zeebe:properties/zeebe:property[@name='actorCS'][1]/@value"/>
	      <xsl:choose>
		<xsl:when test="$actorType!= '' and $actorCS != ''">
		  <xsl:message>Found actorType (<xsl:value-of select="$actorType"/>) for role (<xsl:value-of select="$actorName"/>) with id (<xsl:value-of select="$actorId"/>) </xsl:message>
		  <resource>
		    <ActorDefinition >
		      <id>
			<xsl:attribute name="value"><xsl:value-of select="$actorId"/></xsl:attribute> 
		      </id>
		      <meta>
			<xsl:choose>
			  <xsl:when test="$actorType!= 'system'">
			    <profile value="http://smart.who.int/base/StructureDefinition/SGPersona"/>
			  </xsl:when>
			  <xsl:otherwise>
			    <profile value="http://smart.who.int/base/StructureDefinition/SGActor"/>
			  </xsl:otherwise>
			</xsl:choose>
		      </meta>
		      <type><xsl:attribute name="value"><xsl:value-of select="$actorType"/></xsl:attribute></type>
		      <text>
			<status value="generated"/>
			<div xmlns="http://www.w3.org/1999/xhtml">
			  <table class="grid">
			    <tr>
			      <td><b>Actor: <xsl:value-of select="$actorId"/></b></td>
			      <td><xsl:value-of select="$actorName"/></td>
			      <td>Type: <xsl:value-of select="$actorType"/></td></tr><tr><td colspan="3"/>
			    </tr>
			  </table>
			</div>
		      </text>
		      <extension url="http://smart.who.int/base/StructureDefinition/Sgcode">
			<valueCoding>
			  <system><xsl:attribute name="value"><xsl:value-of select="$actorCS"/></xsl:attribute></system>
			  <code><xsl:attribute name="value"><xsl:value-of select="$actorId"/></xsl:attribute></code>
			</valueCoding>
		      </extension>
		      <identifier>
			<value><xsl:attribute name="value"><xsl:value-of select="$actorId"/></xsl:attribute></value>
		      </identifier>
		      <name><xsl:attribute name="value"><xsl:value-of select="$actorName"/></xsl:attribute></name>
		      <title><xsl:attribute name="value"><xsl:value-of select="$actorName"/></xsl:attribute></title>
		      <status value="draft"/>
		      <experimental value="false"/>
		      <description><xsl:attribute name="value"><xsl:value-of select="$actorDescription"/></xsl:attribute></description>
		    </ActorDefinition>
		  </resource>
		</xsl:when>
		<xsl:otherwise>
		  <xsl:message>No actorType or codesystem extension found for Lane (<xsl:value-of select="@name"/>)</xsl:message>
		</xsl:otherwise>
	      </xsl:choose>
	    </xsl:for-each>
	  </xsl:for-each>
	</xsl:for-each>
	<!-- <Html> -->
	<!--   <body> -->
	<!-- 	<h2>My CD Collection</h2> -->
	<!-- 	<table border="1"> -->
	<!-- 	  <tr bgcolor="#9acd32"> -->
	<!--         <th>Title</th> -->
	<!--         <th>Artist</th> -->
	<!-- 	  </tr> -->
	<!-- 	  <xsl:for-each select="catalog/cd"> -->
	<!-- 	    <tr> -->
	<!--           <td><xsl:value-of select="title" /></td> -->
	<!--           <td><xsl:value-of select="artist" /></td> -->
	<!-- 	    </tr> -->
	<!-- 	  </xsl:for-each> -->
	<!-- 	</table> -->
	<!--   </body> -->
	<!-- </html> -->
      </entry>
    </Bundle>
  </xsl:template>



  <!-- pretty print output -->
  <xsl:output method="xml" encoding="UTF-8" indent="yes" xalan:indent-amount="2"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:template match="*">
    <xsl:copy>
      <xsl:copy-of select="@*" />
      <xsl:apply-templates />
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
