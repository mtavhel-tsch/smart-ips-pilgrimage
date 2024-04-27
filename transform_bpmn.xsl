<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns="http://hl7.org/fhir"
		xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL"
		xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI"
		xmlns:dc="http://www.omg.org/spec/DD/20100524/DC"
		xmlns:zeebe="http://camunda.org/schema/zeebe/1.0"
		xmlns:xalan="http://xml.apache.org/xslt"  
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:key name="indexActorId" match="/bpmn:definitions/bpmn:process//bpmn:lane" use="@id" />
  
  
  <xsl:template match="/bpmn:definitions">
    <!-- we will use xsl:message to generate a shell script to create page content -->
    <!-- just throwing everything in a bundle so we can validate easily. really each should ouput to own file under input/resources -->
    <Bundle>

      <xsl:variable name="actors" select="/bpmn:definitions/bpmn:process//bpmn:lane"/>
      <xsl:variable name="innerActors" select="$actors[not(child::bpmn:childLaneSet)]"/>
      <xsl:variable name="collab" select="bpmn:collaboration[1]"/>
      <xsl:variable name="ig-slug" select="$collab/bpmn:extensionElements/zeebe:properties/zeebe:property[@name='ig-slug'][1]/@value"/>
      <xsl:variable name="ig-base-url" select="$collab/bpmn:extensionElements/zeebe:properties/zeebe:property[@name='ig-base-url'][1]/@value"/>
      <xsl:variable name="version" select="$collab/bpmn:extensionElements/zeebe:properties/zeebe:property[@name='version'][1]/@value"/>
      <xsl:variable name="publisher" select="$collab/bpmn:extensionElements/zeebe:properties/zeebe:property[@name='publisher'][1]/@value"/>
      <xsl:variable name="processes" select="bpmn:process"/>

      <xsl:variable name="ig-url" select="concat($ig-base-url,$ig-slug)"/>
      <xsl:variable name="trans-CS" select="concat($ig-url,'/CodeSystem/Transaction')"/>
      <xsl:variable name="actor-CS" select="concat($ig-url,'/CodeSystem/Actor')"/>
      <xsl:variable name="quest-CS" select="concat($ig-url,'/CodeSystem/UserTask')"/>
      
    <xsl:message>#!/bin/bash

#clean out the actor and transactions pages
cat &lt;&lt; EOF > input/pagecontent/transactions.md
These are the transactions for <b><xsl:value-of select="$ig-slug"/></b>
EOF

cat &lt;&lt; EOF > input/pagecontent/actors.md
These are the actors for <b><xsl:value-of select="$ig-slug"/></b>
EOF
    </xsl:message>    


      <!-- get unique actors across all processes by @id -->
      <xsl:for-each select="$innerActors[ count(. | key('indexActorId',@id)[1]) = 1]"> 

	<xsl:variable name="actorId" select="@id"/>
	<xsl:variable name="actorName" select="@name"/>
	<xsl:variable name="actorDescription" select="bpmn:documentation/text()"/>
	<xsl:variable name="actorType" select="bpmn:extensionElements/zeebe:properties/zeebe:property[@name='actorType'][1]/@value"/>
	<xsl:variable name="actor-page-slug">actor-<xsl:value-of select="$actorId"/></xsl:variable>
	<xsl:choose>
	  <xsl:when test="$actorType!= '' ">
	    <xsl:message>
#  Found actorType (<xsl:value-of select="$actorType"/>) for role (<xsl:value-of select="$actorName"/>) with id (<xsl:value-of select="$actorId"/>) 

touch input/pagecontent/<xsl:value-of select="$actor-page-slug"/>.md 

cat &lt;&lt; EOF >> input/pagecontent/actors.md
###  <xsl:value-of select="$actorName"/> {#<xsl:value-of select="$actorId"/>}
Type: <xsl:value-of select="$actorType"/>
<xsl:value-of select="$actorDescription"/>
{% include <xsl:value-of select="$actor-page-slug"/>.md %}


