<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns="http://hl7.org/fhir"
		xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL"
		xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI"
		xmlns:dc="http://www.omg.org/spec/DD/20100524/DC"
		xmlns:zeebe="http://camunda.org/schema/zeebe/1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/bpmn:definition">
    <xsl:message>Found definition with id: <xsl:value-of select="@id"/></xsl:message>
    <xsl:for-each select="bpmn:process">
      <xsl:for-each select="bpmn:laneSet">
	<xsl:for-each select="bpmn:lane">
	  <xsl:variable name="actorType" select="bpmn:extensionElements/zeebe:properties[@name='actorType'][1]/@value"/>
	  <xsl:choose>
	    <xsl:when test="actorType!= ''">
	      <ActorDefinition >
		<id>
		  <xsl:attribute name="value"><xsl:value-of select="@id"/></xsl:attribute> 
		</id>
		<meta>
		  <profile value="http://smart.who.int/base/StructureDefinition/SGActor"/>
		</meta>
		<text>
		  <status value="generated"/>
		  <div xmlns="http://www.w3.org/1999/xhtml">
	            <table class="grid">
		      <tr>
			<td><b>Actor: <xsl:value-of select="@id"/></b></td>
			<td><xsl:value-of select="@name"/></td>
			<td>Type: system</td></tr><tr><td colspan="3"/></tr> <!-- what do we do here?  how do we know -->
		    </table>
		  </div>
		</text>
		<extension url="http://smart.who.int/base/StructureDefinition/Sgcode">
		  <valueCoding>
		    <system
			value="http://smart.who.int/ips-pilgrimage/CodeSystem/IPS.HAJJ.ACTOR"/>
		    <code value="hcemr"/>
		  </valueCoding>
		</extension>
		<url value="http://smart.who.int/ips-pilgrimage/ActorDefinition/HCEMR"/>
		<identifier>
		  <value value="HCEMR"/>
		</identifier>
		<version value="1.0.0"/>
		<name value="HCEMR"/>
		<title value="Host Country EMR"/>
		<status value="draft"/>
		<experimental value="false"/>
		<date value="2024-04-25T23:10:05+00:00"/>
		<publisher value="WHO"/>
		<contact>
		  <name value="WHO"/>
		  <telecom>
		    <system value="url"/>
		    <value value="http://who.int"/>
		  </telecom>
		  <telecom>
		    <system value="email"/>
		    <value value="smart@who.int"/>
		  </telecom>
		</contact>
		<description value="Host Country EMR"/>
		<type value="system"/>
	      </ActorDefinition>
	    </xsl:when>
	    <xsl:otherwise>
	      <xsl:message>No actorType extension found for Lane: <xsl:value-of select="@name"/></xsl:message>
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
  </xsl:template>
</xsl:stylesheet>
