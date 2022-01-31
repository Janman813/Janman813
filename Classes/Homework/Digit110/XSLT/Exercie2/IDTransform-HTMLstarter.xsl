<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
   <xsl:template match="/">
       <html>
           <head>
               <title>Organizations in Digital Mitford</title>
           </head>
           <body>
              <h1>Digital Mitford Lists of Organizations</h1> 
               <!--ebb: XPath shows us we have three <listOrg> elements in the si-modified.xml source document. 
                   Let's set up a numbered list. -->
              <ol>
                  <xsl:apply-templates select="descendant::listOrg"/>
              </ol> 

           </body> 
       </html>
   </xsl:template> 
       <xsl:template match="listOrg">
        <li><xsl:apply-templates/></li>: First line:
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="orgName">
        <ul num="(@n)"><xsl:apply-templates/></ul>
    </xsl:template>
    <xsl:template match="orgName">
        <orgName xml:id="{preceding::orgName => count()+1}"></orgName>
        <xsl:apply-templates/>
    </xsl:template>
 
        
    <!--ebb: Continue writing template rules to match on elements to populate the numbered list. Also, set up each list item to contain its own nested bulleted list,
    using <ul> . You'll need to write a third template rule to handle the sublist items. -->
    
    

    
</xsl:stylesheet>