EOF
	    </xsl:message>	    
	    <entry>
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
		  <extension url="http://smart.who.int/base/StructureDefinition/Sgcode">
		    <valueCoding>
		      <system><xsl:attribute name="value"><xsl:value-of select="$actor-CS"/></xsl:attribute></system>
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
	    </entry>
	  </xsl:when>
	  <xsl:otherwise>
	    <xsl:message>#  No actorType or codesystem extension found for Lane (<xsl:value-of select="@name"/>)</xsl:message>
	  </xsl:otherwise>
	</xsl:choose>
      </xsl:for-each>

      
      <xsl:for-each select="$collab/bpmn:participant">
	<!-- loop through all the process named in the collaboration and create a graph for each -->
	<xsl:variable name="processId" select="@processRef"/>
	<xsl:message># Processing collab process: <xsl:value-of select="$processId"/></xsl:message>

	<xsl:for-each select="$processes[@id = $processId]">
	  <xsl:variable name="processName" select="@name"/>
	  <xsl:variable name="processDesc" select="bpmn:documentation/text()"/>
	  <xsl:variable name="processActors" select=".//bpmn:lane"/>
	  <xsl:variable name="userTasks" select="bpmn:userTask"/>
	  <xsl:variable name="sendTasks" select="bpmn:sendTask"/>
	  <xsl:variable name="receiveTasks" select="bpmn:receiveTask"/>
	  <xsl:variable name="arrows" select="bpmn:sequenceFlow"/>
	  
	  <xsl:message># Check process: (<xsl:value-of select="$processName"/>) - (<xsl:value-of select="$processId"/>)</xsl:message>
	  <!-- loop through the userTasks and stub out a SGQuestionnaire profile and associated activityDef'n (maybe) -->
	  <xsl:for-each select="$userTasks">
	    <xsl:variable name="taskId" select="@id"/>
	    <xsl:variable name="taskName" select="@name"/>
	    <xsl:variable name="formId" select="bpmn:extensionElements/zeebe:formDefinition/@formId"/>
	    <xsl:variable name="qId" select="concat('SGQuestionaire-',$taskId)"/>
	    
	    <StructureDefinition>
	      <id><xsl:attribute name="value"><xsl:value-of select="$taskId"/></xsl:attribute></id>
	      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-implements">
		<valueUri value="http://hl7.org/fhir/StructureDefinition/CanonicalResource"/>
	      </extension>
	      <url><xsl:attribute name="value"><xsl:value-of select="concat($ig-url,'/StructureDefinition/',$qId)"/></xsl:attribute></url>
	      <version><xsl:attribute name="value"><xsl:value-of select="$version"/></xsl:attribute></version>
	      <name value="SGGraphDefinition"/>
	      <status value="draft"/>
	      <publisher><xsl:attribute name="value"><xsl:value-of select="$publisher"/></xsl:attribute></publisher>
	      <name><xsl:value-of select="$taskName"/></name>
	      <baseDefinition value="http://smart.who.int/base/StructureDefinition/SGGraphDefinition"/>
	      <derivation value="constraint"/>
	      <differential>
		<element id="Questionnaire">
		  <path value="Questionnaire"/>
		</element>
		<element id="Questionnaire.name">
		  <path value="Questionnaire.name"/>
		  <patternCode><xsl:attribute name="value"><xsl:value-of select="$taskName"/></xsl:attribute></patternCode>
		</element>
		<element id="Questionnaire.code">
		  <path value="Questionnaire.code"/>
		  <patternCoding>
		    <xsl:attribute name="code"><xsl:value-of select="$taskId"/></xsl:attribute>
		    <xsl:attribute name="system"><xsl:value-of select="$quest-CS"/></xsl:attribute>
		  </patternCoding>
		</element>
	      </differential>
	    </StructureDefinition>
	  </xsl:for-each>
	  
	  
	  <!-- loop through arrows looking for sendTask receiveTask pairs to use for SGtransactions a-->
	  <xsl:for-each select="$arrows">

	    <xsl:variable name="linkSrc" select="@sourceRef"/>
	    <xsl:variable name="linkTgt" select="@targetRef"/>
	    <xsl:variable name="linkId" select="@id"/>
	    <xsl:variable name="linkName" select="@name"/>		
<!--
            <xsl:variable name="linkTE" select="bpmn:extensionElements/zeebe:properties/zeebe:property[@name='triggerEvents'][1]/@value"/>	    	 
	    <xsl:variable name="linkMS" select="bpmn:extensionElements/zeebe:properties/zeebe:property[@name='messageSemantics'][1]/@value"/>
	    <xsl:variable name="linkEA" select="bpmn:extensionElements/zeebe:properties/zeebe:property[@name='expectedActions'][1]/@value"/>
-->

            
        
	    <!--only want to create a transaction between bpmn:sendTask and bpmn:receiveTask sequenceFlows -->
	    <xsl:for-each  select="$sendTasks[@id=$linkSrc]">
	      <xsl:variable name="sendTask" select="."/>
	      <xsl:for-each select="$receiveTasks[@id=$linkTgt]">
		<xsl:variable name="receiveTask" select="."/>
		<xsl:message># Send/Receive task pairs: (<xsl:value-of select="$sendTask/@id"/>)->(<xsl:value-of select="$receiveTask/@id"/>) </xsl:message>
		<xsl:message># Send/Receive task pairs: (<xsl:value-of select="$linkSrc"/>)->(<xsl:value-of select="$linkTgt"/>) </xsl:message>
		<!-- now we know the source(send) and target(receive) tasks.  we now need to get the lane that they are in -->
		<xsl:for-each  select="$innerActors">
		  <xsl:message># Checking if <xsl:value-of select="./bpmn:flowNodeRef"/> = <xsl:value-of select="$linkSrc"/></xsl:message>
		</xsl:for-each>
		<xsl:for-each  select="$innerActors[./bpmn:flowNodeRef = $linkSrc][1]">
		  <xsl:variable name="actorSrc" select="."/>
		  <xsl:variable name="actorSrcId" select="$actorSrc/@id"/>

		  <xsl:message># Got source actor: <xsl:value-of select="$actorSrcId"/></xsl:message>
		  <xsl:for-each  select="$innerActors[./bpmn:flowNodeRef = $linkTgt][1]">
		    <xsl:variable name="actorTgt" select="."/>
		    <xsl:variable name="actorTgtId" select="$actorTgt/@id"/>
		    <xsl:variable name="linkDesc" select="bpmn:documentation/text()"/>
		    
		    <xsl:message># Got target actor: <xsl:value-of select="$actorTgtId"/></xsl:message>
		    <entry>

		      <resource>
			<GraphDefinition>
			  <id><xsl:attribute name="value"><xsl:value-of select="$linkId"/></xsl:attribute></id>
			  <meta>
	      		    <profile value="http://smart.who.int/base/StructureDefinition/SGTransaction"/>
			  </meta>
			  <name><xsl:attribute name="value"><xsl:value-of select="$linkName"/></xsl:attribute></name>
			  <description>
			    <xsl:attribute name="value">
			    <xsl:value-of select="$linkDesc"/>
			    <p>
			      More details of this transaction may be found on the 
			      <a><xsl:attribute name="href">transactions.html#<xsl:value-of select="$linkId"/></xsl:attribute></a>
			      page.
			    </p>
			    </xsl:attribute>
			  </description>
			  <status value="active"/>

			  <xsl:variable name="link-page-slug">transaction-<xsl:value-of select="$linkId"/></xsl:variable>
			  <xsl:message>
#
# Creating tranasaction page slugs for <xsl:value-of select="$linkId"/>}
#
touch input/pagecontent/<xsl:value-of select="$link-page-slug"/>-preamble.md 
touch input/pagecontent/<xsl:value-of select="$link-page-slug"/>-trigger-events.md 
touch input/pagecontent/<xsl:value-of select="$link-page-slug"/>-message-semantics.md 
touch input/pagecontent/<xsl:value-of select="$link-page-slug"/>-expected-actions-semantics.md 

cat &lt;&lt; EOF >> input/pagecontent/transactions.md
###  <xsl:value-of select="$linkName"/> {#<xsl:value-of select="$linkId"/>}
{% include <xsl:value-of select="$link-page-slug"/>-preamble.md %}
#### Trigger Events
{% include <xsl:value-of select="$link-page-slug"/>-trigger-events.md %}
#### Message Semantics
{% include <xsl:value-of select="$link-page-slug"/>-message-semantics.md %}
#### Expected Actions
{% include <xsl:value-of select="$link-page-slug"/>-expected-actions-semantics.md %}

EOF

			  </xsl:message>


			  
			  <experimental value="false"/>
			  <node>
			    <nodeId><xsl:value-of select="$actorSrcId"/></nodeId>
			    <type>ActorDefinition</type>
			    <extension url="http://smart.who.int/base/StructureDefinition/Sgactor">
			      <valueCoding>
				<system><xsl:attribute name="value"><xsl:value-of select="$actor-CS"/></xsl:attribute></system>
				<code><xsl:attribute name="value"><xsl:value-of select="$actorSrcId"/></xsl:attribute></code>
			      </valueCoding>
			    </extension>
			  </node>
			  <node>
			    <nodeId><xsl:value-of select="$actorTgtId"/></nodeId>
			    <type>ActorDefinition</type>
			    <extension url="http://smart.who.int/base/StructureDefinition/Sgactor">
			      <valueCoding>
				<system><xsl:attribute name="value"><xsl:value-of select="$actor-CS"/></xsl:attribute></system>
				<code><xsl:attribute name="value"><xsl:value-of select="$actorTgtId"/></xsl:attribute></code>
			      </valueCoding>
			    </extension>
			  </node>

			  <link>
			    <sourceId><xsl:value-of select="$actorSrcId"/></sourceId>
			    <targetId><xsl:value-of select="$actorTgtId"/></targetId>

			    <extension url="http://smart.who.int/base/StructureDefinition/Sgcode">
			      <valueCoding>
				<system><xsl:attribute name="value"><xsl:value-of select="$trans-CS"/></xsl:attribute></system>
				<code><xsl:attribute name="value"><xsl:value-of select="$linkId"/></xsl:attribute></code>
			      </valueCoding>
			    </extension>
			    <!-- <extension url="http://smart.who.int/base/StructureDefinition/Markdown"> -->
			    <!--   <valueMarkdown><xsl:attribute name="value"><xsl:value-of select="$linkTE"/></xsl:attribute></valueMarkdown> -->
			    <!-- </extension> -->
			    <!-- <extension url="http://smart.who.int/base/StructureDefinition/Markdown"> -->
			    <!--   <valueMarkdown><xsl:attribute name="value"><xsl:value-of select="$linkMS"/></xsl:attribute></valueMarkdown> -->
			    <!-- </extension> -->
			    <!-- <extension url="http://smart.who.int/base/StructureDefinition/Markdown"> -->
			    <!--   <valueMarkdown><xsl:attribute name="value"><xsl:value-of select="$linkEA"/></xsl:attribute></valueMarkdown> -->
			    <!-- </extension>		   -->
			  </link>
			</GraphDefinition>
		      </resource>
		    </entry>
		  </xsl:for-each>
		</xsl:for-each>
	      </xsl:for-each>
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
      </xsl:for-each>
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
